# Configuration

<!-- agent:begin configuration -->
Complete the setup in this order:

1. Set up [1Vision IoT Link](../iot-link/configuration.md) and install a device adapter.
2. Choose the controller adapter on the IoT device.
3. Link the IoT controllers to your CIM controllers.
4. Set up the CIM devices.
5. Set up the cost centers.
6. Set up the idle time types, sections and reasons.

## Controller adapter

Search for **IoT Device**. On each device, set **Controller Adapter** to the adapter that connects to the event controller.

Select multiple devices and choose **Copy IoT Device Type & Controller Adapter setting to all selected** to copy the IoT Device Type and Controller Adapter setting from the current device to all selected devices at once.

## IoT controllers

Search for **List of connected IoT Controllers**. The page lists the controllers that sent signals.

| Field | Description |
|---|---|
| **Controller ID** | The controller ID or name of the device controller. |
| **Description** | A user-friendly description of the device controller. |
| **IP Address** | The IP address of the device controller. |
| **MAC Address** | The MAC address of the device controller. |
| **Linked to CIM Controller** | Shows if the controller is linked to a CIM controller. |

Choose **Link to CIM Controller** to link the controller. On the **CIM Controller**, the **IoT** group shows the **IoT Controller ID**. Select the controller ID as it is set up in the event controller. The IP and MAC address of the controller are shown next to it.

## CIM devices

Open a **CIM Device**. The **IoT** group has the settings below.

| Field | Description |
|---|---|
| **Device Adapter** | The device adapter to use for this IoT device. |
| **Device Id** | The ID of the IoT device. |
| **Counter Channel** | The counter channel number (0 to 15) of the digital input counter on this CIM controller. |
| **Counter Channel 2**, **3**, **4** | A second, third and fourth counter channel (0 to 15). Enter -1 if you do not use it. |
| **Conversion Factor** | Converts one counter tick to the local length unit. |
| **Max. Speed** | The maximum speed this device can reach. |
| **Counter Usage** | How the counter is used: **Register Only**, **Consumption**, **Production** or **Consumption and Production**. |
| **Enable Switches** | Turn this on to use switches. |
| **DI - From Channel** | The first switch channel. If channels 1 to 3 on the event controller are switches, enter 1. |
| **DI - To Channel** | The last switch channel. In the same example, enter 3. |
| **DI - No. of Channels** | The total number of switch channels. In the same example, enter 3. |

### Device Input Mask

Choose **Device Input Mask** on the CIM device to link switch positions to work codes.

| Field | Description |
|---|---|
| **Device Code** | The device that the mask belongs to. |
| **Cost Center Code** | The cost center that the mask applies to. |
| **Input Mask** | A combination of 0 (off) and 1 (on), one digit per switch. The mask `001` means switches 1 and 2 are off and switch 3 is on. |
| **Input Mask (Human Readable)** | Optional. Enter the mask with dots or spaces, for example `1.0.1`. Business Central converts it to `101`. |
| **Work Code** | The work code that applies when the switches match the mask. |
| **Include Counter** | Writes the counter value to the workflow partner response entry. |
| **Priority** | Defines the priority of the active mask. |
| **Device Status** | The status of the device. |

## Automatic CIM linking

Normally you link a new IoT device to a PrintVis CIM Controller and CIM Device yourself, as described above. The connector can also create and link them for you.

Search for **IoT Setup** and open the **CIM Integration** group.

| Field | Description |
|---|---|
| **Auto-Create CIM Controller/Device** | When on, a PVS CIM Controller and PVS CIM Device are created and linked automatically the first time an unrecognized controller or device reports data through the Moxa or ifm moneo adapter. New records are created closed (inactive); review and activate them yourself. When off, linking stays fully manual. |

Search for **IoT Device** to see the raw devices that IoT Link received. The **Linked CIM Device** field shows the CIM Device Code most recently resolved for a device. Choose **Create/Link CIM Controller & Device** to re-parse the device's last received message and create or link it immediately, regardless of the **Auto-Create CIM Controller/Device** setting.

## Cost centers

Open the **Cost Center Card**. The **IoT PV Settings** group has the settings below.

| Field | Description |
|---|---|
| **Counter Update Interval (ms)** | How often the counter information on the electronic job ticket is updated, in milliseconds. |
| **Speed Display Unit** | How the speed is displayed on the electronic job ticket: per **Minute**, **Hour** or **Day**. |
| **Machine Counter Activated** | Turn this on to add a record to the PrintVis machine counter table and signal that this feature is active. |
| **Auto Switch to Production Mode** | Switches to production automatically when the production speed threshold is met. |
| **Production Speed Threshold** | The speed that triggers the automatic switch. |
| **Speed Duration Threshold (sec)** | How many seconds the speed must stay above the threshold before the switch. This prevents short speed changes from triggering a switch. |

Under **Idle Time Settings**:

| Field | Description |
|---|---|
| **Enable Job Costing on Idle Time** | Tracks idle time and applies job costing based on the thresholds below. |
| **Idle Time Threshold for Job Costing (sec)** | The number of seconds a machine may stand still before the process starts. |
| **Idle Time Grace Period (sec)** | The number of seconds a machine may stand still before an operator must react. Within this period, Business Central posts a shop floor entry for the total idle time without operator input. |
| **Grace Period Reason Code** | The extra work code for the shop floor entry within the grace period. You can only select codes where **Comments are Required** is off. |
| **Idle Time Reason Code** | The extra work code for the shop floor entry outside the grace period. You can only select codes where **Comments are Required** is on. |
| **Use Enhanced Idle Time Registration** | Uses the enhanced idle time registration, with a mandatory idle type and reason. |

## Idle time types, sections and reasons

Search for these pages:

- **Idle Time Types**: the classification of idle time, with an **Idle Type Code** and **Idle Type Description**.
- **Machine Section**: the sections of a machine, with a **Section Code** and **Section Name**.
- **Idle Type Reasons**: which reason codes the operator may choose per idle type. Each line combines a **Department**, **Cost Center Code**, **Section Code**, **Idle Type Code** and **Idle Time Reason Code**. Leave the department empty to allow the reason for all departments. You must fill in the idle type code and the reason code on every new line.

## Quantity registration mode

On the **Unit of Measure Card**, **Extra Work Codes** or **Shop Floor Metro X-Ref**, set **IoT Quantity Registration** to control what happens with the quantity that a DCM device counted automatically.

| Value | What happens |
|---|---|
| (blank) | Standard behavior: the counted quantity is registered as usual. |
| **Register** | The counted quantity is registered as usual. |
| **Discard** | The quantity is not registered and removed from the operation's running total. |
| **Zero, Keep in Totals** | The quantity is not registered on this entry, but the operation's running total is not corrected. |
| **Carry to Next Production** | The quantity is not registered now. It is added to the next registration for this job once that registration resolves to **Register**. |

If more than one setting applies, the connector uses the most specific one: the work code button on the Shop Floor Metro/App X-Ref, then the Extra Work Code, then the Unit of Measure.

The applied mode and any suppressed quantity are visible on **Labor Entries** and the **Shop Floor Journal List**, in the fields **IoT Qty. Reg. Mode Applied** and **IoT Suppressed Qty.**. While a registration is not in **Register** mode, the live counter on the electronic job ticket pauses instead of counting up.
<!-- agent:end configuration -->
