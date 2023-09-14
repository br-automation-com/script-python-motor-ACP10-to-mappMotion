// --------------------------------------------------------------- 
// Auto converted with version 1 on 2023-09-14 13:52:36.930206
// --------------------------------------------------------------- 
ACTION mot_abz:
	// INFO: Motor type is induction
	// Parameter data for Abziehwalze
	// WARNING: Motor compatibility (MOTOR_COMPATIBILITY / 31) is set fixed to 0x0203. Old value was := 0x0203;		 // Motor: Software compatibility
	// WARNING: Winding connection (MOTOR_WIND_CONNECT / 46) is set fixed to 1. Old values was := 1;		 // Motor: Winding connection
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.NumberOfPolePairs := 2;		 // Motor: Number of pole-pairs
	AxisMotorCfg.ParMotorInduction.Brake.Type := mcMIB_USE;      // Enable motor brake
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalCurrent := 0;		 // Unit (A) Motor holding brake: Rated current
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalTorque := 0;		 // Unit (Nm) Motor holding brake: Rated torque
	AxisMotorCfg.ParMotorInduction.Brake.Used.ActivationDelay := 0;		 // Unit (s) Motor holding brake: Engaging delay
	AxisMotorCfg.ParMotorInduction.Brake.Used.ReleaseDelay := 0;		 // Unit (s) Motor holding brake: Release delay
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.ResistanceR0 := 882.24;		 // Temperature sensor: Parameter 1 (vorher: 2000) 882.24
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.ResistanceR7 := 1758.4;		 // Temperature sensor: Parameter 2 1758.4
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT0 := -30;		 // Temperature sensor: Parameter 3 (vorher: 110) -30
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT1 := 2;		 // Temperature sensor: Parameter 4 2
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT2 := 34;		 // Temperature sensor: Parameter 5 34
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT3 := 66.5;		 // Temperature sensor: Parameter 6 66.5
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT4 := 99.5;		 // Temperature sensor: Parameter 7 99.5
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT5 := 132.5;		 // Temperature sensor: Parameter 8 132.5
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT6 := 166.25;		 // Temperature sensor: Parameter 9 166.25
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT7 := 200;		 // Temperature sensor: Parameter 10 200
	// WARNING: MOTOR_THERMAL_CONST is not supported with MOTOR_COMPATIBILITY = 0x0203. Use MOTOR_TAU_THERM instead! Old value was := 30;		 // Unit (s) Motor: Thermal time constant (for MOTOR_COMPATIBILITY 0x0202)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalVoltage := 400;		 // Unit (V) Motor: Rated voltage
// ERROR: MOTOR_VOLTAGE_CONST not found in conversion table. Old value was 0
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalSpeed := 1435;		 // Unit (1/min) Motor: Rated speed
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MaximumSpeed := 1500;		 // Unit (1/min) Motor: Maximum speed
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.StallTorque := 3.66;		 // Unit (Nm) Motor: Stall torque
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.NominalTorque := 3.66;		 // Unit (Nm) Motor: Rated torque
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.PeakTorque := 17.66;		 // Unit (Nm) Motor: Peak torque
// ERROR: MOTOR_TORQ_CONST not found in conversion table. Old value was 0
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.StallCurrent := 2.25;		 // Unit (A) Motor: Stall current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalCurrent := 2.25;		 // Unit (A) Motor: Rated current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.PeakCurrent := 9.06;		 // Unit (A) Motor: Peak current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.TEMP_MOTOR_MODEL_MODE.CalculationMethod.SecondOrderThermalNetwork.WindingCrossSection := 0;		 // Unit (mm²) Motor: Line cross section
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorResistance := 4.549;		 // Unit (Ohm) Motor: Stator resistance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorInductance := 0.04136;		 // Unit (Henry) Motor: Stator inductance
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MomentOfInertia := 0;		 // Unit (kgm²) Motor: Moment of inertia
// ERROR: MOTOR_COMMUT_OFFSET not found in conversion table. Old value was 0
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorResistance := 4.549;		 // Unit (Ohm) Motor: Rotor resistance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorInductance := 0.04136;		 // Unit (Henry) Motor: Rotor inductance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.MutualInductance := 0.5788;		 // Unit (Henry) Motor: Mutual inductance
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MagnetizingCurrent := 1.16;		 // Unit (A) Motor: Magnetizing current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.TEMP_MOTOR_MODEL_MODE.CalculationMethod.SecondOrderThermalNetwork.ThermalTimeConstant := 20;		 // Unit (s) Motor: Thermal time constant
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.TEMP_MOTOR_MODEL_MODE.LimitTemperature := 110;		 // Unit (°C) Temperature sensor: Limit temperature
END_ACTION
