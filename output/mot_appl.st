// --------------------------------------------------------------- 
// Auto converted with version 1 on 2023-09-14 13:52:36.941115
// --------------------------------------------------------------- 
ACTION mot_appl:
	// INFO: Motor type is synchronous
	// Parameter data for MSK030C-0900-NN
	// WARNING: Motor compatibility (MOTOR_COMPATIBILITY / 31) is set fixed to 0x0203. Old value was := 0x0203;		 // Motor: Software compatibility
	// WARNING: Winding connection (MOTOR_WIND_CONNECT / 46) is set fixed to 1. Old values was := 1;		 // Motor: Winding connection
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NumberOfPolePairs := 3;		 // Motor: Number of pole-pairs
	AxisMotorCfg.ParMotorSynchronous.Brake.Type := mcMSB_USE;      // Enable motor brake
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.NominalCurrent := 0;		 // Unit (A) Motor holding brake: Rated current
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.NominalTorque := 0;		 // Unit (Nm) Motor holding brake: Rated torque
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.ActivationDelay := 0;		 // Unit (s) Motor holding brake: Engaging delay
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.ReleaseDelay := 0;		 // Unit (s) Motor holding brake: Release delay
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.ResistanceR0 := 0;		 // Temperature sensor: Parameter 1
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.ResistanceR7 := 0;		 // Temperature sensor: Parameter 2
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT0 := 0;		 // Temperature sensor: Parameter 3
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT1 := 0;		 // Temperature sensor: Parameter 4
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT2 := 0;		 // Temperature sensor: Parameter 5
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT3 := 0;		 // Temperature sensor: Parameter 6
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT4 := 0;		 // Temperature sensor: Parameter 7
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT5 := 0;		 // Temperature sensor: Parameter 8
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT6 := 0;		 // Temperature sensor: Parameter 9
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT7 := 0;		 // Temperature sensor: Parameter 10
	// WARNING: MOTOR_THERMAL_CONST is not supported with MOTOR_COMPATIBILITY = 0x0203. Use MOTOR_TAU_THERM instead! Old value was := 1080;		 // Unit (s) Motor: Thermal time constant (for MOTOR_COMPATIBILITY 0x0202)
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalVoltage := 400;		 // Unit (V) Motor: Rated voltage
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.VoltageConstant := 29.0;		 // Unit (mV*min) Motor: Voltage constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalSpeed := 6000;		 // Unit (1/min) Motor: Rated speed
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.MaximumSpeed := 10000;		 // Unit (1/min) Motor: Maximum speed
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StallTorque := 0.7;		 // Unit (Nm) Motor: Stall torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalTorque := 0.6;		 // Unit (Nm) Motor: Rated torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.PeakTorque := 3.4;		 // Unit (Nm) Motor: Peak torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TorqueConstant := 0.46;		 // Unit (Nm/A) Motor: Torque constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StallCurrent := 1.5;		 // Unit (A) Motor: Stall current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalCurrent := 1.4;		 // Unit (A) Motor: Rated current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.PeakCurrent := 8.0;		 // Unit (A) Motor: Peak current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureModel.TEMP_MOTOR_MODEL_MODE.CalculationMethod.SecondOrderThermalNetwork.WindingCrossSection := 0.5;		 // Unit (mm²) Motor: Line cross section
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StatorResistance := 4.2;		 // Unit (Ohm) Motor: Stator resistance
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StatorInductance := 0.0091;		 // Unit (Henry) Motor: Stator inductance
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.MomentOfInertia := 0.000028;		 // Unit (kgm²) Motor: Moment of inertia
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Type := mcMSMDEMA_USRDEF;     // Encoder mounting is user defined
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.UserDefined.CommutationOffset := 3.1415926;		 // Unit (rad) Motor: Commutation offset
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureModel.TEMP_MOTOR_MODEL_MODE.CalculationMethod.SecondOrderThermalNetwork.ThermalTimeConstant := 1080;		 // Unit (s) Motor: Thermal time constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureModel.TEMP_MOTOR_MODEL_MODE.LimitTemperature := 100;		 // Unit (°C) Temperature sensor: Limit temperature
END_ACTION
