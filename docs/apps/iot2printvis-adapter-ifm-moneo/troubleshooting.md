# Troubleshooting

<!-- agent:begin troubleshooting -->
## The ifm moneo signals are not processed

**Symptom:** Messages of ifm moneo devices arrive in IoT Link but the connector does not handle them.

**Cause:** The setup of the device, the routing rule or the tag settings does not match.

**Solution:**

1. In **IoT Device**, set **Controller Adapter** to **ifm moneo**. On the CIM device in PrintVis, choose the device type **ifm moneo IoT** and set **Device Adapter** to **ifm moneo**.
2. In IoT Link, check that a routing rule with the source system `moneo` exists and that you chose **Activate Configuration**.
3. Open **IoT ifm Tag Settings** and check that the tags match the field names in your messages. Change a tag only if your ifm moneo messages use other field names.

## The controller is marked offline

**Symptom:** A controller of an ifm moneo device is marked as offline.

**Cause:** The adapter received no signals within the **Maximum Allowed Idle Time (seconds)**.

**Solution:**

1. Check that the device still sends data to IoT Link.
2. If signals normally arrive less often, increase **Maximum Allowed Idle Time (seconds)** in the [adapter setup](configuration.md#adapter-setup).

## The adapter is not shown as a choice

**Symptom:** **ifm moneo** is not available as **Controller Adapter** or **Device Adapter**.

**Cause:** The app is not installed or not up to date, or IoT Link or the connector is missing.

**Solution:**

1. Open **Extension Management** and check that the adapter, the IoT-2-PrintVis Connector and IoT Link are installed.
2. Check the [requirements](installation.md#requirements).

## Still stuck?

Open an issue in the [support repository](https://github.com/1vision365/support) and include the app name, the app version, your Business Central version and a short description of the problem. Do not post passwords, keys, tokens, tenant IDs or environment URLs.
<!-- agent:end troubleshooting -->
