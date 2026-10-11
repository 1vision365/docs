# Features

<!-- agent:begin features -->
## Connect Moxa devices

The adapter reads the messages of Moxa devices that IoT Link receives. It uses the tag settings to find the tag ID, the value, the unit, the timestamp with timezone and the quality in each message. The connector then handles the signal like any other counter signal. See the [features of the connector](../iot2printvis-connector/features.md).

## Device and controller adapter

The adapter adds **Moxa** as a choice for the **Controller Adapter** and the **Device Adapter**. It also adds the device type **Moxa IoT** to the PrintVis devices.

## Routing

IoT Link routes Moxa signals on the device tag ID, with the source system `moxa`.
<!-- agent:end features -->
