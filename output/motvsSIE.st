// --------------------------------------------------------------- 
// Auto converted with version 1 on 2023-09-11 15:00:32.456666
// --------------------------------------------------------------- 
ACTION motvsSIE:
	// Motor type is synchronous
// ERROR: TEMP_MOTOR_MODEL_MODE not found in conversion table
	// Motor compatibility is set fixed to 0x0203. Old value was := 0x0203;		 // Motor: Software compatibility
	// Winding connection is set fixed to 1. Old values was := 1;		 // Motor: Winding connection
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NumberOfPolePairs := 4;		 // Motor: Number of pole-pairs
	AxisMotorCfg.ParMotorSynchronous.Brake.Type := mcMSB_USE;      // Enable motor brake
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.Limits.Type :=  mcMSBUL_USE;      // Holding brake limits
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.Limits.Used.MaximumVoltage := 123;		 // Test
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.NominalCurrent := 1;		 // Unit (A) Motor holding brake: Rated current (vorher 0.5)
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.NominalTorque := 43;		 // Unit (Nm) Motor holding brake: Rated torque
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.ActivationDelay := 0.1;		 // Unit (s) Motor holding brake: Engaging delay (vorher 0.07 und 0.08)
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.ReleaseDelay := 0.2;		 // Unit (s) Motor holding brake: Release delay
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.ResistanceR0 := 882.24;		 // Temperature sensor: Parameter 1
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.ResistanceR7 := 1758.4;		 // Temperature sensor: Parameter 2
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT0 := -30;		 // Temperature sensor: Parameter 3
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT1 := 2;		 // Temperature sensor: Parameter 4
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT2 := 34;		 // Temperature sensor: Parameter 5
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT3 := 66.5;		 // Temperature sensor: Parameter 6
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT4 := 99.5;		 // Temperature sensor: Parameter 7
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT5 := 132.5;		 // Temperature sensor: Parameter 8
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT6 := 166.25;		 // Temperature sensor: Parameter 9
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureSensor.Thermistor.TemperatureT7 := 200;		 // Temperature sensor: Parameter 10
	// WARNING: MOTOR_THERMAL_CONST is not supported with MOTOR_COMPATIBILITY = 0x0203. Use MOTOR_TAU_THERM instead! Old value was := 30;		 // Unit (s) Motor: Thermal time constant (for MOTOR_COMPATIBILITY 0x0202)
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalVoltage := 400;		 // Unit (V) Motor: Rated voltage
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.VoltageConstant := 162;		 // Unit (mV*min) Motor: Voltage constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalSpeed := 2000;		 // Unit (1/min) Motor: Rated speed
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.MaximumSpeed := 5000;		 // Unit (1/min) Motor: Maximum speed
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StallTorque := 31.5;		 // Unit (Nm) Motor: Stall torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalTorque := 22.5;		 // Unit (Nm) Motor: Rated torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.PeakTorque := 42.875;		 // Unit (Nm) Motor: Peak torque (vorher 43,5Nm -> zu groß)
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TorqueConstant := 2.45;		 // Unit (Nm/A) Motor: Torque constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StallCurrent := 12.9;		 // Unit (A) Motor: Stall current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalCurrent := 9.5;		 // Unit (A) Motor: Rated current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.PeakCurrent := 17.5;		 // Unit (A) Motor: Peak current (vorher 46.5A -> zu groß)
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureModel.CurrentBased.WindingCrossSection := 2;		 // Unit (mm²) Motor: Line cross section (-> Wert aus Vergleich mit B&R Antrieben abgeschätzt)
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StatorResistance := 0.288;		 // Unit (Ohm) Motor: Stator resistance
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StatorInductance := 0.0066;		 // Unit (Henry) Motor: Stator inductance
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.MomentOfInertia := 0.0104;		 // Unit (kgm²) Motor: Moment of inertia
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Type := mcMSMDEMA_USRDEF;     // Encoder mounting is user defined
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.UserDefined.CommutationOffset := 3.1415926;		 // Unit (rad) Motor: Commutation offset
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureModel.CurrentBased.ThermalTimeConstant := 560;		 // Unit (s) Motor: Thermal time constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureModel.CurrentBased.LimitTemperature := 145;		 // Unit (°C) Temperature sensor: Limit temperature
END_ACTION
