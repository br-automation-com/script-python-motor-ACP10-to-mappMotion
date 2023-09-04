## Introduction
This script converts ACP10 motor table into a variable structure that can be used with mappMotion. The conversion is done automatically and may contain errors or miss some data. It is absolutely crucial to verify the values after the conversion. Make sure to check the comments in the corresponding files since they contain import information about the converted data.

## Usage
Copy one or more motor table files into the directory "apt". Open a command window and execute the following command to start the conversion.

```
python ./start.py
```

The script generates a corresponding structure text file with an action that assigns all previous parameters to a variable structure with the name ParMotorSynchronous (McCfgMotSynType) for synchronous motors and ParMotorInduction (McCfgMotInductType) for induction motors. The variable types are part of the mappMotion library McAcpAx. The variables can be connected to the function block MC_BR_ProcessConfig (9c2eadae-8494-4e9a-b305-0afa2dabf1d4) that changes the motor configuration.

## Requirements
* Python 3.x

## Additional Information

For a conversion between ACP10 parameters and mappMotions also see [this](./refs/refs_motor_conv_sync.md) and [this](./refs/refs_motor_conv_ind.md) table.

For a complete sample how to change the motor parameters follow [this](https://github.com/br-automation-com/mappMotion-Samples) link.