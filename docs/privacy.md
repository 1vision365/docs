---
support_agent: false
---
# Privacy policy

!!! warning "Placeholder"
    Replace this page with your actual privacy policy before submitting to AppSource. AppSource requires a publicly reachable privacy policy URL.

The privacy policy of 1Vision365 is available at [1vision365.com/privacy-policy](https://1vision365.com/privacy-policy/). The license terms are at [1vision365.com/1vision365-software-license-terms](https://1vision365.com/1vision365-software-license-terms/).

## What data the apps process

The apps process operational and technical data, not personal data:

- **1Vision IoT Link**: device signals (readings, timestamps, device identifiers) received through Azure IoT Hub, plus the configuration you enter in Business Central (devices, endpoints, routing rules).
- **1Vision IoT-2-PrintVis Connector and its device adapters (ifm moneo, Moxa)**: machine signals such as counters, on/off states and speed, linked to the PrintVis CIM controller/device they belong to.

The apps do not collect personal data about your customers, suppliers or employees. If your own configuration links a signal to a person (for example an operator ID), that data is yours and is handled under your own privacy policy and Business Central's standard data protection features.

## Where the data is stored

- **Business Central**: in your own tenant, in the standard tables of the apps you install. 1Vision365 does not have access to your tenant.
- **Azure**: the IoT Link setup wizard creates the required Azure resources (IoT Hub, Service Bus, a Function App, a storage account, Application Insights) in the Azure subscription **you** select during setup. These resources, and the data that passes through them, belong to you — not to 1Vision365.

## Does data leave your Business Central tenant?

Yes, in transit. A signal travels from the IoT device through Azure IoT Hub and Service Bus, and is routed by a Function App, before it reaches Business Central. All of these Azure resources run in your own subscription. 1Vision365 does not operate a shared backend and does not host, see or store this data.

## Privacy contact

Questions about privacy: [info@1vision365.com](mailto:info@1vision365.com).
