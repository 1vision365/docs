# Features

<!-- agent:begin features -->
## Counter on the electronic job ticket

The electronic job ticket shows a **Counter** part with live information from the machine:

- **Current Operation** and **Total Job**, in sheets.
- **Current Speed**, in sheets per minute.
- **Start Counter** and **Current Counter**.

The part shows a warning when something is wrong: **COUNTER OFFLINE**, **IOT-HUB CONNECTION LOST** or **INVALID LICENSE**. Choose **Counter Registrations** to see all counter registrations of the cost center.

## IoT Registrations

Search for **IoT Registrations**. Each line is a registration of a CIM device: the cost center, the job, the start and end time, the duration, the unit, the start and end counter, the usage, the average speed and the waste code with its description. **Open** shows if the registration is still running.

## IoT Device Status

Search for **IoT Device Status** to monitor your machines. For each CIM device and input channel the page shows the channel value, whether the channel is online, the current speed, the current work code, whether the machine is stopped, the time of the last update, whether production started and whether the machine is idling, with the idle time.

Use **Clear Idle Time** to reset the idle time of a device. Use **Delete** to remove a line. **IoT Setup** opens the IoT Link setup.

## IoT Hub Events

The connector adds columns to the IoT Hub Events of IoT Link: **IoT Input Channel**, **IoT Value**, **IoT Unit**, **IoT Server Time**, **CIM Device Code** and **Name**. You get two actions:

- **Reprocess Event** processes the event again.
- **Decode Properties** decodes the event properties.

## Switches and work codes

Switch signals can select the work code of a machine. You define which combination of switches belongs to which work code in the [Device Input Mask](configuration.md#device-input-mask).

## Automatic switch to production

Normally the operator switches a job from setup to production on the electronic job ticket. The connector can do this automatically. When **Auto Switch to Production Mode** is on for the cost center and the machine speed stays above the **Production Speed Threshold** for the **Speed Duration Threshold (sec)**, the job switches to production. This only happens while the active process is a setup process.

## Idle time registration and job costing

The counter signals normally only record the counter value when the operator starts, stops or changes the operation. If the machine stands still in between, nothing is recorded. The connector closes this gap:

1. When the machine stands still longer than the **Idle Time Threshold for Job Costing (sec)**, the connector creates a shop floor entry for the idle time in the background.
2. Within the **Idle Time Grace Period (sec)**, the entry uses the **Grace Period Reason Code** and no operator input is needed.
3. Outside the grace period, the entry uses the **Idle Time Reason Code**, which requires comments. The operator gets the notification **A shop floor entry has been created for unaccounted idle time** with the action **Complete entries now**. The action opens the page where the operator enters the comments.
4. If the job is still running when the machine starts again, the connector creates a new shop floor entry for the current operation. This completes the cycle of accountable time.
5. The operator can stop a job, but cannot complete it while there are idle time entries to account for. Business Central shows the message "There are 1 or more shop floor entries that have unaccounted idle time. Please handle these Idle Time entries first before completing the job."

!!! note
    Timing depends on the delay between the layers. If the device sends counter values every 30 seconds and the counter on the job ticket also updates every 30 seconds, a machine can stand still for 30 to 60 seconds before the process triggers.

### Idle Time Registration

Search for **Idle Time Registration**, or choose **Idle Time Registrations** on the electronic job ticket. The page lists the idle time registrations with the cost center, order and job, start and end time, duration, work code, section, idle type, reason code, comment and machine counter. Use **Toggle No Comments Only** to show only the registrations that still need a comment. Use **Toggle Show Processed** to show or hide processed registrations. **Delete** removes a registration.

### Enhanced idle time registration

With **Use Enhanced Idle Time Registration** on the cost center, the operator must also classify the idle time:

- The operator selects an **Idle Type** and a **Reason Code** on the Idle Time Registration page. The available reasons come from the setup per idle type and department.
- Before the job can be completed, Business Central checks that every registration has a type and reason, in addition to the mandatory comments.
- The **Idle Type** and **Section Code** are passed on to the shop floor journal, the job costing labor entries and the job costing entries, so you can report on them.

## Automatic CIM linking

When **Auto-Create CIM Controller/Device** is on, you no longer have to pre-link every controller and device. The first time the Moxa or ifm moneo adapter reports data for a controller or device it does not recognize, the connector creates a PVS CIM Controller and/or CIM Device for it and links them automatically. New records are created closed (inactive), so you still choose when to activate them.

You can always create or link a device immediately, regardless of that setting: search for **IoT Device** and choose **Create/Link CIM Controller & Device** to re-parse the device's last received message. The **Linked CIM Device** field on the same page shows the CIM Device Code most recently resolved for a device.

See [Automatic CIM linking](configuration.md#automatic-cim-linking) for the setup.

## Quantity registration mode

By default, the connector registers every quantity that a DCM device counts automatically. With **IoT Quantity Registration**, you decide per unit of measure, extra work code, or work code button what happens with that counted quantity instead: register it, discard it, zero it while keeping it in the running total, or carry it over to the next registration. See [Quantity registration mode](configuration.md#quantity-registration-mode) for the setup and the exact behavior of each value.

The applied mode and any suppressed quantity are visible on **Labor Entries** and the **Shop Floor Journal List**.

## License count and clean-up

The license is counted per physical IoT device. Business Central regularly removes device status lines of CIM devices that no longer exist. This keeps the license count correct after you renumber a controller, device or channel.
<!-- agent:end features -->
