// --------------------------------------------------------------- 
// Auto converted with version 1 on 2023-09-14 13:52:36.811693
// --------------------------------------------------------------- 
ACTION mot_02:
	// INFO: Motor type is synchronous
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Undefined.AutomaticIdentification.Type := mcMSMDEMAUAI_SAT;		// Phasing mode is saturation
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureModel.Type := mcMMTM_NOT_USE;		// Temperature model is turned off
	// Parameter data for 1FT7068-5AF70
	// WARNING: Motor compatibility (MOTOR_COMPATIBILITY / 31) is set fixed to 0x0203. Old value was := 0x0203;		 // Motor: Software compatibility
	// WARNING: Winding connection (MOTOR_WIND_CONNECT / 46) is set fixed to 1. Old values was := 1;		 // Motor: Winding connection
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NumberOfPolePairs := 5;		 // Motor: Number of pole-pairs
	AxisMotorCfg.ParMotorSynchronous.Brake.Type := mcMSB_USE;      // Enable motor brake
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.NominalCurrent := 0;		 // Unit (A) Motor holding brake: Rated current
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.NominalTorque := 0;		 // Unit (Nm) Motor holding brake: Rated torque
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.ActivationDelay := 0;		 // Unit (s) Motor holding brake: Engaging delay
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.ReleaseDelay := 0;		 // Unit (s) Motor holding brake: Release delay
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.ResistanceR7 := 1334;		 // Temperatursensor: Parameter 2
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT0 := -20;		 // Temperatursensor: Parameter 3
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT1 := 10;		 // Temperatursensor: Parameter 4
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT2 := 42.5;		 // Temperatursensor: Parameter 5
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.ResistanceR0 := 424;		 // Temperatursensor: Parameter 1
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT3 := 68;		 // Temperatursensor: Parameter 6
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT4 := 90;		 // Temperatursensor: Parameter 7
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT5 := 112;		 // Temperatursensor: Parameter 8
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT6 := 131;		 // Temperatursensor: Parameter 9
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT7 := 150;		 // Temperatursensor: Parameter 10
	// WARNING: MOTOR_THERMAL_CONST is not supported with MOTOR_COMPATIBILITY = 0x0203. Use MOTOR_TAU_THERM instead! Old value was := 0;		 // Unit (s) Motor: Thermische Zeitkonstante (f√ºr MOTOR_COMPATIBILITY 0x0202)
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalVoltage := 380;		 // Unit (V) Motor: Rated voltage
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.VoltageConstant := 114;		 // Unit (mV*min) Motor: Voltage constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalSpeed := 3000;		 // Unit (1/min) Motor: Rated speed
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.MaximumSpeed := 4962;		 // Unit (1/min) Motor: Maximum speed (vorher 6500); alternativ 4962
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StallTorque := 13;		 // Unit (Nm) Motor: Stall torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalTorque := 10.9;		 // Unit (Nm) Motor: Rated torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.PeakTorque := 63;		 // Unit (Nm) Motor: Peak torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TorqueConstant := 1.81;		 // Unit (Nm/A) Motor: Torque constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StallCurrent := 8.6;		 // Unit (A) Motor: Stall current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalCurrent := 7.1;		 // Unit (A) Motor: Rated current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.PeakCurrent := 43;		 // Unit (A) Motor: Peak current
// ERROR: Temperature model does not match parameter MOTOR_WIND_CROSS_SECT
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StatorResistance := 1.06;		 // Unit (Ohm) Motor: Stator resistance
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StatorInductance := 0.0128;		 // Unit (Henry) Motor: Stator inductance
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.MomentOfInertia := 0.0232;		 // Unit (kgm≤) Motor: Moment of inertia
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Type := mcMSMDEMA_USRDEF;     // Encoder mounting is user defined
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.UserDefined.CommutationOffset := 0;		 // Unit (rad) Motor: Commutation offset
// ERROR: Temperature model does not match parameter MOTOR_TAU_THERM
// ERROR: Temperature model does not match parameter MOTOR_WIND_TEMP_MAX
// ERROR: FCTRL_MODE not found in conversion table. Old value was 33
// ERROR: FWCTRL_TN not found in conversion table. Old value was 0.0211
// ERROR: FWCTRL_ISD0 not found in conversion table. Old value was -0.02374
// ERROR: FWCTRL_SPEED0 not found in conversion table. Old value was 2.33
	// WARNING: Encoder type is not supported by the script since it was moved out of the motor configuration one level up into the inverter configuration := ncINC;		 // Encoder1: Type
	// WARNING: Encoder scaling is not supported by the script since it was moved out of the motor configuration one level up into the inverter configuration := 33554432;		 // Encoder1: Encoder scaling: increments per SCALE_ENCOD_MOTOR_REV motor revolutions
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Type := mcMSMDEMA_UDEF;     // Encoder mounting is undefined
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Undefined.AutomaticIdentification.Saturation.PhasingCurrent := 20;		 // Unit (A) Motor: Phasing: Current (vorher: 20A)
END_ACTION
