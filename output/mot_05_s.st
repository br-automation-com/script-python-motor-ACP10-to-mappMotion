// --------------------------------------------------------------- 
// Auto converted with version 1 on 2023-09-13 13:47:18.625119
// --------------------------------------------------------------- 
ACTION mot_05_s:
	// Parameter data for RF 17 DT80N4/TH
	// INFO: Motor type is induction
	// WARNING: Motor compatibility (MOTOR_COMPATIBILITY / 31) is set fixed to 0x0203. Old value was := 0x0203;		 // Motor: Software compatibility
	// WARNING: Winding connection (MOTOR_WIND_CONNECT / 46) is set fixed to 1. Old values was := 1;		 // Motor: Winding connection
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.NumberOfPolePairs := 2;		 // Motor: Number of pole-pairs
	AxisMotorCfg.ParMotorInduction.Brake.Type := mcMIB_USE;      // Enable motor brake
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalCurrent := 0;		 // Unit (A) Motor holding brake: Rated current
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalTorque := 0;		 // Unit (Nm) Motor holding brake: Rated torque
	AxisMotorCfg.ParMotorInduction.Brake.Used.ActivationDelay := 0;		 // Unit (s) Motor holding brake: Engaging delay
	AxisMotorCfg.ParMotorInduction.Brake.Used.ReleaseDelay := 0;		 // Unit (s) Motor holding brake: Release delay
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.ResistanceR7 := 0;		 // Temperatursensor: Parameter 2
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT0 := 130;		 // Temperatursensor: Parameter 3
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT1 := 0;		 // Temperatursensor: Parameter 4
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT2 := 0;		 // Temperatursensor: Parameter 5
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.ResistanceR0 := 0;		 // Temperatursensor: Parameter 1
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT3 := 0;		 // Temperatursensor: Parameter 6
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT4 := 0;		 // Temperatursensor: Parameter 7
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT5 := 0;		 // Temperatursensor: Parameter 8
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT6 := 0;		 // Temperatursensor: Parameter 9
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT7 := 0;		 // Temperatursensor: Parameter 10
	// WARNING: MOTOR_THERMAL_CONST is not supported with MOTOR_COMPATIBILITY = 0x0203. Use MOTOR_TAU_THERM instead! Old value was := 0;		 // Unit (s) Motor: Thermische Zeitkonstante (f√ºr MOTOR_COMPATIBILITY 0x0202)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalVoltage := 400;		 // Unit (V) Motor: Rated voltage
// ERROR: MOTOR_VOLTAGE_CONST not found in conversion table. Old value was 0
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalSpeed := 1435;		 // Unit (1/min) Motor: Rated speed
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MaximumSpeed := 2750;		 // Unit (1/min) Motor: Maximum speed
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.StallTorque := 5.19;		 // Unit (Nm) Motor: Stall torque (vorher: 12.36)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.NominalTorque := 5.19;		 // Unit (Nm) Motor: Rated torque (vorher: 12.36)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.PeakTorque := 21.93;		 // Unit (Nm) Motor: Peak torque (vorher: 52.13)
// ERROR: MOTOR_TORQ_CONST not found in conversion table. Old value was 0
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.StallCurrent := 2.1;		 // Unit (A) Motor: Stall current (vorher 3.6) 2.1
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalCurrent := 2.1;		 // Unit (A) Motor: Rated current (vorher 3.6) 2.1
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.PeakCurrent := 10.72;		 // Unit (A) Motor: Peak current (vorher 13.1)10.72
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentAndSpeedBased.CalculationMethod.SecondOrderThermalNetwork.WindingCrossSection := 0;		 // Unit (mm≤) Motor: Line cross section
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorResistance := 8.936;		 // Unit (Ohm) Motor: Stator resistance (vorher 9.6)
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorInductance := 0.03460;		 // Unit (Henry) Motor: Stator inductance (vorher: 0.032)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MomentOfInertia := 0;		 // Unit (kgm≤) Motor: Moment of inertia
// ERROR: MOTOR_COMMUT_OFFSET not found in conversion table. Old value was 0
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorResistance := 8.936;		 // Unit (Ohm) Motor: Rotor resistance (vorher 10.94)
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorInductance := 0.03460;		 // Unit (Henry) Motor: Rotor inductance (vorher: 0.032)
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.MutualInductance := 0.772;		 // Unit (Henry) Motor: Mutual inductance (vorher 0.387)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MagnetizingCurrent := 0.9;		 // Unit (A) Motor: Magnetizing current (1.87)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentAndSpeedBased.CalculationMethod.SecondOrderThermalNetwork.ThermalTimeConstant := 0;		 // Unit (s) Motor: Thermal time constant
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentAndSpeedBased.LimitTemperature := 110;		 // Unit (∞C) Temperature sensor: Limit temperature
END_ACTION
