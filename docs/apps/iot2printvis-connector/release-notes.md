# Release notes

Newest first.

<!-- agent:begin release-notes -->

## 28.5.285 — 27 October 2026

### New

- **Auto-Create CIM Controller/Device**: a new setup switch that automatically creates and links a PrintVis CIM Controller and CIM Device the first time an unrecognized controller or device reports data through the Moxa or ifm moneo adapter.
- **Create/Link CIM Controller & Device** action on the IoT Device list: re-parses the most recently received message for a device and creates or links its CIM Controller and CIM Device, regardless of the Auto-Create CIM Controller/Device setting.
- A **Linked CIM Device** field on the IoT Device list shows the CIM Device Code most recently resolved for that device.

### Improved

- The routing of signals for the Moxa and ifm moneo adapters no longer depends on fields in IoT Link; each adapter now supplies its own routing match field.

### Fixed

- The **Comment** field on the Idle Time Registration page can now be typed directly; you no longer need the assist-edit pop-up.

## 28.5.264 — 17 October 2026

### New

- **IoT Quantity Registration**: assign a quantity registration mode (**Register**, **Discard**, **Zero, Keep in Totals** or **Carry to Next Production**) per unit of measure, extra work code or work code button, to control what happens with a quantity that a DCM device counted automatically. The applied mode and any suppressed quantity are visible on **Labor Entries** and the **Shop Floor Journal List**.
- The license is counted per physical IoT device. Business Central regularly removes device status lines of CIM devices that no longer exist, so renumbered controllers, devices or channels do not inflate the license count.
- A new action, **Copy IoT Device Type & Controller Adapter setting to all selected**, copies the IoT Device Type and Controller Adapter setting from one IoT device to multiple selected devices at once.

### Improved

- Clearer tooltips on the Idle Time Registration page and the Device Status field that describe what each field means instead of repeating its name.
- The notification for unaccounted idle time now points to every registration that is missing a comment, idle type or extra work code, not only the first one found.

### Fixed

- Corrected the caption **Speed Duration Threshold (sec)** on the cost center (previously misspelled "Speed Duraction Threshold").
- Fixed a crash that could occur when Business Central found no matching idle type reason while validating an idle time registration.
- Selecting a Section Code or Idle Type without a matching reason no longer shows a "cannot be found in the related table" error; the Idle Type and Extra Work Code are cleared instead.

## 28.3.240 — 26 August 2026

### New

- A **Description** field on the **IoT PV Controller**.

### Fixed

- A workaround for the situation where the automatic approval of the CIM bypassed Shop Floor Posting.

## 28.3.231 — 4 August 2026

### Improved

- The upgrade sets **Counter Channel 2**, **3** and **4** to -1 on existing CIM devices.

## 28.3.200 — 23 June 2026

### New

- Double lane production: a CIM device can now have multiple counter channels.

## 28.3.188 — 14 June 2026

### Improved

- Filtered lookups for the idle time registration fields.

## 28.3.184 — 13 June 2026

### Fixed

- A guard for a plan unit that is not initialized.

## 28.3.181 — 5 June 2026

### Improved

- The filters and field names of the idle time registration are reworked.

## 28.3.179 — 2 June 2026

### Improved

- Idle type reasons now have a description field.

## 28.3.175 — 29 May 2026

### New

- You can choose per counter whether it is used for production or for consumption.

## 28.2.165 — 25 May 2026

### New

- Section code support for idle time management.

### Improved

- An additional requirement for the automatic switch to production.
- Improved permission checks and unit conversion in the shop floor logic.

## 28.2.138 — 16 May 2026

### Fixed

- Missing information on the idle time registration.
- The setup time kept running next to the production time after the automatic switch to production.
- An archived job could not be changed after you entered comments.

## 28.1.0 — 29 April 2026

### New

- Enhanced idle time registration with mandatory classification and reason codes.
- Automatic switch to production based on the machine speed.

## 28.0.0 — 23 April 2026

### Improved

- Updated for Business Central version 28.
<!-- agent:end release-notes -->

