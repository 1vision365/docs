---
support_agent: false
---
# Features

<!-- agent:begin features -->
## Receive IoT messages

IoT Link receives the messages that your devices send through Azure and hands them to the apps that process them. The Azure Function App delivers each message to Business Central through the **IoT Signal API**. A message contains a message ID, a date and daily sequence number, a location code, the source system, the device ID and the base64-encoded device payload.

## IoT Hub Events

Search for **IoT Hub Events** to see the received events. This page is filled when **Save IoT Hub Events** is on in the [IoT Setup](configuration.md#iot-setup-page).

For each event the page shows the **Entry No.**, **Entry Time**, device type, device ID and description, and the processing duration (**Round Trip Duration Ms**). A JSON viewer shows the content of the selected event. Choose **Delete all Events** to empty the table.

!!! tip
    Fill in **Delete Events After (days)** in the setup. Business Central then removes old events automatically, in batches, with a job queue entry.

## IoT Devices

Search for **IoT Device** to see the configured devices. For each device you see the device ID, the device type and a description. The legacy wizard also shows the devices on its last step.

## Connection monitoring

IoT Link sends a heartbeat on a fixed interval to monitor the connection between Business Central and Azure. If the last heartbeat is older than the interval plus the grace period, the setup page shows **Connection Lost**. Set the interval and grace period under **Heartbeat** in the setup.

## Dynamic routing

With the improved setup, signals are routed through a routing configuration:

- **Endpoints** describe your Business Central environments, including how the Function App signs in to each of them.
- **Routing rules** match a signal on its source system and a text in the device tag ID or device path, and send it to an endpoint with a location code.
- **Activate Configuration** publishes the configuration to Azure. You can use several Business Central environments per customer.

See [Configuration](configuration.md#endpoints) for all fields.

## Provisioning log

Search for **IoT V3 Provisioning Log** to follow the creation of the Azure resources. For each resource the log shows the company and environment, the resource type and name, the status, the time of creation and update, and the last Azure error message if a step failed. If you reuse a resource that another company or environment created, the log shows where it came from.

The log tracks these resource types: Resource Group, Service Bus Namespace, Service Bus Queue, Storage Account, App Insights, App Service Plan, Function App and IoT Hub.

A resource has one of these statuses: Checking, Available, Reused, Creating, Created, Failed or Removed.

The wizard checks that the global names are available before provisioning starts and can clean up and restart an unfinished provisioning.

## Role center

IoT Link adds two tiles to the 1Vision365 activities: **IoT Hub Events**, with the number of received events, and **IoT Devices**, with the number of configured devices. Choose a tile to open the list. The 1Vision365 headline links to the IoT product page. On the admin role center, the **Setup** menu has the actions **IoT Setup** and **IoT Initialization**.
<!-- agent:end features -->
