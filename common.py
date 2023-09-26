import os
import shutil

version = 1                                 # Program version
debug_mode = 0                              # Show additional logs
variable_name = 'AxisMotorCfg.'             # This name is added in front of the converted variable

motor_type_undefined = 0                    # Motor type enums
motor_type_induction = 1
motor_type_synchronous = 2

ignore_name_list = ['MOTOR_TYPE', 'PHASING_MODE', 'MOTOR_TEMPSENS_TYPE', 'TEMP_MOTOR_MODEL_MODE', 'MOTOR_TEMPMODEL_REFSENS'] 

# --------------------------------------------------------------------------
# find element in tree
def find_element(tree, name):
    for element in tree.iter():
        if 'Name' in element.attrib and element.attrib['Name'] == name:
            return element
    return None

# --------------------------------------------------------------------------
# delete directory contents
def delete_directory_contents(directory_path):
    try:
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
    except Exception as e:
        print(e)