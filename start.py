import xml.etree.ElementTree as ET
import os
import shutil
import datetime

version = 1
debug_mode = 0
motor_type_undefined = 0
motor_type_induction = 1  
motor_type_synchronous = 2  

def convert_apt_files():
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

            # --------------------------------------------------------------------------
            # open conversion xml file
            treeConversionSync = ET.parse('conversion_sync.xml')
            rootConversionSync = treeConversionSync.getroot()
            treeConversionInd = ET.parse('conversion_ind.xml')
            rootConversionInd = treeConversionInd.getroot()

            # set default parameter
            motor_type = motor_type_undefined

            # --------------------------------------------------------------------------
            # find motor type
            for elem in rootMotor.iter():
               
                if 'Name' in elem.attrib:
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

                    # found motor name
                    elif elem.attrib['Name'] == 'M1' and 'Description' in elem.attrib:
                        new_row = '\t// Parameter data for ' + elem.attrib['Description'] + '\n'
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

                    if 'Name' in elem.attrib and elem.attrib['Name'] != 'MOTOR_TYPE' and 'Value' in elem.attrib and 'ID' in elem.attrib: 
                        try:
                            # find entry for induction motor
                            if motor_type == motor_type_induction:
                                entry = rootConversionInd.find(elem.attrib['Name']).attrib['Entry']

                            # find entry for synchronous motor
                            elif motor_type == motor_type_synchronous:                            
                                entry = rootConversionSync.find(elem.attrib['Name']).attrib['Entry']

                            # parameter was not found
                            if entry == '':
                                new_row = '// ERROR: ' + elem.attrib['Name'] + ' not found in conversion table\n'
                                print(new_row.replace('// ', '-->'))

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