// --------------------------------------------------------------- 
// Auto converted with version 1 on 2023-09-13 13:47:18.673089
// --------------------------------------------------------------- 
ACTION mot_06:
	// Parameter data for Rollenentnahmewagen
	// INFO: Motor type is induction
	// WARNING: Motor compatibility (MOTOR_COMPATIBILITY / 31) is set fixed to 0x0203. Old value was := 0x0203;		 // Motor: Software compatibility
	// WARNING: Winding connection (MOTOR_WIND_CONNECT / 46) is set fixed to 1. Old values was := 1;		 // Motor: Winding connection
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.NumberOfPolePairs := 2;		 // Motor: Number of pole-pairs
	AxisMotorCfg.ParMotorInduction.Brake.Type := mcMIB_USE;      // Enable motor brake
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalCurrent := 0.1;		 // Unit (A) Motor holding brake: Rated current
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalTorque := 0;		 // Unit (Nm) Motor holding brake: Rated torque
	AxisMotorCfg.ParMotorInduction.Brake.Used.ActivationDelay := 0.1;		 // Unit (s) Motor holding brake: Engaging delay
	AxisMotorCfg.ParMotorInduction.Brake.Used.ReleaseDelay := 0.1;		 // Unit (s) Motor holding brake: Release delay
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.ResistanceR0 := 2000;		 // Temperature sensor: Parameter 1 (vorher: 2000)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.ResistanceR7 := 0;		 // Temperature sensor: Parameter 2
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT0 := 150;		 // Temperature sensor: Parameter 3 (vorher: 110)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT1 := 0;		 // Temperature sensor: Parameter 4
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT2 := 0;		 // Temperature sensor: Parameter 5
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT3 := 0;		 // Temperature sensor: Parameter 6
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT4 := 0;		 // Temperature sensor: Parameter 7
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT5 := 0;		 // Temperature sensor: Parameter 8
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT6 := 0;		 // Temperature sensor: Parameter 9
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT7 := 0;		 // Temperature sensor: Parameter 10
	// WARNING: MOTOR_THERMAL_CONST is not supported with MOTOR_COMPATIBILITY = 0x0203. Use MOTOR_TAU_THERM instead! Old value was := 0;		 // Unit (s) Motor: Thermal time constant (for MOTOR_COMPATIBILITY 0x0202)
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalVoltage := 400;		 // Unit (V) Motor: Rated voltage
// ERROR: MOTOR_VOLTAGE_CONST not found in conversion table. Old value was 0
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalSpeed := 1380;		 // Unit (1/min) Motor: Rated speed
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MaximumSpeed := 1500;		 // Unit (1/min) Motor: Maximum speed
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.StallTorque := 3.81;		 // Unit (Nm) Motor: Stall torque
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.NominalTorque := 3.81;		 // Unit (Nm) Motor: Rated torque
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.PeakTorque := 10.96;		 // Unit (Nm) Motor: Peak torque
// ERROR: MOTOR_TORQ_CONST not found in conversion table. Old value was 0
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.StallCurrent := 1.55;		 // Unit (A) Motor: Stall current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalCurrent := 1.55;		 // Unit (A) Motor: Rated current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.PeakCurrent := 5.75;		 // Unit (A) Motor: Peak current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentAndSpeedBased.CalculationMethod.SecondOrderThermalNetwork.WindingCrossSection := 0;		 // Unit (mm²) Motor: Line cross section
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorResistance := 12.226;		 // Unit (Ohm) Motor: Stator resistance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorInductance := 0.06551;		 // Unit (Henry) Motor: Stator inductance
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MomentOfInertia := 0;		 // Unit (kgm²) Motor: Moment of inertia
// ERROR: MOTOR_COMMUT_OFFSET not found in conversion table. Old value was 0
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorResistance := 12.226;		 // Unit (Ohm) Motor: Rotor resistance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorInductance := 0.06551;		 // Unit (Henry) Motor: Rotor inductance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.MutualInductance := 0.7801;		 // Unit (Henry) Motor: Mutual inductance
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MagnetizingCurrent := 0.85;		 // Unit (A) Motor: Magnetizing current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentAndSpeedBased.CalculationMethod.SecondOrderThermalNetwork.ThermalTimeConstant := 20;		 // Unit (s) Motor: Thermal time constant
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentAndSpeedBased.LimitTemperature := 110;		 // Unit (°C) Temperature sensor: Limit temperature
END_ACTION
