---
support_agent: false
---
# Features

<!-- agent:begin features -->
## Connect ifm moneo devices

The adapter reads the messages of ifm moneo devices that IoT Link receives. It uses the tag settings to find the device path, the source path, the unit, the value and the timestamp in each message. The connector then handles the signal like any other counter signal. See the [features of the connector](../iot2printvis-connector/features.md).

## Device and controller adapter

The adapter adds **ifm moneo** as a choice for the **Controller Adapter** and the **Device Adapter**. It also adds the device type **ifm moneo IoT** to the PrintVis devices.

## Offline detection

The adapter marks a controller as offline when it receives no signals within the **Maximum Allowed Idle Time (seconds)** of the [adapter setup](configuration.md#adapter-setup).

## Routing

IoT Link routes ifm moneo signals on the device path, with the source system `moneo`. The **Moneo Match Field** of the adapter setup sets the field that IoT Link uses for the match.
<!-- agent:end features -->
