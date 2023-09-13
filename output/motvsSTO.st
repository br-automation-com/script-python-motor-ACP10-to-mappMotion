// --------------------------------------------------------------- 
// Auto converted with version 1 on 2023-09-13 13:47:18.285595
// --------------------------------------------------------------- 
ACTION motvsSTO:
	// INFO: Motor type is synchronous
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TemperatureModel.Type := mcMMTM_NOT_USE; 	// Temperature model is turned off
	// WARNING: Motor compatibility (MOTOR_COMPATIBILITY / 31) is set fixed to 0x0203. Old value was := 0x0203;		 // Motor: Software compatibility
	// WARNING: Winding connection (MOTOR_WIND_CONNECT / 46) is set fixed to 1. Old values was := 1;		 // Motor: Winding connection
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NumberOfPolePairs := 7;		 // Motor: Number of pole-pairs
	AxisMotorCfg.ParMotorSynchronous.Brake.Type := mcMSB_USE;      // Enable motor brake
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.NominalCurrent := 1.1;		 // Unit (A) Motor holding brake: Rated current
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.NominalTorque := 32;		 // Unit (Nm) Motor holding brake: Rated torque
	AxisMotorCfg.ParMotorSynchronous.Brake.Used.ActivationDelay := 0.08;		 // Unit (s) Motor holding brake: Engaging delay
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
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.VoltageConstant := 140;		 // Unit (mV*min) Motor: Voltage constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalSpeed := 3000;		 // Unit (1/min) Motor: Rated speed
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.MaximumSpeed := 3000;		 // Unit (1/min) Motor: Maximum speed
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StallTorque := 30.2;		 // Unit (Nm) Motor: Stall torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalTorque := 21.3;		 // Unit (Nm) Motor: Rated torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.PeakTorque := 104;		 // Unit (Nm) Motor: Peak torque
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.TorqueConstant := 1.5;		 // Unit (Nm/A) Motor: Torque constant
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StallCurrent := 19.5;		 // Unit (A) Motor: Stall current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.NominalCurrent := 14.2;		 // Unit (A) Motor: Rated current
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.PeakCurrent := 87;		 // Unit (A) Motor: Peak current
	// ERROR: Temperature model does not match parameter MOTOR_WIND_CROSS_SECT
 := 0;		 // Unit (mm²) Motor: Line cross section (-> Wert aus Vergleich mit B&R Antrieben abgeschätzt)
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StatorResistance := 0.33;		 // Unit (Ohm) Motor: Stator resistance
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.StatorInductance := 0.0048;		 // Unit (Henry) Motor: Stator inductance
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.MomentOfInertia := 0.0034;		 // Unit (kgm²) Motor: Moment of inertia
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.Type := mcMSMDEMA_USRDEF;     // Encoder mounting is user defined
	AxisMotorCfg.ParMotorSynchronous.Motor.Default.EncoderMounting.Angle.UserDefined.CommutationOffset := 3.1415926;		 // Unit (rad) Motor: Commutation offset
	// ERROR: Temperature model does not match parameter MOTOR_TAU_THERM
 := 3000;		 // Unit (s) Motor: Thermal time constant
	// ERROR: Temperature model does not match parameter MOTOR_WIND_TEMP_MAX
 := 155;		 // Unit (°C) Temperature sensor: Limit temperature
END_ACTION
