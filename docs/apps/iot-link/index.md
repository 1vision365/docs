# 1Vision IoT Link

<!-- agent:begin overview -->
1Vision IoT Link is the generic IoT solution for Business Central. It receives messages from IoT devices through Azure and processes them in Business Central. Other 1Vision365 apps, such as the IoT-2-PrintVis Connector, build on it.

| | |
|---|---|
| **Publisher** | 1Vision365 |
| **Latest version** | 28.5.264.0 |
| **Minimum Business Central version** | 28.0 |
| **Requires** | 1Vision Core Library 28.2.37.6 or later |
| **Also needed** | An Azure subscription |

## How it works

A signal travels from the device to Business Central in four steps:

1. The IoT device sends its signal to an Azure IoT Hub.
2. Azure Service Bus queues the message.
3. An Azure Function App picks up the message and routes it to the right Business Central environment.
4. Business Central receives the message through the IoT Signal API and passes it on to the apps that process it.

The setup wizard creates the Azure resources for you, in the Azure subscription you select: a resource group, a Service Bus namespace and queue, a storage account, Application Insights, an App Service plan, a Function App and an IoT Hub.

IoT Link has two setup wizards. The **IoT Setup Wizard** is the improved version. It uses a dynamic routing configuration, supports multiple Business Central environments per customer and has better performance. The **IoT Setup Wizard (Legacy)** configures the original integration.
<!-- agent:end overview -->

## Where to start

1. [Install the app](installation.md)
2. [Configure it](configuration.md)
3. [Learn what it can do](features.md)
