// --------------------------------------------------------------- 
// Auto converted with version 2 on 2023-11-23 13:58:49.800559
// --------------------------------------------------------------- 
ACTION mot_04-d:
	// Motor type is induction
	// Parameter data for SK5382
	// WARNING: Motor compatibility (MOTOR_COMPATIBILITY / 31) is set fixed to 0x0203. Old value was := 0x0203;		 // Motor: Software compatibility
	// WARNING: Winding connection (MOTOR_WIND_CONNECT / 46) is set fixed to 1. Old values was := 1;		 // Motor: Winding connection
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.NumberOfPolePairs := 2;		 // Motor: Number of pole-pairs
	AxisMotorCfg.ParMotorInduction.Brake.Type := mcMIB_USE;      // Enable motor brake
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalCurrent := 0;		 // Unit (A) Motor holding brake: Rated current
	AxisMotorCfg.ParMotorInduction.Brake.Used.NominalTorque := 22;		 // Unit (Nm) Motor holding brake: Rated torque
	AxisMotorCfg.ParMotorInduction.Brake.Used.ActivationDelay := 0.2;		 // Unit (s) Motor holding brake: Engaging delay
	AxisMotorCfg.ParMotorInduction.Brake.Used.ReleaseDelay := 0.2;		 // Unit (s) Motor holding brake: Release delay
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureSensor.Thermistor.ResistanceR0 := 9000;		 // Temperature sensor: Parameter 1
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureSensor.Thermistor.ResistanceR7 := 0;		 // Temperature sensor: Parameter 2
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureSensor.Thermistor.TemperatureT0 := 150;		 // Temperature sensor: Parameter 3
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureSensor.Thermistor.TemperatureT1 := 0;		 // Temperature sensor: Parameter 4
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureSensor.Thermistor.TemperatureT2 := 0;		 // Temperature sensor: Parameter 5
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureSensor.Thermistor.TemperatureT3 := 0;		 // Temperature sensor: Parameter 6
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureSensor.Thermistor.TemperatureT4 := 0;		 // Temperature sensor: Parameter 7
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureSensor.Thermistor.TemperatureT5 := 0;		 // Temperature sensor: Parameter 8
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureSensor.Thermistor.TemperatureT6 := 0;		 // Temperature sensor: Parameter 9
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureSensor.Thermistor.TemperatureT7 := 0;		 // Temperature sensor: Parameter 10
	// WARNING: MOTOR_THERMAL_CONST is not supported with MOTOR_COMPATIBILITY = 0x0203. Use MOTOR_TAU_THERM instead! Old value was := 0;		 // Unit (s) Motor: Thermal time constant (for MOTOR_COMPATIBILITY 0x0202)
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.NominalVoltage := 230.9;		 // Unit (V) Motor: Rated voltage
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.NominalSpeed := 1395;		 // Unit (1/min) Motor: Rated speed
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.MaximumSpeed := 2800;		 // Unit (1/min) Motor: Maximum speed
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StallTorque := 20.54;		 // Unit (Nm) Motor: Stall torque
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.NominalTorque := 20.54;		 // Unit (Nm) Motor: Rated torque
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.PeakTorque := 107.63;		 // Unit (Nm) Motor: Peak torque
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StallCurrent := 12.3;		 // Unit (A) Motor: Stall current
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.NominalCurrent := 12.3;		 // Unit (A) Motor: Rated current
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.PeakCurrent := 54.11;		 // Unit (A) Motor: Peak current
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureModel.CurrentAndSpeedBased.CalculationMethod.SecondOrderThermalNetwork.WindingCrossSection := 0.003464;		 // Unit (mm^2) Motor: Line cross section
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorResistance := 0.774;		 // Unit (Ohm) Motor: Stator resistance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.StatorInductance := 3.98;		 // Value was converted from H to mH Motor: Stator inductance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.MomentOfInertia := 0.0;		 // Value was converted from kg*m^2 to kg*cm^2 Motor: Moment of inertia
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorResistance := 0.774;		 // Unit (Ohm) Motor: Rotor resistance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.RotorInductance := 3.98;		 // Value was converted from H to mH Motor: Rotor inductance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.MutualInductance := 67.0;		 // Value was converted from H to mH Motor: Mutual inductance
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.MagnetizingCurrent := 5.92;		 // Unit (A) Motor: Magnetizing current
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureModel.CurrentAndSpeedBased.CalculationMethod.SecondOrderThermalNetwork.ThermalTimeConstant := 30;		 // Unit (s) Motor: Thermal time constant
	AxisMotorCfg.ParMotorInduction.Motor.StarEquivalentCircuit.TemperatureModel.CurrentAndSpeedBased.LimitTemperature := 110;		 // Unit (Grad C) Temperature sensor: Limit temperature
END_ACTION
