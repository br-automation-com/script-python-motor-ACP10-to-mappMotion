// --------------------------------------------------------------- 
// Auto converted with version 1 on 2023-09-05 16:33:11.559092
// --------------------------------------------------------------- 
ACTION mot_01:
	// Parameter data for Siemens 1PH8103-1MF02-0GB2-Z (Zentralantrieb) PT1000
	// Motor type is induction
	// Motor compatibility is set fixed to 0x0203. Old value was := 0x0203;		 // Motor: Software compatibility
	// Winding connection is set fixed to 1. Old values was := 1;		 // Motor: Winding connection
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.NumberOfPolePairs := 2;		 // Motor: Number of pole-pairs
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.VoltageLimitation.Type := mcMIMSECVL_USE;     // Enable voltage limitation
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.VoltageLimitation.Used.MaximumDCBusVoltage := 44;		 // Test
	AxisMotorCfg.ParMotorInduction.Brake.Type := mcMIB_USE;      // Enable motor brake
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalCurrent := 0;		 // Unit (A) Motor holding brake: Rated current
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalTorque := 0;		 // Unit (Nm) Motor holding brake: Rated torque
	AxisMotorCfg.ParMotorInduction.Brake.Used.ActivationDelay := 0;		 // Unit (s) Motor holding brake: Engaging delay
	AxisMotorCfg.ParMotorInduction.Brake.Used.ReleaseDelay := 0;		 // Unit (s) Motor holding brake: Release delay
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.ResistanceR0 := 882.24;		 // Temperature sensor: Parameter 1 882.24
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.ResistanceR7 := 1758.4;		 // Temperature sensor: Parameter 2 1758.4
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT0 := -30;		 // Temperature sensor: Parameter 3 -30
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT1 := 2;		 // Temperature sensor: Parameter 4 2
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT2 := 34;		 // Temperature sensor: Parameter 5 34
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT3 := 66.5;		 // Temperatursensor: Parameter 6 66.5
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT4 := 99.5;		 // Temperatursensor: Parameter 7 99.5
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT5 := 132.5;		 // Temperatursensor: Parameter 8 132.5
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT6 := 166.25;		 // Temperatursensor: Parameter 9 166.25
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT7 := 200;		 // Temperatursensor: Parameter 10 200
	// WARNING: MOTOR_THERMAL_CONST is not supported with MOTOR_COMPATIBILITY = 0x0203. Use MOTOR_TAU_THERM instead! Old value was := 30;		 // Unit (s) Motor: Thermische Zeitkonstante (f“ºr MOTOR_COMPATIBILITY 0x0202)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalVoltage := 412;		 // Unit (V) Motor: Rated voltage (alt: 350)
// ERROR: MOTOR_VOLTAGE_CONST not found in conversion table
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalSpeed := 1750;		 // Unit (1/min) Motor: Rated speed (alt: 1500)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MaximumSpeed := 6000;		 // Unit (1/min) Motor: Maximum speed
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.StallTorque := 34;		 // Unit (Nm) Motor: Stall torque (alt: 35)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.NominalTorque := 34;		 // Unit (Nm) Motor: Rated torque (alt: 35)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.PeakTorque := 120;		 // Unit (Nm) Motor: Peak torque
// ERROR: MOTOR_TORQ_CONST not found in conversion table
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.StallCurrent := 12.7;		 // Unit (A) Motor: Stall current (alt: 13)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalCurrent := 12.7;		 // Unit (A) Motor: Rated current (alt: 13)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.PeakCurrent := 70;		 // Unit (A) Motor: Peak current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentBased.WindingCrossSection := 0;		 // Unit (mm≤) Motor: Line cross section
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorResistance := 0.831;		 // Unit (Ohm) Motor: Stator resistance (alt: 0.808)
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorInductance := 0.0041621;		 // Unit (Henry) Motor: Stator inductance (alt: 0.00438)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MomentOfInertia := 0.0172;		 // Unit (kgm≤) Motor: Moment of inertia (alt: 0.228)
// ERROR: MOTOR_COMMUT_OFFSET not found in conversion table
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorResistance := 0.551;		 // Unit (Ohm) Motor: Rotor resistance (alt: 0.808)
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorInductance := 0.0058243;		 // Unit (Henry) Motor: Rotor inductance (alt: 0.00438)
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.MutualInductance := 0.08952;		 // Unit (Henry) Motor: Mutual inductance (alt: 0.1091)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MagnetizingCurrent := 6.5;		 // Unit (A) Motor: Magnetizing current (alt: 5.4)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentBased.ThermalTimeConstant := 0;		 // Unit (s) Motor: Thermal time constant
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentBased.LimitTemperature := 110;		 // Unit (∞C) Temperature sensor: Limit temperature
// ERROR: ENCOD_TYPE not found in conversion table
// ERROR: SCALE_ENCOD_INCR not found in conversion table
END_ACTION
