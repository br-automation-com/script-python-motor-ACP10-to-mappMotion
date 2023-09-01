#### Conversion table for synchronous motors
The conversion table was created to the best of our knowledge but there is no guaranty that it is 100% correct. Please double check critical values in the Automation Studio help before using them.
If you find any errors or have any suggestions please create an [issue](https://github.com/br-automation-com/mappMotion-Samples/issues) on github. 

The table uses the following notation:

<table style="width: 100%">
    <colgroup>
       <col span="1" style="width: 60%;">
    </colgroup>
    <tr>
        <td>
            <img src="../refs/sync_motor_1.png" />
        </td>
        <td>
            The configuration column shows the Automation Studio configuration. Each branch in the tree is presented as a list. For example the value shown in the left picture is written as:
            <br/><br/>
            Synchronous<br/>Motor<br/>Number of pole pairs            
        </td>
    </tr>
    <tr>
        <td>
            <img src="../refs/sync_motor_2.png" />
        </td>
        <td>
            The structure column shows the same value in code. Each element of the structure is presented as a list. For example the value shown in the left picture is written as:
            <br/><br/>
            Motor<br/>Default<br/>NumberOfPolePairs
        </td>
    </tr>
</table>

| Configuration name | Structure name | Constant | Par ID | Note |
|---|---|---|---|---|
| Synchronous<br/>Motor<br/>Number of pole pairs | Motor<br/>Default<br/>NumberOfPolePairs | MOTOR_POLEPAIRS | 47 ||
| Synchronous<br/>Motor<br/>Nominal speed | Motor<br/>Default<br/>NominalSpeed | MOTOR_SPEED_RATED | 50 ||
| Synchronous<br/>Motor<br/>Maximum speed | Motor<br/>Default<br/>MaximumSpeed | MOTOR_SPEED_MAX | 51 ||
| Synchronous<br/>Motor<br/>Nominal voltage | Motor<br/>Default<br/>NominalVoltage | MOTOR_VOLTAGE_RATED | 48 ||
| Synchronous<br/>Motor<br/>Nominal current | Motor<br/>Default<br/>NominalCurrent | MOTOR_CURR_RATED | 57 ||
| Synchronous<br/>Motor<br/>Stall current | Motor<br/>Default<br/>StallCurrent | MOTOR_CURR_STALL | 56 ||
| Synchronous<br/>Motor<br/>Peak current | Motor<br/>Default<br/>PeakCurrent | MOTOR_CURR_MAX | 58 ||
| Synchronous<br/>Motor<br/>Nominal torque | Motor<br/>Default<br/>NominalTorque | MOTOR_TORQ_RATED | 53 ||
| Synchronous<br/>Motor<br/>Stall torque | Motor<br/>Default<br/>StallTorque | MOTOR_TORQ_STALL | 52 ||
| Synchronous<br/>Motor<br/>Peak torque | Motor<br/>Default<br/>PeakTorque | MOTOR_TORQ_MAX | 54 ||
| Synchronous<br/>Motor<br/>Voltage constant | Motor<br/>Default<br/>VoltageConstant | MOTOR_VOLTAGE_CONST | 49 ||
| Synchronous<br/>Motor<br/>Torque constant | Motor<br/>Default<br/>TorqueConstant | MOTOR_TORQ_CONST | 55 ||
| Synchronous<br/>Motor<br/>Stator resistance | Motor<br/>Default<br/>StatorResistance | MOTOR_STATOR_RESISTANCE | 60 ||
| Synchronous<br/>Motor<br/>Stator inductance | Motor<br/>Default<br/>StatorInductance | MOTOR_STATOR_INDUCTANCE | 61 | AS uses mH<br/>PAR ID uses H |
| Synchronous<br/>Motor<br/>Moment of inertia | Motor<br/>Default<br/>MomentOfInertia | MOTOR_INERTIA | 62 | <br/>AS uses kgcm^2^<br/>PAR ID uses kgm^2^ |
| Synchronous<br/>Motor<br/>Nominal ambient temperature | Motor<br/>Default<br/>NominalAmbientTemperature | MOTOR_AMB_TEMP_RATED | 865 ||
| Synchronous<br/>Motor<br/>Voltage limitation<br/>Maximum DC bus voltage | Motor<br/>Default<br/>MaximumDCBusVoltage | MOTOR_UDC_MAX | 1641 ||
| Synchronous<br/>Motor<br/>Encoder mounting<br/>Angle<br/>Commutation offset | Motor<br/>Default<br/>EncoderMounting<br/>Angle<br/>UserDefined<br/>CommutationOffset | MOTOR_COMMUT_OFFSET | 63 | User-Defined |
| Synchronous<br/>Motor<br/>Encoder mounting<br/>Angle<br/>Automatic identification | Motor<br/>Default<br/>EncoderMounting<br/>Angle<br/>Undefined<br/>AutomaticIdentification<br/>Saturation<br/>PhasingCurrent | PHASING_CURR | 275 | Undefined<br/><br/>Saturation<br/>Dither<br/>Dither2 |
| Synchronous<br/>Motor<br/>Encoder mounting<br/>Angle<br/>Automatic identification | Motor<br/>Default<br/>EncoderMounting<br/>Angle<br/>Undefined<br/>AutomaticIdentification<br/>Dither<br/>PhasingTime | PHASING_TIME | 874 | Undefined<br/><br/>Dither<br/>Dither2 |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>Limit temperature | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>LimitTemperature | MOTOR_TEMPSENS_LIM | 1216 | Thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>Temperature sensor interface | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureSensorInterface |  |  | Thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>ResistanceR0 | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>ResistanceR0 | MOTOR_TEMPSENS_PAR1 | 64 | Thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>ResistanceR7 | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>ResistanceR7 | MOTOR_TEMPSENS_PAR2 | 65 | Thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>TemperatureT0 | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT0 | MOTOR_TEMPSENS_PAR3 | 66 | Thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>TemperatureT1 | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT1 | MOTOR_TEMPSENS_PAR4 | 67 | Thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>TemperatureT2 | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT2 | MOTOR_TEMPSENS_PAR5 | 68 | Thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>TemperatureT3 | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT3 | MOTOR_TEMPSENS_PAR6 | 69 | Thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>TemperatureT4 | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT4 | MOTOR_TEMPSENS_PAR7 | 70 | Thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>TemperatureT5 | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT5 | MOTOR_TEMPSENS_PAR8 | 71 | Thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>TemperatureT6 | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT6 | MOTOR_TEMPSENS_PAR9 | 72 | Thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>TemperatureT7 | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureT7 | MOTOR_TEMPSENS_PAR10 | 73 | Thermistor 
| Synchronous<br/>Motor<br/>Temperature sensor<br/>Temperature sensor interface | Motor<br/>Default<br/>TemperatureSensor<br/>Thermistor<br/>TemperatureSensorInterface |  |  | Switching<br/>PTC thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>Nominal response resistance | Motor<br/>Default<br/>TemperatureSensor<br/>SwitchingPTCThermistor<br/>NominalResponseTemperature | MOTOR_TEMPSENS_PAR1 | 64 | Switching<br/>PTC thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>Minimum resistance | Motor<br/>Default<br/>TemperatureSensor<br/>SwitchingPTCThermistor<br/>MinimumResistance | MOTOR_TEMPSENS_PAR2 | 65 | Switching<br/>PTC thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>TemperaNominal response temperature | Motor<br/>Default<br/>TemperatureSensor<br/>SwitchingPTCThermistor<br/>NominalResponseTemperature | MOTOR_TEMPSENS_PAR3 | 66 | Switching<br/>PTC thermistor |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>Temperature sensor interface | Motor<br/>Default<br/>TemperatureSensor<br/>Thermoswitches<br/>TemperatureSensorInterface |  |  | Thermoswitches |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>Nominal response resistance | Motor<br/>Default<br/>TemperatureSensor<br/>Thermoswitches<br/>NominalResponseTemperature | MOTOR_TEMPSENS_PAR1 | 64 | Thermoswitches |
| Synchronous<br/>Motor<br/>Temperature sensor<br/>Minimum resistance | Motor<br/>Default<br/>TemperatureSensor<br/>Thermoswitches<br/>SwitchingStateOnOvertemperature | MOTOR_TEMPSENS_PAR10 | 73 | Thermoswitches |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current-based<br/>Limit temperature | Motor<br/>Default<br/>TemperatureModel<br/>CurrentBased<br/>LimitTemperature | MOTOR_WIND_TEMP_MAX | 74 | Current-based |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current-based<br/>Winding cross section | Motor<br/>Default<br/>TemperatureModel<br/>CurrentBased<br/>WindingCrossSection | MOTOR_WIND_CROSS_SECT | 59 | Current-based |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current-based<br/>Thermal tripping time | Motor<br/>Default<br/>TemperatureModel<br/>CurrentBased<br/>ThermalTrippingTime | PIDENT_THERM_TRIP_TIME | 1283 | Current-based |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current-based<br/>Thermal time constant | Motor<br/>Default<br/>TemperatureModel<br/>CurrentBased<br/>ThermalTimeConstant | MOTOR_TAU_THERM | 849 | Current-based |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Limit temperature | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>LimitTemperature | MOTOR_WIND_TEMP_MAX | 74 | Current- and speed-based |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Winding cross section | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>SecondOrderThermalNetwork<br/>WindingCrossSection | MOTOR_WIND_CROSS_SECT | 74 | Current- and speed-based<br/><br/>Second-order thermal network |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal tripping time | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>SecondOrderThermalNetwork<br/>CalculationMethod<br/>SecondOrderThermalNetwork<br/>ThermalTrippingTime | PIDENT_THERM_TRIP_TIME | 1283 | Current- and speed-based<br/><br/>Second-order thermal network |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal time constant | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>SecondOrderThermalNetwork<br/>ThermalTimeConstant | MOTOR_TAU_THERM | 849 | Current- and speed-based<br/><br/>Second-order thermal network |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal resistance 1 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>ThermalResistance1 | MOTOR_TEMPMODEL_RES1 | 1211 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal capacity 1 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>ThermalCapacity1 | MOTOR_TEMPMODEL_CAP1 | 1212 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal resistance 2 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>ThermalResistance2 | MOTOR_TEMPMODEL_RES2 | 1213 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal capacity 2 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>ThermalCapacity2 | MOTOR_TEMPMODEL_CAP2 | 1214 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Stator thermal loss 1 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>StatorThermalLoss1 | MOTOR_TEMPMODEL_LOSS1 | 1489 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Stator thermal loss 2 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderThermalNetwork<br/>StatorThermalLoss2 | MOTOR_TEMPMODEL_LOSS2 | 1489 | Current- and speed-based<br/><br/>Fourth-order thermal network |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal resistance 1 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>ThermalResistance1 | MOTOR_TEMPMODEL_RES1 | 1211 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal capacity 1 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>ThermalCapacity1 | MOTOR_TEMPMODEL_CAP1 | 1212 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal resistance 2 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>ThermalResistance2 | MOTOR_TEMPMODEL_RES2 | 1213 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal capacity 2 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>ThermalCapacity2 | MOTOR_TEMPMODEL_CAP2 | 1214 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Thermal resistance 3 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>ThermalResistance3 | MOTOR_TEMPMODEL_RES3 | 1653 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Stator thermal loss 1 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>StatorThermalLoss1 | MOTOR_TEMPMODEL_LOSS1_W | 1654 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Synchronous<br/>Motor<br/>Temperature model<br/>Current- and speed-based<br/>Calculation method<br/>Stator thermal loss 2 | Motor<br/>Default<br/>TemperatureModel<br/>CurrentAndSpeedBased<br/>CalculationMethod<br/>FourthOrderWithCouplings<br/>StatorThermalLoss2 | MOTOR_TEMPMODEL_LOSS2_W | 1655 | Current- and speed-based<br/><br/>Fourth-order thermal network with couplings |
| Synchronous<br/>Brake<br/>Nominal current | Brake<br/>Used<br/>NominalCurrent | MOTOR_BRAKE_CURR_RATED | 42 | |
| Synchronous<br/>Brake<br/>Nominal torque | Brake<br/>Used<br/>NominalTorque | MOTOR_BRAKE_TORQ_RATED | 43 | |
| Synchronous<br/>Brake<br/>Activation delay | Brake<br/>Used<br/>ActivationDelay | MOTOR_BRAKE_ON_TIME | 44 | |
| Synchronous<br/>Brake<br/>Release delay | Brake<br/>Used<br/>ReleaseDelay | MOTOR_BRAKE_OFF_TIME | 45 | |
| Synchronous<br/>Brake<br/>Moment of inertia | Brake<br/>Used<br/>MomentOfInertia | MOTOR_BRAKE_INERTIA | | |
| Synchronous<br/>Brake<br/>Control mode<br/>Release voltage | Brake<br/>Used<br/>ControlMode<br/>VoltageControlled<br/>ReleaseVoltage | MOTOR_BRAKE_VOLT_REL | 1504 | Voltage controlled |
| Synchronous<br/>Brake<br/>Control mode<br/>Hold voltage | Brake<br/>Used<br/>ControlMode<br/>VoltageControlled<br/>HoldVoltage | MOTOR_BRAKE_VOLT_HOLD | 1505 | Voltage controlled |
| Synchronous<br/>Brake<br/>Limits<br/>Maximum voltage | Brake<br/>Used<br/>Limits<br/>Used<br/>MaximumVoltage | MOTOR_BRAKE_VOLT_MAX | 1506 | Voltage controlled |
| Synchronous<br/>Encoder<br/>Proof of fatigue strength |  | MOTOR_ENCOD_ATTR | 652 | |
| Synchronous<br/>Encoder<br/>Moment of inertia | Encoder<br/>Used<br/>MomentOfInertia | MOTOR_ENCOD_INERTIA | | |
| Synchronous<br/>Encoder<br/>Temperature sensor<br/>Limit temperature | Encoder<br/>Used<br/>TemperatureSensor<br/>Used<br/>LimitTemperature | MOTOR_ENCOD_TEMP_LIM | 1209 | |
| Synchronous<br/>Gearbox<br/>Gear ratio<br/>input | Gearbox<br/>Used<br/>GearRatio | | | Only one value in code |
| Synchronous<br/>Gearbox<br/>Gear ratio<br/>output | Gearbox<br/>Used<br/>GearRatio | | | Only one value in code |
| Synchronous<br/>Gearbox<br/>Maximum input speed | Gearbox<br/>Used<br/>MaximumInputSpeed | MOTORGEAR_SPEED_MAX | 1695 | |
| Synchronous<br/>Gearbox<br/>Nominal output torque | Gearbox<br/>Used<br/>NominalOutputTorque | MOTORGEAR_TORQ_NOM | 1693 | |
| Synchronous<br/>Gearbox<br/>Peak output torque | Gearbox<br/>Used<br/>PeakOutputTorque | MOTORGEAR_TORQ_MAX | 1694 | |
| Synchronous<br/>Gearbox<br/>Moment of inertia | Gearbox<br/>Used<br/>MomentOfInertia | MOTORGEAR_INERTIA | | |
