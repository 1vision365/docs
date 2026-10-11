# Troubleshooting

<!-- agent:begin troubleshooting -->
## The electronic job ticket shows COUNTER OFFLINE, IOT-HUB CONNECTION LOST or INVALID LICENSE

**Symptom:** The **Counter** part on the electronic job ticket shows one of these warnings.

**Cause:** The warning names the problem: the counter is offline, the connection to the IoT Hub is lost, or the license is not valid.

**Solution:**

1. For **IOT-HUB CONNECTION LOST**, check the connection in the **IoT Setup** of IoT Link, see its [Troubleshooting](../iot-link/troubleshooting.md).
2. For **COUNTER OFFLINE**, open **IoT Device Status** and check whether the input channel of the device is online and when it was last updated.
3. For **INVALID LICENSE**, check the license plan of the apps. The license is counted per physical IoT device.

## The job cannot be completed

**Symptom:** Business Central shows: "There are 1 or more shop floor entries that have unaccounted idle time. Please handle these Idle Time entries first before completing the job."

**Cause:** There are idle time registrations without the mandatory comments, and with **Use Enhanced Idle Time Registration** also without an idle type and reason code.

**Solution:**

1. Choose **Complete entries now** in the notification, or open **Idle Time Registrations** from the electronic job ticket.
2. Use **Toggle No Comments Only** to show the registrations that still need a comment.
3. Enter the comments. With enhanced idle time registration also select the **Idle Type** and **Reason Code**.

## The job does not switch to production automatically

**Symptom:** The job stays in setup although the machine runs.

**Cause:** The automatic switch only happens when **Auto Switch to Production Mode** is on for the cost center, the speed stays above the **Production Speed Threshold** for the **Speed Duraction Threshold (sec)**, and the active process is a setup process.

**Solution:**

1. Check these settings on the cost center.
2. Check the current speed on **IoT Device Status**.

## A signal is not processed

**Symptom:** A signal appears in the IoT Hub Events but has no effect.

**Cause:** The event was not processed successfully.

**Solution:**

1. Open **IoT Hub Events**, select the event and choose **Reprocess Event**.
2. Use **Decode Properties** to check the properties of the event.

## Idle time stays on a device that no longer exists

**Symptom:** **IoT Device Status** shows a line for a device or channel that you renumbered or removed.

**Cause:** Business Central removes the device status lines of CIM devices that no longer exist at regular intervals.

**Solution:**

1. Use **Delete** on the line, or use **Clear Idle Time** to reset the idle time of a device that still exists.

## Still stuck?

Open an issue in the [support repository](https://github.com/1vision365/support) and include the app name, the app version, your Business Central version and a short description of the problem. Do not post passwords, keys, tokens, tenant IDs or environment URLs.
<!-- agent:end troubleshooting -->
