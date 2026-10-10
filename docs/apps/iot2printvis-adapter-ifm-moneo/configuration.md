---
support_agent: false
---
# Configuration

<!-- agent:begin configuration -->
## Use the adapter

1. In **IoT Device**, set **Controller Adapter** to **ifm moneo**.
2. On the CIM device in PrintVis, choose the device type **ifm moneo IoT** and set **Device Adapter** to **ifm moneo**.
3. In [IoT Link](../iot-link/configuration.md#routing-rules), add a routing rule with the source system `moneo`.

## Adapter setup

Search for **PrintVis ifm Moneo AdapterSetup**.

| Field | Description |
|---|---|
| **Maximum Allowed Idle Time (seconds)** | The maximum idle time before the controller is marked offline. |
| **Moneo Match Field** | The ifm moneo device field that IoT Link uses to match routing rules for this adapter. |

## Tag settings

Search for **IoT ifm Tag Settings**. Each line links a property of the connector to the name of the field in the ifm moneo message.

| Property | Default tag |
|---|---|
| **PsId** | `psid` |
| **DevicePath** | `devicePath` |
| **SourcePath** | `sourcePath` |
| **DataUnit** | `processDataUnit` |
| **DataValue** | `value` |
| **InputUnixTimestamp** | `timestamp` |

The installation creates these default tags. Change a tag only if your ifm moneo messages use other field names. You can add a **Comment** to each line.

The adapter also knows the properties **EventControllerId**, **InputChannel**, **Gateway**, **IOLinkMaster**, **IPAddressPort** and **Device**.

These additional properties are defaulted and hardcoded in the ifm moneo system.
<!-- agent:end configuration -->
