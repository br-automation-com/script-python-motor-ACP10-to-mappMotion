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