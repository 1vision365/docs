# Release notes

What is new in the 1Vision365 apps, newest release first. All apps share the release number. An app that is not mentioned under a release did not change.

For the full details per app, open the release notes of that app:
[IoT Link](apps/iot-link/release-notes.md) ·
[IoT-2-PrintVis Connector](apps/iot2printvis-connector/release-notes.md) ·
[Adapter - ifm moneo](apps/iot2printvis-adapter-ifm-moneo/release-notes.md) ·
[Adapter - Moxa](apps/iot2printvis-adapter-moxa/release-notes.md)

<!-- agent:begin release-overview -->

## 28.5.294 — 27 October 2026

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): idle time segmentation now also applies to shop floor entries moved to the approval journal, a job-scoping fix for idle time reasons, **Production Started** no longer resets when a paused entry resumes, and corrected UTC start times on automatic-switch-to-production entries.

## 28.5.285 — 27 October 2026

IoT Link's improved Setup Wizard with dynamic routing, automatic CIM linking for the Moxa and ifm moneo adapters, and a directly editable idle time comment.

- **IoT Link** ([details](apps/iot-link/release-notes.md)): a new, improved **IoT Setup Wizard** with dynamic routing, support for multiple Business Central environments per customer, a provisioning log and resumable provisioning.
- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): new **Auto-Create CIM Controller/Device** setup switch and a manual **Create/Link CIM Controller & Device** action. The Idle Time Registration **Comment** field can now be typed directly.
- **Adapter - ifm moneo** ([details](apps/iot2printvis-adapter-ifm-moneo/release-notes.md)): a new **Moneo Match Field** setting and support for automatic CIM linking.
- **Adapter - Moxa** ([details](apps/iot2printvis-adapter-moxa/release-notes.md)): support for automatic CIM linking and its own adapter-supplied routing match field.

## 28.5.264 — 17 October 2026

Quantity registration per operation type, license counting per physical device and clearer captions and tooltips.

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): new **IoT Quantity Registration** with a mode per unit of measure, extra work code or work code button. The license is counted per physical IoT device. New action to copy the IoT Device Type and Controller Adapter setting to all selected devices. Clearer tooltips, a better notification for unaccounted idle time and fixes for idle time registration.
- **Adapter - ifm moneo** ([details](apps/iot2printvis-adapter-ifm-moneo/release-notes.md)): corrected title of the adapter setup page.
- **IoT Link** ([details](apps/iot-link/release-notes.md)): removed a leftover debug message during license validation.

## 28.3.240 — 26 August 2026

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): new **Description** field on the IoT PV Controller. Workaround for automatic CIM approval that bypassed Shop Floor Posting.
- **IoT Link** ([details](apps/iot-link/release-notes.md)): fixed a runtime error in Assisted Setup with a long translated short title.

## 28.3.231 — 4 August 2026

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): the upgrade sets Counter Channel 2, 3 and 4 to -1 on existing CIM devices.
- **IoT Link** ([details](apps/iot-link/release-notes.md)): heartbeat scheduling no longer breaks an app upgrade when scheduling tasks is not permitted.

## 28.3.200 — 23 June 2026

Double lane production: a CIM device can have multiple counter channels.

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)), **Adapter - ifm moneo** ([details](apps/iot2printvis-adapter-ifm-moneo/release-notes.md)) and **Adapter - Moxa** ([details](apps/iot2printvis-adapter-moxa/release-notes.md)) support the multiple counter channels.

## 28.3.188 — 14 June 2026

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): filtered lookups for the idle time registration fields.

## 28.3.184 — 13 June 2026

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): a guard for a plan unit that is not initialized.

## 28.3.181 — 5 June 2026

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): reworked filters and field names of the idle time registration.

## 28.3.179 — 2 June 2026

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): idle type reasons have a description field.

## 28.3.175 — 29 May 2026

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): choose per counter whether it is used for production or consumption.

## 28.2.165 — 25 May 2026

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): section code support for idle time management, an additional requirement for the automatic switch to production, and improved permission checks and unit conversion in the shop floor logic.

## 28.2.138 — 16 May 2026

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): fixes for missing information on the idle time registration, the setup time that kept running after the automatic switch to production, and an archived job that could not be changed after entering comments.
- **IoT Link** ([details](apps/iot-link/release-notes.md)): fixed a problem when modifying records in debug mode.

## 28.1.0 — 29 April 2026

- **IoT-2-PrintVis Connector** ([details](apps/iot2printvis-connector/release-notes.md)): enhanced idle time registration with mandatory classification and reason codes, and an automatic switch to production based on the machine speed.

## 28.0.0 — 23 April 2026

All apps are updated for Business Central version 28.

- **IoT Link** ([details](apps/iot-link/release-notes.md)): also fixes an issue with the retention policy.

<!-- agent:end release-overview -->
