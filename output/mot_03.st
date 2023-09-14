// --------------------------------------------------------------- 
// Auto converted with version 1 on 2023-09-14 13:52:36.822574
// --------------------------------------------------------------- 
ACTION mot_03:
	// INFO: Motor type is synchronous
	// Parameter data for 1FK7083-5AF71
	// WARNING: Motor compatibility (MOTOR_COMPATIBILITY / 31) is set fixed to 0x0203. Old value was := 0x0203;		 // Motor: Software compatibility
	// WARNING: Winding connection (MOTOR_WIND_CONNECT / 46) is set fixed to 1. Old values was := 1;		 // Motor: Winding connection
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NumberOfPolePairs := 4;		 // Motor: Number of pole-pairs
	AxisMotorCfg.ParMotorSynchronous.Brake.Type := mcMSB_USE;      // Enable motor brake
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.NominalCurrent := 0;		 // Unit (A) Motor holding brake: Rated current (vorher: 0.5)
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.NominalTorque := 0;		 // Unit (Nm) Motor holding brake: Rated torque (vorher: 10.5)
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.ActivationDelay := 0;		 // Unit (s) Motor holding brake: Engaging delay (vorher 0.065)
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.ReleaseDelay := 0;		 // Unit (s) Motor holding brake: Release delay (vorher 0.125)
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
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalVoltage := 350;		 // Unit (V) Motor: Rated voltage
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.VoltageConstant := 97;		 // Unit (mV*min) Motor: Voltage constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalSpeed := 3000;		 // Unit (1/min) Motor: Rated speed
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.MaximumSpeed := 6000;		 // Unit (1/min) Motor: Maximum speed
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StallTorque := 13.3;		 // Unit (Nm) Motor: Stall torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalTorque := 9.5;		 // Unit (Nm) Motor: Rated torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.PeakTorque := 50;		 // Unit (Nm) Motor: Peak torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TorqueConstant := 1.52;		 // Unit (Nm/A) Motor: Torque constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StallCurrent := 8.6;		 // Unit (A) Motor: Stall current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalCurrent := 6.7;		 // Unit (A) Motor: Rated current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.PeakCurrent := 37;		 // Unit (A) Motor: Peak current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureModel.TEMP_MOTOR_MODEL_MODE.CalculationMethod.SecondOrderThermalNetwork.WindingCrossSection := 1.4;		 // Unit (mm≤) Motor: Line cross section
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StatorResistance := 0.8;		 // Unit (Ohm) Motor: Stator resistance
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StatorInductance := 0.012;		 // Unit (Henry) Motor: Stator inductance
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.MomentOfInertia := 0.0273;		 // Unit (kgm≤) Motor: Moment of inertia
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Type := mcMSMDEMA_USRDEF;     // Encoder mounting is user defined
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.UserDefined.CommutationOffset := 3.1415926;		 // Unit (rad) Motor: Commutation offset
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureModel.TEMP_MOTOR_MODEL_MODE.CalculationMethod.SecondOrderThermalNetwork.ThermalTimeConstant := 3000;		 // Unit (s) Motor: Thermal time constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureModel.TEMP_MOTOR_MODEL_MODE.LimitTemperature := 110;		 // Unit (∞C) Temperature sensor: Limit temperature
	// WARNING: Encoder type is not supported by the script since it was moved out of the motor configuration one level up into the inverter configuration := ncINC;		 // Encoder1: Type
	// WARNING: Encoder scaling is not supported by the script since it was moved out of the motor configuration one level up into the inverter configuration := 33554432;		 // Encoder1: Encoder scaling: increments per SCALE_ENCOD_MOTOR_REV motor revolutions
END_ACTION
