import xml.etree.ElementTree as ET
import shutil
import datetime
import os

from common import *
from conversion import *
from key_values_struc import *
from key_values_hw import *
from settings import *

# --------------------------------------------------------------------------
# convert all motor table files to variable structure
def convert_to_variable_structure():
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

    print('--------------------------------------------------------------------------------')
    print('Converting to variable structure')

    # delete output content
    delete_directory_contents('output_struc')

    # get all files in the apt folder
    for file in os.listdir('apt'):
        # only open files that end with apt
        if file.endswith('apt'):
             # convert next file 
            print('--------------------------------------------------------------------------------')
            print('Converting file: ' + file)

            new_row = ''
            dependencies = []         

            # create output folder if it does not exist
            if not (os.path.exists('output_struc') and os.path.isdir('output_struc')):
                os.mkdir('output_struc')

            # --------------------------------------------------------------------------
            # create new output file
            output_file = open('output_struc/' + file.replace('apt', 'st'), 'x')
            # create header
            output_file.write('// --------------------------------------------------------------- \n')
            output_file.write('// Auto converted with version ' + str(version) + ' on ' + str(datetime.datetime.now()) + '\n')
            output_file.write('// --------------------------------------------------------------- \n')
            output_file.write('ACTION ' + file.replace('.apt', '') + ':\n')

            # --------------------------------------------------------------------------
            # open motor apt file
            treeMotor = ET.parse('apt/' + file)
            rootMotor = treeMotor.getroot()

            # add motor type
            motor_type = add_motor_type_struc(rootMotor, output_file)
            if motor_type == motor_type_undefined: return
            # add phasing type
            phasing_mode = add_phasing_mode_struc(rootMotor, output_file)
            # add temperature sensor
            temperature_sensor = add_temp_sensor_struc(rootMotor, motor_type, output_file)
            # add temperature model
            temperature_model, temperature_model_calc_method = add_temp_model_struc(rootMotor, motor_type, output_file)
            # add temperature reference sensor
            add_temp_ref_sensor_struc(rootMotor, motor_type, temperature_model, temperature_model_calc_method, output_file)
      
            # --------------------------------------------------------------------------
            # iterate over all elements in the apt file
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
                if 'Name' in elem.attrib and elem.attrib['Name'] not in ignore_name_list_struc and \
                    'Value' in elem.attrib and 'ID' in elem.attrib: 
                    try:
                        entry = ''

                        # find entry for induction motor
                        if motor_type == motor_type_induction:
                            entry, conversion = evaluate_attrib_struc(variable_name + 'ParMotorInduction.', rootConversionInd, elem, rootDependenciesInd, dependencies, phasing_mode, temperature_sensor, temperature_model, temperature_model_calc_method)

                        # find entry for synchronous motor
                        elif motor_type == motor_type_synchronous:
                            entry, conversion = evaluate_attrib_struc(variable_name + 'ParMotorSynchronous.', rootConversionSync, elem, rootDependenciesSync, dependencies, phasing_mode, temperature_sensor, temperature_model, temperature_model_calc_method)

                        # parameter evaluation generated error
                        if 'ERROR' in entry:
                            new_row = entry + '\n'
                            print(new_row.replace('// ', '-->').replace('\n', ''))

                        # parameter was found
                        else:
                            # add value
                            if conversion != None:
                                new_row = '\t' + entry + ' := ' + str(float(elem.attrib['Value']) * conversion[0]) + ';\t\t // Value was converted from ' + conversion[2] + ' to ' + conversion[1] 
                            else:
                                new_row = '\t' + entry + ' := ' + elem.attrib['Value'] + ';\t\t //'

                            # add units
                            if conversion == None and 'Unit' in elem.attrib:
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

# --------------------------------------------------------------------------
# convert all motor table files to hw files
def convert_to_hw_files():

    print('--------------------------------------------------------------------------------')
    print('Converting to hardware files')

    # delete output content
    delete_directory_contents('output_hw')

    # create output folder if it does not exist
    if not (os.path.exists('output_hw') and os.path.isdir('output_hw')):
        os.mkdir('output_hw')

    # get all files in the apt folder
    for file in os.listdir('apt'):
        # only open files that end with apt
        if file.endswith('apt'):
            # convert next file  
            print('--------------------------------------------------------------------------------')
            print('Converting file: ' + file)

            # --------------------------------------------------------------------------
            # open motor apt file, create info file
            treeMotor = ET.parse('apt/' + file)
            rootMotor = treeMotor.getroot()
            info_file = open('output_hw/' + file.replace('apt', 'txt'), 'x')
            info_file.write('Conversion log for file ' + file.replace('.apt', '') + ' with version ' + str(version) + ' on ' + str(datetime.datetime.now()) + '\n\n')
            selector_list = []         

            # find motor type
            motor_type = find_motor_type_hw(rootMotor, info_file)
            if motor_type == motor_type_undefined: return

            # --------------------------------------------------------------------------
            # create new output file
            new_file_name = 'output_hw/' + file.replace('apt', 'hw')
            if motor_type == motor_type_induction:
                shutil.copy('proto_ind.hw', new_file_name)
            else:
                shutil.copy('proto_sync.hw', new_file_name)
            replace_text_in_file(new_file_name, 'MOTOR_NAME', file.replace('.apt', ''))

            treeOutput = ET.parse('output_hw/' + file.replace('apt', 'hw'))
            rootOutput = treeOutput.getroot()
            rootModule = find_tag(rootOutput, 'Module')

            # add phasing type
            phasing_mode = add_phasing_mode_hw(rootMotor, rootModule, info_file)
            # add temperature sensor
            temperature_sensor = add_temp_sensor_hw(rootMotor, rootModule, info_file)
            # add temperature model
            temperature_model, temperature_model_calc_method = add_temp_model_hw(rootMotor, rootModule, info_file)
            # add temperature reference sensor
            add_temp_ref_sensor_hw(rootMotor, rootModule, temperature_model, temperature_model_calc_method, info_file)

    
            # --------------------------------------------------------------------------
            # iterate over all elements in the apt file
            for elem in rootMotor.iter():
                if debug_mode == 1:
                    print('--------------------------------------------- ')
                    print(elem.attrib)

                # --------------------------------------------------------------------------
                # found motor name
                if 'Name' in elem.attrib and elem.attrib['Name'] == 'M1' and 'Description' in elem.attrib:
                    info_file.write('Conversion protocol for '+ elem.attrib['Description'] + '\n')  

                # --------------------------------------------------------------------------
                # found parameter
                if 'Name' in elem.attrib and elem.attrib['Name'] not in ignore_name_list_hw and \
                    'Value' in elem.attrib and 'ID' in elem.attrib: 
                        selector_list = add_attrib_hw(rootModule, elem, motor_type, selector_list, info_file)

            ET.register_namespace("", "http://br-automation.co.at/AS/Hardware")
           
            xml_string = ET.tostring(treeOutput.getroot(), encoding='utf-8', method='xml', xml_declaration=True)
            xml_string = xml_string.replace(b'\n', b'').replace(b'>', b'>\n')
            with open(new_file_name, 'wb') as f:
                f.write(xml_string)

# convert apt files to variable structure
convert_to_variable_structure()

# convert apt files to variable structure
convert_to_hw_files()

print('--------------------------------------------------------------------------------')
print('Finished')