import os
import xml.etree.ElementTree as ET
from common import *
from settings import *

root_selector_list_hw = ['Brake', 'Encoder', 'Gearbox']

# --------------------------------------------------------------------------
# find parameter
def add_attrib_hw(rootModule, find_elem, motor_type, selector_list, info_file):
    location = ''

    # get all files in the apt folder
    for file in os.listdir('motor'):
        if motor_type == motor_type_synchronous and file.startswith('Induction'):
            continue
        if motor_type == motor_type_induction and file.startswith('Synchronous'):
            continue

        # open motor apt file
        treeMotor = ET.parse('motor/' + file)
        rootMotor = treeMotor.getroot()

        elem, parents = find_element(rootMotor, 'ID', find_elem.attrib['Name'])

        if elem != None:
            location = 'M1'

            # add default parent
            if parents == [] or parents[0].attrib['ID'] not in root_selector_list_hw:
                location = location + '/' + 'MotorParameters'

            # add all additional parents
            for parent in parents:

                # enable selector
                if parent.attrib['Value'] == 'NotUsed' and parent.attrib['ID'] not in selector_list:

                    elem_new = ET.Element('Parameter', attrib={'ID': parent.attrib['ID'], 'Location': location, 'Value': 'Used'})
                    rootModule.append(elem_new)
                    selector_list.append(parent.attrib['ID'])  

                location = location + '/' + parent.attrib['ID']

            # check if value must be converted
            value = find_elem.attrib['Value']
            if find_elem.attrib['Name'] in parameter_conversion_list:
                conversion = parameter_conversion_list[find_elem.attrib['Name']]
                value = str(float(value) * conversion[0])

            elem_new = ET.Element('Parameter', attrib={'ID': find_elem.attrib['Name'], 'Location': location, 'Value': value})
            rootModule.append(elem_new)
            return selector_list

    # generate error message
    entry = 'ERROR: Parameter id ' + find_elem.attrib['Name'] + ' not found\n'
    info_file.write(entry)  
    print(entry.replace('\n', ''))
    return selector_list

# --------------------------------------------------------------------------
# evaluate parameter
def evaluate_attrib_struc(variable_name, rootConversion, elem, rootDependencies, dependencies, phasing_mode, temperature_sensor, temperature_model, temperature_model_calc_method):
    entry = ''
    conversion  = None
    elem = rootConversion.find(elem.attrib['Name'])
    tag = elem.tag

    # --------------------------------------------------------------------------
    # handle entry not found
    if elem == None:
        entry = '// ERROR: ' + tag + ' not found in conversion table. Old value was ' + elem.attrib['Value']
        return entry

    # --------------------------------------------------------------------------
    # check if entry has a dependency
    if 'Dependency' in elem.attrib:
        dependency = elem.attrib['Dependency'].split(';')

        # check all dependencies
        for element in dependency:

            # make sure dependency was not already activated
            if not element in dependencies:
                entry += variable_name + rootDependencies.find(element).attrib['Entry']+ '\n\t'
                dependencies.append(element)

    # --------------------------------------------------------------------------
    # handle comments
    if elem.attrib['Entry'].startswith('//'):
        entry += elem.attrib['Entry']
    
    # --------------------------------------------------------------------------
    # handle special objects PHASING_MODE
    elif '%PHASING_MODE%' in elem.attrib['Entry']:
        if phasing_mode != '':
            entry += variable_name + elem.attrib['Entry'].replace('%PHASING_MODE%', phasing_mode)
        else:
            entry = '// ERROR: Phasing mode does not match parameter ' + tag
 
    # --------------------------------------------------------------------------
   # handle special objects TEMP_SENSOR
    elif '%TEMP_SENSOR%' in elem.attrib['Entry']:
        if temperature_sensor != '':
            entry += variable_name + elem.attrib['Entry'].replace('%TEMP_SENSOR%', temperature_sensor)
        else:
            entry = '// ERROR: Temperature sensor does not match parameter ' + tag

    # --------------------------------------------------------------------------
    # handle special objects TEMP_MODEL
    elif '%TEMP_MODEL%' in elem.attrib['Entry']:
        if temperature_model != '':
            entry += variable_name + elem.attrib['Entry'].replace('%TEMP_MODEL%', temperature_model).replace('%TEMP_MODEL_CALC_METHOD%', temperature_model_calc_method)
        else:
            entry = '// ERROR: Temperature model does not match parameter ' + tag

    # --------------------------------------------------------------------------
    # handle regular entries
    else:
        if elem.tag in parameter_conversion_list:
            conversion = parameter_conversion_list[elem.tag]

        entry += variable_name + elem.attrib['Entry']

    return entry, conversion