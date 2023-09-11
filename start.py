import xml.etree.ElementTree as ET
import os
import shutil
import datetime

version = 1
debug_mode = 0
variable_name = 'AxisMotorCfg.'
motor_type_undefined = 0
motor_type_induction = 1  
motor_type_synchronous = 2
phasing_mode_saturation = 0
phasing_mode_dither1 = 2
phasing_mode_direct = 3
phasing_mode_dither2 = 5
temperature_sensor_none = 0
temperature_sensor_thermistor = 1
temperature_sensor_PTC = 2
temperature_sensor_thermoswitches = 3

def evaluate_attrib(variable_name, rootConversion, elem, rootDependencies, dependencies, phasing_mode, temperature_sensor):
    entry = ''

    # check in entry has a dependency
    if 'Dependency' in rootConversion.find(elem.attrib['Name']).attrib:
        dependency = rootConversion.find(elem.attrib['Name']).attrib['Dependency'].split(';')

        # check all dependencies
        for element in dependency:

            # make sure dependency was not already activated
            if not element in dependencies:
                entry += variable_name + rootDependencies.find(element).attrib['Entry']+ '\n\t'
                dependencies.append(element)

    # handle comments
    if rootConversion.find(elem.attrib['Name']).attrib['Entry'].startswith('//'):
        entry += rootConversion.find(elem.attrib['Name']).attrib['Entry']
    
    # handle special objects PHASING_MODE
    elif '%PHASING_MODE%' in rootConversion.find(elem.attrib['Name']).attrib['Entry']:
        if phasing_mode == phasing_mode_saturation:
            entry += variable_name + rootConversion.find(elem.attrib['Name']).attrib['Entry'].replace('%PHASING_MODE%', 'Saturation')
        elif phasing_mode == phasing_mode_dither1:
            entry += variable_name + rootConversion.find(elem.attrib['Name']).attrib['Entry'].replace('%PHASING_MODE%', 'Dither')
        elif phasing_mode == phasing_mode_dither2:
            entry += variable_name + rootConversion.find(elem.attrib['Name']).attrib['Entry'].replace('%PHASING_MODE%', 'Dither2')
        else:
            entry = '// ERROR: Phasing mode does not match parameter ' + elem.attrib['Name'] + '\n'
            print(entry.replace('// ', '-->'))

    # handle special objects TEMP_SENSOR
    elif '%TEMP_SENSOR%' in rootConversion.find(elem.attrib['Name']).attrib['Entry']:
        if temperature_sensor == temperature_sensor_thermistor:
            entry += variable_name + rootConversion.find(elem.attrib['Name']).attrib['Entry'].replace('%TEMP_SENSOR%', 'Thermistor')
        elif temperature_sensor == temperature_sensor_PTC:
            entry += variable_name + rootConversion.find(elem.attrib['Name']).attrib['Entry'].replace('%TEMP_SENSOR%', 'SwitchingPTCThermistor')
        elif temperature_sensor == temperature_sensor_thermoswitches:
            entry += variable_name + rootConversion.find(elem.attrib['Name']).attrib['Entry'].replace('%TEMP_SENSOR%', 'Thermoswitches')
        else:
            entry = '// ERROR: Temperature sensor does not match parameter ' + elem.attrib['Name'] + '\n'
            print(entry.replace('// ', '-->'))


    # handle regular entries
    else:
        entry += variable_name + rootConversion.find(elem.attrib['Name']).attrib['Entry']

    return entry

def convert_apt_files():
    # --------------------------------------------------------------------------
    # open conversion and dependencies xml file
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
        # Nur Dateien ausgeben, die die gewünschte Endung haben
        if file.endswith('apt'):

            # convert next file  
            print('--------------------------------------------------------------------------------')
            print('Converting file: ' + file)

            # --------------------------------------------------------------------------
            # create new output file
            output_file = open('output/' + file.replace('apt', 'st'), 'x')
            # create header
            output_file.write('// --------------------------------------------------------------- \n')
            output_file.write('// Auto converted with version ' + str(version) + ' on ' + str(datetime.datetime.now()) + '\n')
            output_file.write('// --------------------------------------------------------------- \n')
            output_file.write('ACTION ' + file.replace('.apt', '') + ':\n')

            # --------------------------------------------------------------------------
            # open motor xml file
            treeMotor = ET.parse('apt/' + file)
            rootMotor = treeMotor.getroot()

            # set default parameter
            motor_type = motor_type_undefined
            phasing_mode = phasing_mode_direct
            temperature_sensor = temperature_sensor_thermistor
            dependencies = []

            # --------------------------------------------------------------------------
            # find special parameters (motor type, phasing)
            for elem in rootMotor.iter():
               
                if 'Name' in elem.attrib:
                    # --------------------------------------------------------------------------
                    # found motor type
                    if elem.attrib['Name'] == 'MOTOR_TYPE' and 'Value' in elem.attrib:
                        # motor type is induction
                        if elem.attrib['Value'] == '0x0001':
                            motor_type = motor_type_induction
                            new_row = '\t// Motor type is induction\n'
                        # motor type is synchronous
                        elif elem.attrib['Value'] == '0x0002':
                            motor_type = motor_type_synchronous
                            new_row = '\t// Motor type is synchronous\n'
                        else:
                            new_row = '// ERROR: Unknown motor type\n'
                            print(new_row.replace('// ', '-->'))

                        output_file.write(new_row)

                    # --------------------------------------------------------------------------
                    # found motor name
                    elif elem.attrib['Name'] == 'M1' and 'Description' in elem.attrib:
                        new_row = '\t// Parameter data for ' + elem.attrib['Description'] + '\n'

                        output_file.write(new_row)

                    # --------------------------------------------------------------------------
                    # found phasing mode
                    if elem.attrib['Name'] == 'PHASING_MODE' and 'Value' in elem.attrib:

                        # phasing mode is saturation
                        if elem.attrib['Value'] == '0':
                            phasing_mode = phasing_mode_saturation
                            new_row = '\t\t' + variable_name + 'ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Undefined.AutomaticIdentification.Type := mcMSMDEMAUAI_SAT; \t// Phasing mode is saturation\n'
                        # phasing mode is dither 1
                        elif elem.attrib['Value'] == '2':
                            phasing_mode = phasing_mode_dither2
                            new_row = '\t\t' + variable_name + 'ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Undefined.AutomaticIdentification.Type := mcMSMDEMAUAI_DIT; \t// Phasing mode is dither\n'
                        # phasing mode is direct
                        elif elem.attrib['Value'] == '3':
                            phasing_mode = phasing_mode_dither2
                            new_row = '\t\t' + variable_name + 'ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Undefined.AutomaticIdentification.Type := mcMSMDEMAUAI_NOT_USE; \t// Phasing mode is direct\n'
                        # phasing mode is dither 2
                        elif elem.attrib['Value'] == '5':
                            phasing_mode = phasing_mode_dither2
                            new_row = '\t\t' + variable_name + 'ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Undefined.AutomaticIdentification.Type := mcMSMDEMAUAI_DIT2; \t// Phasing mode is dither2\n'
                        else:
                            new_row = '// ERROR: Unsupported phasing mode\n'
                            print(new_row.replace('// ', '-->'))

                        output_file.write(new_row)

                    # --------------------------------------------------------------------------
                    # found temperature sensor type
                    if elem.attrib['Name'] == 'MOTOR_TEMPSENS_TYPE' and 'Value' in elem.attrib:
                        # split sensor type in sensor type and motor interface, why put them together in the first place?
                        high_byte = int(bin(int(elem.attrib['Value']))[:8], 2)
                        low_byte = int(bin(int(elem.attrib['Value']))[8:], 2)

                        # motor is induction motor
                        if motor_type == motor_type_induction:
                            new_row = '\t' + variable_name + 'ParMotorInduction.Motor.PowerRatingPlate.'
                        # motor is synchronous motor
                        elif motor_type == motor_type_synchronous:
                            new_row = '\t' + variable_name + 'ParMotorSynchronous.Motor.Default.'
                        # generate error when motor type is unknown
                        else:
                            new_row = '// ERROR: Temperature sensor defined before motor type\n'
                            print(new_row.replace('// ', '-->'))

                        # temperature sensor is off
                        if low_byte == 0:
                            temperature_sensor = temperature_sensor_none
                            new_row += 'TemperatureSensor.Type := mcMMTS_NOT_USE; \t// Temperature sensor is turned off\n'
                        # temperature sensor is thermistor
                        elif low_byte == 1:
                            temperature_sensor = temperature_sensor_thermistor
                            new_row += 'TemperatureSensor.Type := mcMMTS_THERM; \t// Temperature sensor is thermistor\n'
                        # temperature sensor is PTC
                        elif low_byte == 2:
                            temperature_sensor = temperature_sensor_PTC
                            new_row += 'TemperatureSensor.Type := mcMMTS_SW_PTC_THERM; \t// Temperature sensor PTC\n'
                        # temperature sensor is switch curve open
                        elif low_byte == 3:
                            temperature_sensor = temperature_sensor_thermoswitches
                            new_row += 'TemperatureSensor.Type := mcMMTS_THRMSW; \t// Temperature sensor is switch curve\n' + new_row + 'TemperatureSensor.Thermoswitches.SwitchingStateOnOvertemperature :=  mcMMTSTSSSOO_NORM_OP;\t// State on overtemperature is open\n'
                        # temperature sensor is switch curve closed
                        elif low_byte == 4:
                            temperature_sensor = temperature_sensor_thermoswitches
                            new_row += 'TemperatureSensor.Type := mcMMTS_THRMSW; \t// Temperature sensor is switch curve\n' + new_row + 'TemperatureSensor.Thermoswitches.SwitchingStateOnOvertemperature :=  mcMMTSTSSSOO_NORM_CLSD;\t// State on overtemperature is closed\n'
                        else:
                            new_row = '// ERROR: Unsupported temperature sensor type\n'
                            print(new_row.replace('// ', '-->'))

                        output_file.write(new_row)

                        # motor is induction motor
                        if motor_type == motor_type_induction:
                            new_row = '\t' + variable_name + 'ParMotorInduction.'
                        # motor is synchronous motor
                        elif motor_type == motor_type_synchronous:
                            new_row = '\t' + variable_name + 'ParMotorSynchronous.'

                        elem.attrib['Name'] = 'MOTOR_TEMPSENS_INT'

                       # motor interface is two wire line
                        if high_byte == 0:
                            elem.attrib['Value'] = 'mcMMTSTTSI_MOT_CON_WRD'
                        # temperature sensor is thermistor
                        elif high_byte == 16:
                            elem.attrib['Value'] = ' mcMMTSTTSI_ENC_DAT_TRAN_RES'
                        # temperature sensor is PTC
                        elif high_byte == 17:
                            elem.attrib['Value'] = 'mcMMTSTTSI_ENC_DAT_TRAN'
                        # temperature sensor is switch curve open
                        elif high_byte == 32:
                            elem.attrib['Value'] = 'mcMMTSTTSI_ENC_CON_WRD'
                        else:
                            new_row = '// ERROR: Unsupported temperature sensor motor interface\n'
                            print(new_row.replace('// ', '-->'))

                        entry = evaluate_attrib(new_row, rootConversionInd, elem, rootDependenciesInd, dependencies, phasing_mode, temperature_sensor)
                        new_row = entry + ' := ' + elem.attrib['Value'] + ';\t\t // Temperature sensor interface'
                        output_file.write(new_row)
                

            # --------------------------------------------------------------------------
            # make sure motor type was found
            if motor_type != motor_type_undefined:                        

                # --------------------------------------------------------------------------
                # iterate over all elements in the XML tag
                for elem in rootMotor.iter():
                    if debug_mode == 1:
                        print('--------------------------------------------- ')
                        print(elem.attrib)

                    if 'Name' in elem.attrib and elem.attrib['Name'] != 'MOTOR_TYPE' and \
                                 elem.attrib and elem.attrib['Name'] != 'PHASING_MODE' and 'Value' in elem.attrib and 'ID' in elem.attrib: 
                        try:
                            entry = ''

                            # find entry for induction motor
                            if motor_type == motor_type_induction and rootConversionInd.find(elem.attrib['Name']) != None:
                               entry = evaluate_attrib(variable_name + 'ParMotorInduction.', rootConversionInd, elem, rootDependenciesInd, dependencies, phasing_mode, temperature_sensor)

                            # find entry for synchronous motor
                            elif motor_type == motor_type_synchronous and rootConversionSync.find(elem.attrib['Name']) != None:
                                entry = evaluate_attrib(variable_name + 'ParMotorSynchronous.', rootConversionSync, elem, rootDependenciesSync, dependencies, phasing_mode, temperature_sensor)

                            # parameter was not found
                            if entry == '':
                                new_row = '// ERROR: ' + elem.attrib['Name'] + ' not found in conversion table\n'
                                print(new_row.replace('// ', '-->').replace('\n', ''))

                            # parameter was found
                            else:
                                new_row = '\t' + entry + ' := ' + elem.attrib['Value'] + ';\t\t //'

                                # add units
                                if 'Unit' in elem.attrib:
                                    new_row = new_row + ' Unit (' + elem.attrib['Unit'] +  ')'

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

def delete_directory_contents(directory_path):
    # Get a list of all the files and directories in the directory
    files_and_directories = os.listdir(directory_path)

    # Iterate over the files and directories
    for file_or_directory in files_and_directories:

        # If the file or directory is a file, delete it
        if os.path.isfile(os.path.join(directory_path, file_or_directory)):
            os.remove(os.path.join(directory_path, file_or_directory))

        # If the file or directory is a directory, recursively delete it
        elif os.path.isdir(os.path.join(directory_path, file_or_directory)):
            shutil.rmtree(os.path.join(directory_path, file_or_directory))


# delete output content
delete_directory_contents('output')

# open xml file
convert_apt_files()

print('--------------------------------------------------------------------------------')
print('Finished')