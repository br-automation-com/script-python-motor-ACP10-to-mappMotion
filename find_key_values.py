from common import *

# --------------------------------------------------------------------------
# find motor type
def find_motor_type(rootMotor):
    motor_type = motor_type_undefined
    new_row = ''

    elem = find_element(rootMotor, 'MOTOR_TYPE')

    if elem != None and 'Value' in elem.attrib:
        # motor type is induction
        if int(elem.attrib['Value'].replace('x', '')) == 1:
            motor_type = motor_type_induction
            new_row = '\t// Motor type is induction\n'
        # motor type is synchronous
        elif int(elem.attrib['Value'].replace('x', '')) == 2:
            motor_type = motor_type_synchronous
            new_row = '\t// Motor type is synchronous\n'
        else:            
            new_row = '// ERROR: Unknown motor type\n'
            print(new_row.replace('// ', '-->'))

    return motor_type, new_row

# --------------------------------------------------------------------------
# find phasing mode
def find_phasing_mode(rootMotor):
    phasing_mode = ''
    new_row = ''

    elem = find_element(rootMotor, 'PHASING_MODE')

    if elem != None and 'Value' in elem.attrib:
        # phasing mode is saturation
        if elem.attrib['Value'] == '0':
            phasing_mode = 'Saturation'
            new_row = '\t' + variable_name + 'ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Undefined.AutomaticIdentification.Type := mcMSMDEMAUAI_SAT;\t\t// Phasing mode is saturation\n'
        # phasing mode is dither 1
        elif elem.attrib['Value'] == '2':
            phasing_mode = 'Dither'
            new_row = '\t' + variable_name + 'ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Undefined.AutomaticIdentification.Type := mcMSMDEMAUAI_DIT;\t\t// Phasing mode is dither\n'
        # phasing mode is direct
        elif elem.attrib['Value'] == '3':
            phasing_mode = ''
            new_row = '\t' + variable_name + 'ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Undefined.AutomaticIdentification.Type := mcMSMDEMAUAI_NOT_USE;\t\t// Phasing mode is direct\n'
        # phasing mode is dither 2
        elif elem.attrib['Value'] == '5':
            phasing_mode = 'Dither2'
            new_row = '\t' + variable_name + 'ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Undefined.AutomaticIdentification.Type := mcMSMDEMAUAI_DIT2;\t\t// Phasing mode is dither2\n'
        else:
            new_row = '// ERROR: Unsupported phasing mode\n'
            print(new_row.replace('// ', '-->'))

    return phasing_mode, new_row

# --------------------------------------------------------------------------
# find temperature sensor
def find_temp_sensor(rootMotor, motor_type):
    temperature_sensor = 'Thermistor'
    new_row = ''

    elem = find_element(rootMotor, 'MOTOR_TEMPSENS_TYPE')

    if elem != None and 'Value' in elem.attrib:
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
            temperature_sensor = ''
            new_row += 'TemperatureSensor.Type := mcMMTS_NOT_USE;\t\t// Temperature sensor is turned off\n'
        # temperature sensor is thermistor
        elif low_byte == 1:
            temperature_sensor = 'Thermistor'
            new_row += 'TemperatureSensor.Type := mcMMTS_THERM;\t\t// Temperature sensor is thermistor\n'
        # temperature sensor is PTC
        elif low_byte == 2:
            temperature_sensor = 'SwitchingPTCThermistor'
            new_row += 'TemperatureSensor.Type := mcMMTS_SW_PTC_THERM;\t\t// Temperature sensor PTC\n'
        # temperature sensor is switch curve open
        elif low_byte == 3:
            temperature_sensor = 'Thermoswitches'
            new_row += 'TemperatureSensor.Type := mcMMTS_THRMSW;\t\t// Temperature sensor is switch curve\n' + new_row + 'TemperatureSensor.Thermoswitches.SwitchingStateOnOvertemperature :=  mcMMTSTSSSOO_NORM_OP;\t// State on overtemperature is open\n'
        # temperature sensor is switch curve closed
        elif low_byte == 4:
            temperature_sensor = 'Thermoswitches'
            new_row += 'TemperatureSensor.Type := mcMMTS_THRMSW;\t\t// Temperature sensor is switch curve\n' + new_row + 'TemperatureSensor.Thermoswitches.SwitchingStateOnOvertemperature :=  mcMMTSTSSSOO_NORM_CLSD;\t// State on overtemperature is closed\n'
        else:
            new_row = '// ERROR: Unsupported temperature sensor type\n'
            print(new_row.replace('// ', '-->'))

        # --------------------------------------------------------------------------
        # motor is induction motor
        if motor_type == motor_type_induction:
            new_row += '\t' + variable_name + 'ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.' + temperature_sensor + ".TemperatureSensorInterface := "
        # motor is synchronous motor
        elif motor_type == motor_type_synchronous:
            new_row += '\t' + variable_name + 'ParMotorSynchronous.Motor.Default.TemperatureSensor.' + temperature_sensor + ".TemperatureSensorInterface := "

        # motor interface is two wire line
        if high_byte == 0:
            new_row += 'mcMMTSTTSI_MOT_CON_WRD;\t\t // Temperature sensor interface'
        # temperature sensor is thermistor
        elif high_byte == 16:
            new_row += ' mcMMTSTTSI_ENC_DAT_TRAN_RES;\t\t // Temperature sensor interface'
        # temperature sensor is PTC
        elif high_byte == 17:
            new_row += 'mcMMTSTTSI_ENC_DAT_TRAN;\t\t // Temperature sensor interface'
        # temperature sensor is switch curve open
        elif high_byte == 32:
            new_row += 'mcMMTSTTSI_ENC_CON_WRD;\t\t // Temperature sensor interface'
        else:
            new_row = '// ERROR: Unsupported temperature sensor motor interface\n'
            print(new_row.replace('// ', '-->'))

    return temperature_sensor, new_row

# --------------------------------------------------------------------------
# find temperature model
def find_temp_model(rootMotor, motor_type):
    temperature_model = 'CurrentAndSpeedBased'
    temperature_model_calc_method = 'CalculationMethod.SecondOrderThermalNetwork'
    new_row = ''

    elem = find_element(rootMotor, 'TEMP_MOTOR_MODEL')

    # --------------------------------------------------------------------------
    # found temperature model
    if elem != None and 'Value' in elem.attrib:
        # motor is induction motor
        if motor_type == motor_type_induction:
            new_row = '\t' + variable_name + 'ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.Type := '
        # motor is synchronous motor
        elif motor_type == motor_type_synchronous:
            new_row = '\t' + variable_name + 'ParMotorSynchronous.Motor.Default.TemperatureModel.Type := '
        # generate error when motor type is unknown
        else:
            new_row = '// ERROR: Temperature model defined before motor type\n'
            print(new_row.replace('// ', '-->'))

        # temperature model is turned off
        if elem.attrib['Value'] == '0':
            temperature_model = ''
            new_row += 'mcMMTM_NOT_USE;\t\t// Temperature model is turned off\n'
        # temperature model is current based
        elif elem.attrib['Value'] == '1':
            temperature_model = 'CurrentBased'
            temperature_model_calc_method = ''
            new_row += 'mcMMTM_CURBASED;\t\t// Temperature model is current based\n'
        # temperature model is current and speed based, calc method is 2nd order with thermal network
        elif elem.attrib['Value'] == '2':
            temperature_model = 'CurrentAndSpeedBased'
            temperature_model_calc_method = 'CalculationMethod.SecondOrderThermalNetwork'
            new_row += 'mcMMTM_CUR_AND_SPDBASED;\t\t// Temperature model is current and speed based\n'
        # temperature model is current and speed based, calc method is 2nd order with thermal network
        elif elem.attrib['Value'] == '3':
            temperature_model = 'CurrentAndSpeedBased'
            temperature_model_calc_method = 'CalculationMethod.SecondOrderThermalNetwork'
            new_row += 'mcMMTM_CUR_AND_SPDBASED;\t\t// Temperature model is current and speed based\n'
        # temperature model is current and speed based, calc method is 4th order with thermal network
        elif elem.attrib['Value'] == '4':
            temperature_model = 'CurrentAndSpeedBased'
            temperature_model_calc_method = 'CalculationMethod.FourthOrderThermalNetwork'
            new_row += 'mcMMTM_CUR_AND_SPDBASED;\t\t// Temperature model is current and speed based\n'
        # temperature model is current and speed based, calc method is 4th order with thermal network
        elif elem.attrib['Value'] == '6':
            temperature_model = 'CurrentAndSpeedBased'
            temperature_model_calc_method = 'CalculationMethod.FourthOrderWithCouplings'
            new_row += 'mcMMTM_CUR_AND_SPDBASED;\t\t// Temperature model is current and speed based\n'
        else:
            new_row = '// ERROR: Unsupported temperature model\n'
            print(new_row.replace('// ', '-->'))

    return temperature_model, temperature_model_calc_method, new_row

# --------------------------------------------------------------------------
# find temperature reference sensor
def find_temp_ref_sensor(rootMotor, motor_type, temperature_model, temperature_model_calc_method):
    new_row = ''

    elem = find_element(rootMotor, 'MOTOR_TEMPMODEL_REFSENS')

    # --------------------------------------------------------------------------
    # found temperature model reference temperature
    if elem != None and 'Value' in elem.attrib:
        # make sure model and cals method come before ref temperature
        if temperature_model != '' and temperature_model_calc_method != '':
            # motor is induction motor
            if motor_type == motor_type_induction:
                new_row = '\t' + variable_name + 'ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.' + temperature_model + '.CalculationMethod.' + temperature_model_calc_method + '.ReferenceTemperature.Type := '
            # motor is synchronous motor
            elif motor_type == motor_type_synchronous:
                new_row = '\t' + variable_name + 'ParMotorSynchronous.Motor.Default.TemperatureModel.' + temperature_model + '.CalculationMethod.' + temperature_model_calc_method + '.ReferenceTemperature.Type := '
            # generate error when motor type is unknown
            else:
                new_row = '// ERROR: Temperature model defined before motor type\n'
                print(new_row.replace('// ', '-->'))

            # temperature model is motor ambient
            if elem.attrib['Value'] == '0':
                new_row += 'mcMMTMCSBCMRT_NOM_AMB_TMP;\t\t// Temperature model reference is motor ambient\n'
            # temperature model is reference is motor
            elif elem.attrib['Value'] == '1':
                new_row += 'mcMMTMCSBCMRT_MOT_TMP_SENS;\t\t// Temperature model reference is motor\n'
            elif elem.attrib['Value'] == '4':
                new_row += 'mcMMTMCSBCMRT_ENC_TMP_SENS;\t\t// Temperature model reference is encoder\n'
            else:
                new_row = '// ERROR: Unsupported temperature model reference temperature\n'
                print(new_row.replace('// ', '-->'))

        else:
            new_row = '// ERROR: Temperature model reference temperature was set before temperature model or with temperature model turned off\n'
            print(new_row.replace('// ', '-->'))

    return new_row