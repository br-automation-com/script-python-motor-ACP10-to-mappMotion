from common import *
from settings import *
import xml.etree.ElementTree as ET

# --------------------------------------------------------------------------
# add motor type for structure
def find_motor_type_hw(rootMotor, info_file):
    motor_type = motor_type_undefined

    elem, parents = find_element(rootMotor, 'Name', 'MOTOR_TYPE')

    if elem != None and 'Value' in elem.attrib:
        # motor type is induction
        if int(elem.attrib['Value'].replace('x', '')) == 1:
            motor_type = motor_type_induction
        # motor type is synchronous
        elif int(elem.attrib['Value'].replace('x', '')) == 2:
            motor_type = motor_type_synchronous
        else:
            # generate error message
            entry = 'ERROR: Unknown motor type\n'
            info_file.write(entry)  
            print(entry.replace('\n', ''))

    return motor_type

# --------------------------------------------------------------------------
# add phasing mode for structure
def add_phasing_mode_hw(rootMotor, rootModule, info_file):
    phasing_mode = ''

    elem, parents = find_element(rootMotor, 'Name', 'PHASING_MODE')

    if elem != None and 'Value' in elem.attrib:
        # phasing mode is saturation
        if elem.attrib['Value'] == '0':
            phasing_mode = 'Saturation'
        # phasing mode is dither 1
        elif elem.attrib['Value'] == '2':
            phasing_mode = 'Dither'
        # phasing mode is direct
        elif elem.attrib['Value'] == '3':
            phasing_mode = ''
        # phasing mode is dither 2
        elif elem.attrib['Value'] == '5':
            phasing_mode = 'Dither2'
        else:
             # generate error message
            entry = 'ERROR: Unsupported phasing mode\n'
            info_file.write(entry)  
            print(entry.replace('\n', ''))

        elem_new = ET.Element('Parameter', attrib={'ID': 'Angle', 'Location': 'M1/MotorParameters/EncoderMounting', 'Value': 'Undefined'})
        rootMotor.append(elem_new)
        if phasing_mode != '':
            elem_new = ET.Element('Parameter', attrib={'ID': 'AutomaticIdentification', 'Location': 'M1/MotorParameters/EncoderMounting/Angle', 'Value': phasing_mode})
            rootModule.append(elem_new)

    return phasing_mode

# --------------------------------------------------------------------------
# add temperature sensor for structure
def add_temp_sensor_hw(rootMotor, rootModule, info_file):
    temperature_sensor_type = 'Thermistor'
    temperature_sensor_interface = 'MotorConnectorAnalog'
    new_row = ''

    elem, parents = find_element(rootMotor, 'Name', 'MOTOR_TEMPSENS_TYPE')

    if elem != None and 'Value' in elem.attrib:
        # split sensor type in sensor type and motor interface, why put them together in the first place?
        high_byte = int(bin(int(elem.attrib['Value']))[:8], 2)
        low_byte = int(bin(int(elem.attrib['Value']))[8:], 2)

        # temperature sensor is off
        if low_byte == 0:
            temperature_sensor_type = 'NotUsed'
        # temperature sensor is thermistor
        elif low_byte == 1:
            temperature_sensor_type = 'Thermistor'
        # temperature sensor is PTC
        elif low_byte == 2:
            temperature_sensor_type = 'PTCSwitch'
        # temperature sensor is switch curve open
        elif low_byte == 3:
            temperature_sensor_type = 'ThermalSwitch'
        # temperature sensor is switch curve closed
        elif low_byte == 4:
            temperature_sensor_type = 'ThermalSwitch'
        else:
            # generate error message
            entry = 'ERROR: Unsupported temperature sensor type\n'
            info_file.write(entry)  
            print(entry.replace('\n', ''))

        elem_new = ET.Element('Parameter', attrib={'ID': 'TemperatureSensor', 'Location': 'M1/MotorParameters', 'Value': temperature_sensor_type})
        rootMotor.append(elem_new)

        # motor interface is two wire line
        if high_byte == 0:
            temperature_sensor_interface = 'MotorConnectorAnalog'
        # temperature sensor is thermistor
        elif high_byte == 16:
            temperature_sensor_interface = 'EncoderConnectorDigital'
        # temperature sensor is PTC
        elif high_byte == 17:
            temperature_sensor_interface = 'EncoderConnectorDigital'
        # temperature sensor is switch curve open
        elif high_byte == 32:
            temperature_sensor_interface = 'EncoderConnectorAnalog'
        else:
            # generate error message
            entry = 'ERROR: Unsupported temperature sensor motor interface\n'
            info_file.write(entry)  
            print(entry.replace('\n', ''))

        elem_new = ET.Element('Parameter', attrib={'ID': 'TemperatureSensorInterface', 'Location': 'M1/MotorParameters/TemperatureSensor', 'Value': temperature_sensor_interface})
        rootModule.append(elem_new)

    return temperature_sensor_type

# --------------------------------------------------------------------------
# find temperature model and generate row for hardware file
def add_temp_model_hw(rootMotor, rootModule, info_file):
    temperature_model = 'CurrentSpeed'
    temperature_model_calc_method = 'SecondOrder'

    elem, parents = find_element(rootMotor, 'Name', 'MOTOR_TEMPMODEL_MODE')

    # --------------------------------------------------------------------------
    # try old parameter when motor model was not found
    if elem == None:
        elem, parents = find_element(rootMotor, 'Name', 'TEMP_MOTOR_MODEL_MODE')

    # --------------------------------------------------------------------------
    # found temperature model
    if elem != None and 'Value' in elem.attrib:

        # temperature model is turned off
        if elem.attrib['Value'] == '0':
            temperature_model = 'NotUsed'
        # temperature model is current based
        elif elem.attrib['Value'] == '1':
            temperature_model = 'Current'
            temperature_model_calc_method = ''
        # temperature model is current and speed based, calc method is 2nd order with thermal network
        elif elem.attrib['Value'] == '2':
            temperature_model = 'CurrentSpeed'
            temperature_model_calc_method = 'SecondOrder'
        # temperature model is current and speed based, calc method is 2nd order with thermal network
        elif elem.attrib['Value'] == '3':
            temperature_model = 'CurrentSpeed'
            temperature_model_calc_method = 'SecondOrder'
        # temperature model is current and speed based, calc method is 4th order with thermal network
        elif elem.attrib['Value'] == '4':
            temperature_model = 'CurrentSpeed'
            temperature_model_calc_method = 'FourthOrder'

            # generate warning message
            entry = '// WARNING: Temperature model is current and speed based, using equivalent circuit network. Make sure temperature sensor configuration is correct.\n'
            info_file.write(entry)  
            print(entry.replace('\n', ''))
        # temperature model is current and speed based, calc method is 4th order with thermal network
        elif elem.attrib['Value'] == '5':
            temperature_model = 'CurrentSpeed'
            temperature_model_calc_method = 'FourthOrder'

            # generate warning message
            entry = '// WARNING: Temperature model is current and speed based, using equivalent circuit extended network. Make sure temperature sensor configuration is correct.\n'
            info_file.write(entry)  
            print(entry.replace('\n', ''))
        # temperature model is current and speed based, calc method is 4th order with thermal network
        elif elem.attrib['Value'] == '6':
            temperature_model = 'CurrentSpeed'
            temperature_model_calc_method = 'FourthOrderWithCouplings'

            # generate warning message
            entry = '// WARNING: Temperature model is current and speed based, using equivalent circuit extended network with correction. Make sure temperature sensor configuration is correct.\n'
            info_file.write(entry)  
            print(entry.replace('\n', ''))
        else:
            # generate error message
            entry = 'ERROR: Unsupported temperature model\n'
            info_file.write(entry)  
            print(entry.replace('\n', ''))

        elem_new = ET.Element('Parameter', attrib={'ID': 'TemperatureModel', 'Location': 'M1/MotorParameters', 'Value': temperature_model})
        rootModule.append(elem_new)

    return temperature_model, temperature_model_calc_method

# --------------------------------------------------------------------------
# add temperature reference sensor for structure
def add_temp_ref_sensor_hw(rootMotor, rootModule, temperature_model, temperature_model_calc_method, info_file):
    reference_temperature = 'ReferenceTemperatureMotorSensor'

    elem, parents = find_element(rootMotor, 'Name', 'MOTOR_TEMPMODEL_REFSENS')

    # --------------------------------------------------------------------------
    # found temperature model reference temperature
    if elem != None and 'Value' in elem.attrib:
        # make sure model and calls method come before ref temperature
        if temperature_model != '' and temperature_model_calc_method != '':
            if temperature_model == 'CurrentSpeed':
                # temperature model is motor ambient
                if elem.attrib['Value'] == '0':
                    reference_temperature = 'ReferenceTemperatureAmbient'
                # temperature model is reference is motor
                elif elem.attrib['Value'] == '1':
                    reference_temperature = 'ReferenceTemperatureMotorSensor'
                elif elem.attrib['Value'] == '4':
                    reference_temperature = 'ReferenceTemperatureEncoder'
                else:
                    # generate error message
                    entry = 'ERROR: Unsupported temperature model reference temperature\n'
                    info_file.write(entry)  
                    print(entry.replace('\n', ''))

                elem_new = ET.Element('Parameter', attrib={'ID': 'ReferenceTemperature', 'Location': 'M1/MotorParameters/TemperatureModel/Calculation', 'Value': reference_temperature})
                rootModule.append(elem_new)
            else:
                # generate error message
                entry = 'ERROR: Temperature model must be current and speed based for reference temperature\n'
                info_file.write(entry)  
                print(entry.replace('\n', ''))

        else:
            # generate error message
            entry = 'ERROR: Temperature model reference temperature was set before temperature model or with temperature model turned off\n'
            info_file.write(entry)  
            print(entry.replace('\n', ''))