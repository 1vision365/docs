# Troubleshooting

<!-- agent:begin troubleshooting -->
## The Moxa signals are not processed

**Symptom:** Messages of Moxa devices arrive in IoT Link but the connector does not handle them.

**Cause:** The setup of the device, the routing rule or the tag settings does not match.

**Solution:**

1. In **IoT Device**, set **Controller Adapter** to **Moxa**. On the CIM device in PrintVis, choose the device type **Moxa IoT** and set **Device Adapter** to **Moxa**.
2. In IoT Link, check that a routing rule with the source system `moxa` exists and that you chose **Activate Configuration**.
3. Open **IoT Moxa Tag Settings** and check that the tags match the field names in your messages. Change a tag only if your Moxa messages use other names.

## The adapter is not shown as a choice

**Symptom:** **Moxa** is not available as **Controller Adapter** or **Device Adapter**.

**Cause:** The app is not installed or not up to date, or IoT Link or the connector is missing.

**Solution:**

1. Open **Extension Management** and check that the adapter, the IoT-2-PrintVis Connector and IoT Link are installed.
2. Check the [requirements](installation.md#requirements).

## Still stuck?

Open an issue in the [support repository](https://github.com/1vision365/support) and include the app name, the app version, your Business Central version and a short description of the problem. Do not post passwords, keys, tokens, tenant IDs or environment URLs.
<!-- agent:end troubleshooting -->
