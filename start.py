import xml.etree.ElementTree as ET
import datetime
import os

from common import *
from find_key_values import *
from conversion import *

# --------------------------------------------------------------------------
# convert all motor table files
def convert_apt_files():
    # --------------------------------------------------------------------------
    # open conversion and dependencies xml files
    treeConversionSync = ET.parse('conversion_sync.xml')
    rootConversionSync = treeConversionSync.getroot()
    treeConversionInd = ET.parse('conversion_ind.xml')
    rootConversionInd = treeConversionInd.getroot()
    treeDependenciesSync = ET.parse('dependencies_sync.xml')
    rootDependenciesSync = treeDependenciesSync.getroot()
    treeDependenciesInd = ET.parse('dependencies_ind.xml')
    rootDependenciesInd = treeDependenciesInd.getroot()

    # get all files in the apt folder
    for file in os.listdir('apt'):
        # only open files that end with apt
        if file.endswith('apt'):
            new_row = ''
            dependencies = []         

            # convert next file  
            print('--------------------------------------------------------------------------------')
            print('Converting file: ' + file)

            # create output folder if it does not exist
            if not (os.path.exists('output') and os.path.isdir('output')):
                os.mkdir('output')

            # --------------------------------------------------------------------------
            # create new output file
            output_file = open('output/' + file.replace('apt', 'st'), 'x')
            # create header
            output_file.write('// --------------------------------------------------------------- \n')
            output_file.write('// Auto converted with version ' + str(version) + ' on ' + str(datetime.datetime.now()) + '\n')
            output_file.write('// --------------------------------------------------------------- \n')
            output_file.write('ACTION ' + file.replace('.apt', '') + ':\n')

            # --------------------------------------------------------------------------
            # open motor apt file
            treeMotor = ET.parse('apt/' + file)
            rootMotor = treeMotor.getroot()

            # find motor type
            motor_type, new_row = find_motor_type(rootMotor)
            output_file.write(new_row)
            if motor_type == motor_type_undefined: return

            # find phasing type
            phasing_mode, new_row = find_phasing_mode(rootMotor)
            if new_row != '': output_file.write(new_row)

            # find temperature sensor
            temperature_sensor, new_row = find_temp_sensor(rootMotor, motor_type)
            if new_row != '': output_file.write(new_row)

            # find temperature model
            temperature_model, temperature_model_calc_method, new_row = find_temp_model(rootMotor, motor_type)
            if new_row != '': output_file.write(new_row)

            # find temperature reference sensor
            new_row = find_temp_ref_sensor(rootMotor, motor_type, temperature_model, temperature_model_calc_method)
            if new_row != '': output_file.write(new_row)
      
            # --------------------------------------------------------------------------
            # iterate over all elements in the XML tag
            for elem in rootMotor.iter():
                if debug_mode == 1:
                    print('--------------------------------------------- ')
                    print(elem.attrib)

                # --------------------------------------------------------------------------
                # found motor name
                if 'Name' in elem.attrib and elem.attrib['Name'] == 'M1' and 'Description' in elem.attrib:
                    new_row = '\t// Parameter data for ' + elem.attrib['Description'] + '\n'
                    output_file.write(new_row)  

                # --------------------------------------------------------------------------
                # found parameter
                if 'Name' in elem.attrib and elem.attrib['Name'] not in ignore_name_list and \
                    'Value' in elem.attrib and 'ID' in elem.attrib: 
                    try:
                        entry = ''

                        # find entry for induction motor
                        if motor_type == motor_type_induction:
                            entry = evaluate_attrib(variable_name + 'ParMotorInduction.', rootConversionInd, elem, rootDependenciesInd, dependencies, phasing_mode, temperature_sensor, temperature_model, temperature_model_calc_method)

                        # find entry for synchronous motor
                        elif motor_type == motor_type_synchronous:
                            entry = evaluate_attrib(variable_name + 'ParMotorSynchronous.', rootConversionSync, elem, rootDependenciesSync, dependencies, phasing_mode, temperature_sensor, temperature_model, temperature_model_calc_method)

                        # parameter evaluation generated error
                        if 'ERROR' in entry:
                            new_row = entry + '\n'
                            print(new_row.replace('// ', '-->').replace('\n', ''))

                        # parameter was found
                        else:
                            new_row = '\t' + entry + ' := ' + elem.attrib['Value'] + ';\t\t //'

                            # add units
                            if 'Unit' in elem.attrib:
                                new_row = new_row + ' Unit (' + elem.attrib['Unit'].replace('²', '^2').replace('°', 'Grad ') + ')'

                            # add comment
                            if 'Description' in elem.attrib:
                                new_row = new_row + ' ' + elem.attrib['Description']

                            new_row = new_row + '\n'

                    except AttributeError:
                        new_row = '// ERROR: ' + elem.attrib['Name'] + ' not found in conversion table\n'
                        print(new_row.replace('// ', '-->').replace('\n', ''))              

                    if new_row != '':
                        output_file.write(new_row)
                
            output_file.write('END_ACTION\n')
            output_file.close




# delete output content
delete_directory_contents('output')

# open xml file
convert_apt_files()

print('--------------------------------------------------------------------------------')
print('Finished')