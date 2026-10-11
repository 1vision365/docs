# Troubleshooting

<!-- agent:begin troubleshooting -->
## The setup page shows Connection Lost

**Symptom:** The IoT Setup page shows **Connection Lost**.

**Cause:** The last heartbeat is older than **IoT Events Heartbeat Time (seconds)** plus the **Heartbeat Grace Period**. Business Central and Azure are not exchanging messages in time.

**Solution:**

1. Open **IoT Setup** and check **IoT Events Last Heartbeat** under **Heartbeat**.
2. Check that the Azure resources exist and are running, for example in the **IoT V3 Provisioning Log**. A resource with the status **Failed** shows the last Azure error message.
3. If the interval or the grace period is too short for your situation, increase it under **Heartbeat** in the setup.

## The setup wizard stops before the Azure resources are created

**Symptom:** The wizard does not start provisioning, or provisioning stops with an error.

**Cause:** The wizard checks the resource names before it starts. A global name can already be in use, and the Service Bus suffixes "-sb" and "-mgmt" are reserved. During provisioning, Azure can also reject a request.

**Solution:**

1. Choose other names for the resources that are not available, and do not end a name in "-sb" or "-mgmt".
2. Open **IoT V3 Provisioning Log**. For a failed resource, read the last Azure error message.
3. Restart the wizard. It can clean up an unfinished provisioning and continue.

## No IoT Hub Events appear

**Symptom:** The page **IoT Hub Events** is empty although devices send messages.

**Cause:** **Save IoT Hub Events** is off in the IoT Setup, or the messages do not reach Business Central.

**Solution:**

1. Turn on **Save IoT Hub Events** in the [IoT Setup](configuration.md#iot-setup-page).
2. Check the connection with the **Heartbeat** fields of the setup.
3. Check that a routing rule matches the source system and the device tag ID or device path of the signal, and that you chose **Activate Configuration** after you changed the rules.

## A user cannot open the IoT pages

**Symptom:** A user does not see the IoT setup or the IoT Hub Events.

**Cause:** The user does not have the right permission set.

**Solution:**

1. Assign `1VIS IoT Setup` to administrators and `1VIS IoT User` to users who work with IoT data. See [Permissions](permissions.md).

## Still stuck?

Open an issue in the [support repository](https://github.com/1vision365/support) and include the app name, the app version, your Business Central version and a short description of the problem. Do not post passwords, keys, tokens, tenant IDs or environment URLs.
<!-- agent:end troubleshooting -->
