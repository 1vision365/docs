---
support_agent: false
---
# Privacy policy

_Last updated: 2026-10-10_

This is the privacy policy for this documentation site (docs.1vision365.com) and for the 1Vision365 apps for Microsoft Dynamics 365 Business Central described here: 1Vision IoT Link, 1Vision IoT-2-PrintVis Connector, and the ifm moneo and Moxa device adapters.

For the privacy policy of our corporate website, 1vision365.com, see [1vision365.com/privacy-policy](https://1vision365.com/privacy-policy/) (that page covers things specific to that site, such as blog comments and cookies — it does not describe how the apps handle data; this page does). The license terms for our apps are at [1vision365.com/1vision365-software-license-terms](https://1vision365.com/1vision365-software-license-terms/).

## Data controller

| | |
|---|---|
| **Company** | 1Vision365 B.V. |
| **Address** | Lotusvliet 22, 3545 DH Utrecht, The Netherlands |
| **Chamber of Commerce (KVK)** | 90127811 |
| **Website** | [1vision365.com](https://1vision365.com) |
| **Contact** | [info@1vision365.com](mailto:info@1vision365.com) |

## This documentation site

docs.1vision365.com is a static site built with MkDocs and hosted on GitHub Pages. It does not use cookies, analytics or tracking scripts of its own, and has no forms that collect personal data. GitHub, Inc. operates the hosting infrastructure and may process technical data such as IP addresses to serve the pages; see [GitHub's privacy statement](https://docs.github.com/en/site-policy/privacy-policies/github-general-privacy-statement) for details.

## What data the apps process

The apps process operational and technical data, not personal data:

- **1Vision IoT Link**: device signals (readings, timestamps, device identifiers) received through Azure IoT Hub, plus the configuration you enter in Business Central (devices, endpoints, routing rules).
- **1Vision IoT-2-PrintVis Connector and its device adapters (ifm moneo, Moxa)**: machine signals such as counters, on/off states and speed, linked to the PrintVis CIM controller/device they belong to.

The apps do not collect personal data about your customers, suppliers or employees. If your own configuration links a signal to a person (for example an operator ID), that data is yours and is handled under your own privacy policy and Business Central's standard data protection features.

## Where app data is stored

- **Business Central**: in your own tenant, in the standard tables of the apps you install. 1Vision365 does not have access to your tenant.
- **Azure**: the IoT Link setup wizard creates the required Azure resources (IoT Hub, Service Bus, a Function App, a storage account, Application Insights) in the Azure subscription **you** select during setup. These resources, and the data that passes through them, belong to you — not to 1Vision365.

## Does app data leave your Business Central tenant?

Yes, in transit. A signal travels from the IoT device through Azure IoT Hub and Service Bus, and is routed by a Function App, before it reaches Business Central. All of these Azure resources run in your own subscription. 1Vision365 does not operate a shared backend and does not host, see or store this data.

## Our role for your operational data

For the device signals and production data described above, 1Vision365 is not a data controller or processor: we never receive, see or store this data. It is created, transmitted and stored entirely within infrastructure you control. You remain the controller for any personal data your own configuration links to it.

## Data we process ourselves

Separately from the operational data above, we process limited personal data directly:

- **License and subscription administration**: we invoice directly — either you as the end customer, or a partner who resells the apps to you. We process the company name, contact name, email address and billing details of whoever we have the direct contractual relationship with (you, or the partner). This is not handled through Microsoft AppSource/Partner Center billing; Microsoft AppSource is only used for app discovery and installation. If you purchase through a partner, that partner handles their own invoicing and data processing towards you as their end customer, under their own privacy policy.
- **Support requests**: whatever you share with us, for example through the [public support repository](https://github.com/1vision365/support) or by email. That repository is public — do not include personal or confidential data in it (see the [Support page](support.md)).

Legal basis: performance of our contract with you or with the partner that supplies you, and our legitimate interest in providing support.

## Data retention

We keep license, subscription and support data for as long as needed to provide the apps and support, and afterwards only as long as required by law (for example tax and accounting retention periods). Data inside your own Business Central tenant and Azure subscription is retained and deleted according to your own settings — we have no access to it and cannot delete or retain it on your behalf.

## International transfers

1Vision365 is established in the Netherlands (EU). We do not transfer the personal data described above outside the EU/EEA ourselves. If you deploy your own Azure resources in a non-EU region, that is your own choice and your own responsibility as controller of that infrastructure.

## Security

- Communication with Azure IoT Hub and the Business Central IoT Signal API uses standard Azure and Microsoft 365 authentication and TLS encryption.
- Azure resources created by IoT Link are created in your own subscription and inherit your own access control and security policies.
- We do not keep copies of your operational data on our own infrastructure.

## Your rights

If data protection law applies to you (for example the GDPR in the EU/EEA), you have the right to:

- request access to the personal data we hold about you
- request correction or deletion of that data
- object to, or request a restriction of, our processing of it
- request a copy of your data in a portable format
- lodge a complaint with your national data protection authority — in the Netherlands, the [Autoriteit Persoonsgegevens](https://www.autoriteitpersoonsgegevens.nl/)

To exercise these rights, contact [info@1vision365.com](mailto:info@1vision365.com).

## Children

The apps and this site are intended for business use by Business Central administrators and users. We do not knowingly collect data from children.

## Changes to this policy

We may update this page from time to time; the "Last updated" date above reflects the most recent change. For material changes, we will also mention it in the relevant [release notes](index.md) or the [support repository](https://github.com/1vision365/support).

## Privacy contact

Questions about privacy or this policy: [info@1vision365.com](mailto:info@1vision365.com).
