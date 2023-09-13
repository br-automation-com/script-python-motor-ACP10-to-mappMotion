// --------------------------------------------------------------- 
// Auto converted with version 1 on 2023-09-13 13:47:18.886520
// --------------------------------------------------------------- 
ACTION mot_12:
	// Parameter data for SIMENS 1LA7107
	// INFO: Motor type is induction
	// WARNING: Motor compatibility (MOTOR_COMPATIBILITY / 31) is set fixed to 0x0203. Old value was := 0x0203;		 // Motor: Software compatibility
	// WARNING: Winding connection (MOTOR_WIND_CONNECT / 46) is set fixed to 1. Old values was := 1;		 // Motor: Winding connection
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.NumberOfPolePairs := 2;		 // Motor: Number of pole-pairs
	AxisMotorCfg.ParMotorInduction.Brake.Type := mcMIB_USE;      // Enable motor brake
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalCurrent := 0;		 // Unit (A) Motor holding brake: Rated current
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalTorque := 0;		 // Unit (Nm) Motor holding brake: Rated torque
	AxisMotorCfg.ParMotorInduction.Brake.Used.ActivationDelay := 0;		 // Unit (s) Motor holding brake: Engaging delay
	AxisMotorCfg.ParMotorInduction.Brake.Used.ReleaseDelay := 0;		 // Unit (s) Motor holding brake: Release delay
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.ResistanceR0 := 1500;		 // Temperature sensor: Parameter 1
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.ResistanceR7 := 0;		 // Temperature sensor: Parameter 2
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureSensor.Thermistor.TemperatureT0 := 145;		 // Temperature sensor: Parameter 3
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
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalSpeed := 1420;		 // Unit (1/min) Motor: Rated speed
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MaximumSpeed := 2000;		 // Unit (1/min) Motor: Maximum speed
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.StallTorque := 20.17;		 // Unit (Nm) Motor: Stall torque
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.NominalTorque := 20.17;		 // Unit (Nm) Motor: Rated torque
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.PeakTorque := 65.46;		 // Unit (Nm) Motor: Peak torque (vorher: 65.46 - nicht verändern, sonst stimmt Kennlinie nicht!)
// ERROR: MOTOR_TORQ_CONST not found in conversion table. Old value was 0
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.StallCurrent := 6.4;		 // Unit (A) Motor: Stall current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.NominalCurrent := 6.4;		 // Unit (A) Motor: Rated current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.PeakCurrent := 32.11;		 // Unit (A) Motor: Peak current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentAndSpeedBased.CalculationMethod.SecondOrderThermalNetwork.WindingCrossSection := 10;		 // Unit (mm²) Motor: Line cross section
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorResistance := 1.956;		 // Unit (Ohm) Motor: Stator resistance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorInductance := 0.01157;		 // Unit (Henry) Motor: Stator inductance
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MomentOfInertia := 0.0055;		 // Unit (kgm²) Motor: Moment of inertia
// ERROR: MOTOR_COMMUT_OFFSET not found in conversion table. Old value was 0
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorResistance := 1.956;		 // Unit (Ohm) Motor: Rotor resistance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorInductance := 0.01157;		 // Unit (Henry) Motor: Rotor inductance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.MutualInductance := 0.2491;		 // Unit (Henry) Motor: Mutual inductance
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.OptionalParameter.MagnetizingCurrent := 3.66;		 // Unit (A) Motor: Magnetizing current
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentAndSpeedBased.CalculationMethod.SecondOrderThermalNetwork.ThermalTimeConstant := 300;		 // Unit (s) Motor: Thermal time constant
	AxisMotorCfg.ParMotorInduction.Motor.PowerRatingPlate.TemperatureModel.CurrentAndSpeedBased.LimitTemperature := 110;		 // Unit (°C) Temperature sensor: Limit temperature
	// WARNING: Encoder type is not supported by the script since it was moved out of the motor configuration one level up into the inverter configuration := ncINC;		 // Encoder1: Type
	// WARNING: Encoder scaling is not supported by the script since it was moved out of the motor configuration one level up into the inverter configuration := 4096;		 // Encoder1: Encoder scaling: increments per SCALE_ENCOD_MOTOR_REV motor revolutions
// ERROR: ENCOD_OUTPUT_FREQUENCY not found in conversion table. Old value was 120000
// ERROR: ENCOD_OUTPUT_STAGE not found in conversion table. Old value was ncPUSHPULL
// ERROR: ENCOD_LINE_CHK_IGNORE not found in conversion table. Old value was 0
END_ACTION
