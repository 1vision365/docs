---
support_agent: false
---
# Installation

<!-- agent:begin installation -->
## Requirements

- Business Central version 28.0 or later.
- The app **1Vision Core Library**, version 28.2.37.6 or later. Business Central installs it with IoT Link.
- An Azure subscription in which the setup wizard can create resources.
- An Azure app registration. You need its **Application (client) ID**, **Directory (tenant) ID** and a client secret.

`TODO: verify with developer` which Azure role the app registration needs on the subscription to create the resources.

## Install the app

1. In Business Central, open **Extension Marketplace**.
2. Search for **1Vision IoT Link** and choose **Get it now**.
3. Follow the prompts and wait for the installation to finish.
4. Open **Extension Management** and check that the status is **Installed**.
5. Assign the [permission sets](permissions.md) to your users.
6. Continue with the [configuration](configuration.md).

## Licensing

IoT Link is licensed per user, with the plans **Small**, **Medium** and **Max**. Every plan includes the same permission sets.

The number of IoT messages per day is limited by your plan. The limit is only enforced in production environments. Sandbox environments are exempt.

`TODO: verify with developer` the message limit of each plan.
<!-- agent:end installation -->
