---
support_agent: false
---
# Configuration

<!-- agent:begin configuration -->
## Use the adapter

1. In **IoT Device**, set **Controller Adapter** to **Moxa**.
2. On the CIM device in PrintVis, choose the device type **Moxa IoT** and set **Device Adapter** to **Moxa**.
3. In [IoT Link](../iot-link/configuration.md#routing-rules), add a routing rule with the source system `moxa`.

## Tag settings

Search for **IoT Moxa Tag Settings**. Each line links a property of the connector to a tag in the Moxa message.

| Property | Default tag |
|---|---|
| **TagId** | `<TAG_ID>` |
| **InputValue** | `<VALUE>` |
| **InputUnit** | `<UNIT>` |
| **InputServerUTCTimestamp** | `<SERVER_UTC_TIMESTAMP>` |
| **InputServerTimezone** | `<SERVER_TIMEZONE>` |
| **InputQuality** | `<QUALITY>` |

The installation creates these default tags. Change a tag only if your Moxa messages use other names. You can add a **Comment** to each line.

The adapter also knows the properties **EventMoxaServerName** and **InputChannel**.

`TODO: verify with developer` how the tags relate to the message template on the Moxa device, and when you need the additional properties.
<!-- agent:end configuration -->
