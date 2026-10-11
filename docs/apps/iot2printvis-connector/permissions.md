# Permissions

<!-- agent:begin permissions -->
| Permission set | Name | Description |
|---|---|---|
| `1VIS IOT2PV ALL` | 1Vision IoT-2-PrintVis Connector All Permissions | Gives access to all objects of the connector. |

Users also need the permission sets of [1Vision IoT Link](../iot-link/permissions.md) (`1VIS IoT Setup` and/or `1VIS IoT User`). The connector depends on IoT Link and uses its device and hub objects directly (e.g. the `1VIS IoT Device v2` table) — `1VIS IOT2PV ALL` only covers the connector's own objects, not IoT Link's.
<!-- agent:end permissions -->
