---
support_agent: false
---
# 1Vision IoT-2-PrintVis Connector

<!-- agent:begin overview -->
1Vision IoT-2-PrintVis Connector connects the 1Vision IoT solution to PrintVis. It receives signals from IoT devices, such as counters and on/off switches on a machine, and uses them in PrintVis. The operator sees live counter and speed information on the electronic job ticket. The connector can also switch a job to production automatically and register machine idle time as job costing entries.

| | |
|---|---|
| **Publisher** | 1Vision365 |
| **Latest version** | 28.3.240.2 |
| **Minimum Business Central version** | 28.0 |
| **Requires** | PrintVis 28.0 or later, [1Vision IoT Link](../iot-link/index.md) 28.2.0.0 or later, 1Vision Core Library 28.2.0.0 or later |
| **Also needed** | A device adapter: [Moxa](../iot2printvis-adapter-moxa/index.md) or [ifm moneo](../iot2printvis-adapter-ifm-moneo/index.md) |

## How it works

1. A device adapter reads the signals that IoT Link receives and translates them for the connector.
2. The connector links each signal to a CIM controller and CIM device in PrintVis.
3. Counter signals update the counter on the electronic job ticket and the machine counter. Switch signals select the work code.
4. When the machine stands still, the connector registers the idle time. It can create shop floor entries and job costing entries for it.
<!-- agent:end overview -->

## Where to start

1. [Install the app](installation.md)
2. [Configure it](configuration.md)
3. [Learn what it can do](features.md)
