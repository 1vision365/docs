# Release notes

Newest first.

<!-- agent:begin release-notes -->
<!-- Unreleased: move this block out of the comment when the release is published.

## Next release (28.4.x.x)

### New

- The license is counted per physical IoT device. Business Central regularly removes device status lines of CIM devices that no longer exist, so renumbered controllers, devices or channels do not inflate the license count.

### Improved

- The routing of signals for the Moxa and ifm moneo adapters no longer depends on fields in IoT Link.
-->

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

