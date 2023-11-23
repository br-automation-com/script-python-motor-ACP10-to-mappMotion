version = 2                                 # Program version
debug_mode = 0                              # Show additional logs
variable_name = 'AxisMotorCfg.'             # This name is added in front of the converted variable

# --------------------------------------------------------------------------
# do not change anything below this line

# Motor type enums
motor_type_undefined = 0                    
motor_type_induction = 1
motor_type_synchronous = 2

# Ignore these par ids because they get special treatment
ignore_name_list_struc = ['MOTOR_TYPE', 'PHASING_MODE', 'MOTOR_TEMPSENS_TYPE', 'TEMP_MOTOR_MODEL_MODE', 'MOTOR_TEMPMODEL_MODE', 'MOTOR_TEMPMODEL_REFSENS'] 
ignore_name_list_hw = ['MOTOR_TYPE', 'MOTOR_COMPATIBILITY', 'MOTOR_WIND_CONNECT', 'TEMP_MOTOR_MODEL_MODE', 'MOTOR_TEMPMODEL_MODE', 'MOTOR_TEMPMODEL_REFSENS']

# These par ids need to be converted
parameter_conversion_list = {
    'MOTOR_ROTOR_INDUCTANCE' : [1000, 'mH', 'H'],
    'MOTOR_MUTUAL_INDUCTANCE' : [1000, 'mH', 'H'],
    'MOTOR_STATOR_INDUCTANCE' : [1000, 'mH', 'H'],
    'MOTOR_INERTIA' : [10000, 'kg*cm^2', 'kg*m^2'],
    'MOTOR_BRAKE_INERTIA' : [10000, 'kg*cm^2', 'kg*m^2'],
    'MOTOR_ENCOD_INERTIA' : [10000, 'kg*cm^2', 'kg*m^2'],
    'MOTORGEAR_INERTIA' : [10000, 'kg*cm^2', 'kg*m^2'],
    }
