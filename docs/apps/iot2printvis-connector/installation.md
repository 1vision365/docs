---
support_agent: false
---
# Installation

<!-- agent:begin installation -->
## Requirements

- Business Central version 28.0 or later with PrintVis 28.0 or later.
- [1Vision IoT Link](../iot-link/index.md), installed and configured.
- A device adapter for your hardware: [Moxa](../iot2printvis-adapter-moxa/index.md) or [ifm moneo](../iot2printvis-adapter-ifm-moneo/index.md).

## Install the app

1. In Business Central, open **Extension Marketplace**.
2. Search for **1Vision IoT-2-PrintVis Connector** and choose **Get it now**.
3. Follow the prompts and wait for the installation to finish.
4. Open **Extension Management** and check that the status is **Installed**.
5. Assign the [permission set](permissions.md) to your users.
6. Continue with the [configuration](configuration.md).

## Licensing

The connector is licensed per physical IoT device. Business Central counts the devices that send signals. If the license is not valid, the counter on the electronic job ticket shows **INVALID LICENSE**.
<!-- agent:end installation -->
