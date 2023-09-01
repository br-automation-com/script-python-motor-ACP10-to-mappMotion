#### Conversion table for Induction motors
The conversion table was created to the best of our knowledge but there is no guaranty that it is 100% correct. Please double check critical values in the Automation Studio help before using them.
If you find any errors or have any suggestions please create an [issue](https://github.com/br-automation-com/mappMotion-Samples/issues) on github. 

The table uses the following notation:

<table style="width: 100%">
    <colgroup>
       <col span="1" style="width: 60%;">
    </colgroup>
    <tr>
        <td>
            <img src="../refs/ind_motor_1.png" />
        </td>
        <td>
            The configuration column shows the Automation Studio configuration. Each branch in the tree is presented as a list. For example the value shown in the left picture is written as:
            <br/><br/>
            Induction<br/>Motor<br/>Number of pole pairs            
        </td>
    </tr>
    <tr>
        <td>
            <img src="../refs/ind_motor_2.png" />
        </td>
        <td>
            The structure column shows the same value in code. Each element of the structure is presented as a list. For example the value shown in the left picture is written as:
            <br/><br/>
            Motor<br/>PowerRatingPlate<br/>NumberOfPolePairs
        </td>Switching<br/>PTC thermistor
    </tr>
</table>

| Configuration name | Structure name | Constant | Par ID | Note |
|---|---|---|---|---|
| Induction<br/>Motor<br/>Nominal speed | Motor<br/>PowerRatingPlate<br/>NominalSpeed | MOTOR_SPEED_RATED | 50 | Power rating plate |
| Induction<br/>Motor<br/>Nominal frequency | Motor<br/>PowerRatingPlate<br/>NominalFrequency | MOTOR_FREQ_RATED | | Power rating plate |
| Induction<br/>Motor<br/>Nominal voltage | Motor<br/>PowerRatingPlate<br/>NominalVoltage | MOTOR_VOLTAGE_RATED | 48 | Power rating plate |
| Induction<br/>Motor<br/>Nominal current | Motor<br/>PowerRatingPlate<br/>NominalCurrent | MOTOR_CURR_RATED | 57 | Power rating plate |
| Induction<br/>Motor<br/>Power Factor | Motor<br/>PowerRatingPlate<br/>PowerFactor | MOTOR_POWER_FACTOR | | Power rating plate |
| Induction<br/>Motor<br/>Nominal ambient temperature | Motor<br/>PowerRatingPlate<br/>NominalAmbientTemperature | MOTOR_AMB_TEMP_RATED | 865 ||
| Induction<br/>Motor<br/>Optional Parameters<br/>Number of pole pairs | Motor<br/>PowerRatingPlate<br/>OptionalParameter<br/>NumberOfPolePairs | MOTOR_POLEPAIRS | 47 | Power rating plate |
| Induction<br/>Motor<br/>Optional Parameters<br/>Maximum speed | Motor<br/>PowerRatingPlate<br/>OptionalParameter<br/>MaximumSpeed | MOTOR_SPEED_MAX | 51 | Power rating plate |
| Induction<br/>Motor<br/>Optional Parameters<br/>Stall current | Motor<br/>PowerRatingPlate<br/>OptionalParameter<br/>StallCurrent | MOTOR_CURR_STALL | 56 | Power rating plate |
| Induction<br/>Motor<br/>Optional Parameters<br/>Peak current | Motor<br/>PowerRatingPlate<br/>OptionalParameter<br/>PeakCurrent | MOTOR_CURR_MAX | 58 | Power rating plate |
| Induction<br/>Motor<br/>Optional Parameters<br/>Magnetizing current | Motor<br/>PowerRatingPlate<br/>OptionalParameter<br/>MagnetizingCurrent | MOTOR_MAGNETIZING_CURR | 59 | Power rating plate |
| Induction<br/>Motor<br/>Optional Parameters<br/>Nominal Power | Motor<br/>PowerRatingPlate<br/>OptionalParameter<br/>NominalPower | MOTOR_POWER_RATED || Power rating plate |
| Induction<br/>Motor<br/>Optional Parameters<br/>Nominal torque | Motor<br/>PowerRatingPlate<br/>OptionalParameter<br/>NominalTorque | MOTOR_TORQ_RATED | 53 | Power rating plate |
| Induction<br/>Motor<br/>Optional Parameters<br/>Stall torque | Motor<br/>PowerRatingPlate<br/>OptionalParameter<br/>StallTorque | MOTOR_TORQ_STALL | 52 | Power rating plate |
| Induction<br/>Motor<br/>Optional Parameters<br/>Peak torque | Motor<br/>PowerRatingPlate<br/>OptionalParameter<br/>PeakTorque | MOTOR_TORQ_MAX | 54 | Power rating plate |
| Induction<br/>Motor<br/>Optional Parameters<br/>Moment of inertia | Motor<br/>PowerRatingPlate<br/>OptionalParameter<br/>MomentOfInertia | MOTOR_INERTIA | 62 |  Power rating plate<br/>AS uses kgcm^2^<br/>PAR ID uses kgm^2^ |
| Induction<br/>Motor<br/>Nominal speed | Motor<br/>StarEquivalentCircuit<br/>NominalSpeed | MOTOR_SPEED_RATED | 50 | Star equivalent circuit |
| Induction<br/>Motor<br/>Maximum speed | Motor<br/>StarEquivalentCircuit<br/>MaximumSpeed | MOTOR_SPEED_MAX | 51 | Star equivalent circuit |
| Induction<br/>Motor<br/>Nominal voltage | Motor<br/>StarEquivalentCircuit<br/>NominalVoltage | MOTOR_VOLTAGE_RATED | 48 | Star equivalent circuit |
| Induction<br/>Motor<br/>Nominal current | Motor<br/>StarEquivalentCircuit<br/>NominalCurrent | MOTOR_CURR_RATED | 57 | Star equivalent circuit |
| Induction<br/>Motor<br/>Stall current | Motor<br/>StarEquivalentCircuit<br/>StallCurrent | MOTOR_CURR_STALL | 56 | Star equivalent circuit |
| Induction<br/>Motor<br/>Peak current | Motor<br/>StarEquivalentCircuit<br/>PeakCurrent | MOTOR_CURR_MAX | 58 | Star equivalent circuit |
| Induction<br/>Motor<br/>Magnetizing current | Motor<br/>StarEquivalentCircuit<br/>MagnetizingCurrent | MOTOR_MAGNETIZING_CURR | 59 | Star equivalent circuit |
| Induction<br/>Motor<br/>Nominal torque | Motor<br/>StarEquivalentCircuit<br/>NominalTorque | MOTOR_TORQ_RATED | 53 | Star equivalent circuit |
| Induction<br/>Motor<br/>Stall torque | Motor<br/>StarEquivalentCircuit<br/>StallTorque | MOTOR_TORQ_STALL | 52 | Star equivalent circuit |
| Induction<br/>Motor<br/>Peak torque | Motor<br/>StarEquivalentCircuit<br/>PeakTorque | MOTOR_TORQ_MAX | 54 | Star equivalent circuit |
| Induction<br/>Motor<br/>Stator resistance | Motor<br/>StarEquivalentCircuit<br/>StatorResistance | MOTOR_STATOR_RESISTANCE | 60 | Star equivalent circuit |
| Induction<br/>Motor<br/>Rotor resistance | Motor<br/>StarEquivalentCircuit<br/>RotorResistance | MOTOR_ROTOR_RESISTANCE | 76 | Star equivalent circuit |
| Induction<br/>Motor<br/>Stator inductance | Motor<br/>StarEquivalentCircuit<br/>StatorInductance | MOTOR_STATOR_INDUCTANCE | 61 | Star equivalent circuit |
| Induction<br/>Motor<br/>Rotor inductance | Motor<br/>StarEquivalentCircuit<br/>RotorInductance | MOTOR_ROTOR_INDUCTANCE | 77 | Star equivalent circuit |
| Induction<br/>Motor<br/>Mutual inductance | Motor<br/>StarEquivalentCircuit<br/>MutualInductance | MOTOR_MUTUAL_INDUCTANCE | 78 | Star equivalent circuit |
| Induction<br/>Motor<br/>Moment of inertia | Motor<br/>StarEquivalentCircuit<br/>MomentOfInertia | MOTOR_INERTIA | 62 |  Star equivalent circuit<br/><br/>AS uses kgcm^2^<br/>PAR ID uses kgm^2^ |
| Induction<br/>Motor<br/>Nominal ambient temperature | Motor<br/>StarEquivalentCircuit<br/>NominalAmbientTemperature | MOTOR_AMB_TEMP_RATED | 865 ||
| Induction<br/>Motor<br/>Voltage limitation<br/>Maximum DC bus voltage | Motor<br/>StarEquivalentCircuit<br/>VoltageLimitation<br/>Used<br/>MaximumDCBusVoltage | MOTOR_UDC_MAX | 1641 | Star equivalent circuit |
| Induction<br/>Motor<br/>Temperature sensor<br/>Limit temperature | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>LimitTemperature | MOTOR_TEMPSENS_LIM | 1216 | Thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>Temperature sensor interface | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureSensorInterface |  |  | Thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>ResistanceR0 | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>ResistanceR0 | MOTOR_TEMPSENS_PAR1 | 64 | Thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>ResistanceR7 | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>ResistanceR7 | MOTOR_TEMPSENS_PAR2 | 65 | Thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>TemperatureT0 | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT0 | MOTOR_TEMPSENS_PAR3 | 66 | Thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>TemperatureT1 | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT1 | MOTOR_TEMPSENS_PAR4 | 67 | Thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>TemperatureT2 | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT2 | MOTOR_TEMPSENS_PAR5 | 68 | Thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>TemperatureT3 | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT3 | MOTOR_TEMPSENS_PAR6 | 69 | Thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>TemperatureT4 | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT4 | MOTOR_TEMPSENS_PAR7 | 70 | Thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>TemperatureT5 | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT5 | MOTOR_TEMPSENS_PAR8 | 71 | Thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>TemperatureT6 | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT6 | MOTOR_TEMPSENS_PAR9 | 72 | Thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>TemperatureT7 | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT7 | MOTOR_TEMPSENS_PAR10 | 73 | Thermistor 
| Induction<br/>Motor<br/>Temperature sensor<br/>Temperature sensor interface | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureSensorInterface |  |  | Switching<br/>PTC thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>Nominal response resistance | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>SwitchingPTCThermistor<br/>NominalResponseTemperature | MOTOR_TEMPSENS_PAR1 | 64 | Switching<br/>PTC thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>Minimum resistance | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>SwitchingPTCThermistor<br/>MinimumResistance | MOTOR_TEMPSENS_PAR2 | 65 | Switching<br/>PTC thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>TemperaNominal response temperature | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>SwitchingPTCThermistor<br/>NominalResponseTemperature | MOTOR_TEMPSENS_PAR3 | 66 | Switching<br/>PTC thermistor |
| Induction<br/>Motor<br/>Temperature sensor<br/>Temperature sensor interface | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermoswitches<br/>TemperatureSensorInterface |  |  | Thermoswitches |
| Induction<br/>Motor<br/>Temperature sensor<br/>Nominal response resistance | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermoswitches<br/>NominalResponseTemperature | MOTOR_TEMPSENS_PAR1 | 64 | Thermoswitches |
| Induction<br/>Motor<br/>Temperature sensor<br/>Minimum resistance | Motor<br/>PowerRatingPlate<br/>TemperatureSensor<br/>Thermoswitches<br/>SwitchingStateOnOvertemperature | MOTOR_TEMPSENS_PAR10 | 73 | Thermoswitches |
| Induction<br/>Motor<br/>Temperature model<br/>Current-based<br/>Limit temperature | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentBased<br/>LimitTemperature | MOTOR_WIND_TEMP_MAX | 74 | Current-based |
| Induction<br/>Motor<br/>Temperature model<br/>Current-based<br/>Winding cross section | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentBased<br/>WindingCrossSection | MOTOR_WIND_CROSS_SECT | 59 | Current-based |
| Induction<br/>Motor<br/>Temperature model<br/>Current-based<br/>Thermal tripping time | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentBased<br/>ThermalTrippingTime | PIDENT_THERM_TRIP_TIME | 1283 | Current-based |
| Induction<br/>Motor<br/>Temperature model<br/>Current-based<br/>Thermal time constant | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentBased<br/>ThermalTimeConstant | MOTOR_TAU_THERM | 849 | Current-based |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Limit temperature | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>LimitTemperature | MOTOR_WIND_TEMP_MAX | 74 | Current- and speed-based |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Winding cross section | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>SecondOrderThermalNetwork<br/>WindingCrossSection | MOTOR_WIND_CROSS_SECT | 74 | Current- and speed-based<br/><br/>Second-order thermal network |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal tripping time | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>SecondOrderThermalNetwork<br/>CalculationMethod<br/>SecondOrderThermalNetwork<br/>ThermalTrippingTime | PIDENT_THERM_TRIP_TIME | 1283 | Current- and speed-based<br/><br/>Second-order thermal network |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal time constant | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>SecondOrderThermalNetwork<br/>ThermalTimeConstant | MOTOR_TAU_THERM | 849 | Current- and speed-based<br/><br/>Second-order thermal network |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal resistance 1 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>ThermalResistance1 | MOTOR_TEMPMODEL_RES1 | 1211 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal capacity 1 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>ThermalCapacity1 | MOTOR_TEMPMODEL_CAP1 | 1212 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal resistance 2 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>ThermalResistance2 | MOTOR_TEMPMODEL_RES2 | 1213 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal capacity 2 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>ThermalCapacity2 | MOTOR_TEMPMODEL_CAP2 | 1214 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Stator thermal loss 1 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>StatorThermalLoss1 | MOTOR_TEMPMODEL_LOSS1 | 1489 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Stator thermal loss 2 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>StatorThermalLoss2 | MOTOR_TEMPMODEL_LOSS2 | 1489 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal resistance 1 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>ThermalResistance1 | MOTOR_TEMPMODEL_RES1 | 1211 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal capacity 1 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>ThermalCapacity1 | MOTOR_TEMPMODEL_CAP1 | 1212 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal resistance 2 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>ThermalResistance2 | MOTOR_TEMPMODEL_RES2 | 1213 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal capacity 2 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>ThermalCapacity2 | MOTOR_TEMPMODEL_CAP2 | 1214 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal resistance 3 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>ThermalResistance3 | MOTOR_TEMPMODEL_RES3 | 1653 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Stator thermal loss 1 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>StatorThermalLoss1 | MOTOR_TEMPMODEL_LOSS1_W | 1654 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Stator thermal loss 2 | Motor<br/>PowerRatingPlate<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>StatorThermalLoss2 | MOTOR_TEMPMODEL_LOSS2_W | 1655 | Current- and speed-based<br/>Fourth-order thermal network with couplings |
| Induction<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Reference temperature | | | | Current- and speed-based |
| Induction<br/>Brake<br/>Nominal current | Brake<br/>Used<br/>NominalCurrent | MOTOR_BRAKE_CURR_RATED | 42 | |
| Induction<br/>Brake<br/>Nominal torque | Brake<br/>Used<br/>NominalTorque | MOTOR_BRAKE_TORQ_RATED | 43 | |
| Induction<br/>Brake<br/>Activation delay | Brake<br/>Used<br/>ActivationDelay | MOTOR_BRAKE_ON_TIME | 44 | |
| Induction<br/>Brake<br/>Release delay | Brake<br/>Used<br/>ReleaseDelay | MOTOR_BRAKE_OFF_TIME | 45 | |
| Induction<br/>Brake<br/>Moment of inertia | Brake<br/>Used<br/>MomentOfInertia | MOTOR_BRAKE_INERTIA | | |
| Induction<br/>Brake<br/>Control mode | Brake<br/>Used<br/>ControlMode | | | Voltage controlled |
| Induction<br/>Brake<br/>Control mode<br/>Release voltage | Brake<br/>Used<br/>ControlMode<br/>VoltageControlled<br/>ReleaseVoltage | MOTOR_BRAKE_VOLT_REL | 1504 | Voltage controlled |
| Induction<br/>Brake<br/>Control mode<br/>Hold voltage | Brake<br/>Used<br/>ControlMode<br/>VoltageControlled<br/>HoldVoltage | MOTOR_BRAKE_VOLT_HOLD | 1505 | Voltage controlled |
| Induction<br/>Brake<br/>Limits<br/>Maximum voltage | Brake<br/>Used<br/>Limits<br/>Used<br/>MaximumVoltage | MOTOR_BRAKE_VOLT_MAX | 1506 | Voltage controlled |
| Induction<br/>Encoder<br/>Proof of fatigue strength |  | MOTOR_ENCOD_ATTR | 652 | |
| Induction<br/>Encoder<br/>Moment of inertia | Encoder<br/>Used<br/>MomentOfInertia | MOTOR_ENCOD_INERTIA | | |
| Induction<br/>Encoder<br/>Temperature sensor<br/>Limit temperature | Encoder<br/>Used<br/>TemperatureSensor<br/>Used<br/>LimitTemperature | MOTOR_ENCOD_TEMP_LIM | 1209 | |
| Induction<br/>Gearbox<br/>Gear ratio<br/>input | Gearbox<br/>Used<br/>GearRatio | | | Only one value in code |
| Induction<br/>Gearbox<br/>Gear ratio<br/>output | Gearbox<br/>Used<br/>GearRatio | | | Only one value in code |
| Induction<br/>Gearbox<br/>Maximum input speed | Gearbox<br/>Used<br/>MaximumInputSpeed | MOTORGEAR_SPEED_MAX | 1695 | |
| Induction<br/>Gearbox<br/>Nominal output torque | Gearbox<br/>Used<br/>NominalOutputTorque | MOTORGEAR_TORQ_NOM | 1693 | |
| Induction<br/>Gearbox<br/>Peak output torque | Gearbox<br/>Used<br/>PeakOutputTorque | MOTORGEAR_TORQ_MAX | 1694 | |
| Induction<br/>Gearbox<br/>Moment of inertia | Gearbox<br/>Used<br/>MomentOfInertia | MOTORGEAR_INERTIA | | |
