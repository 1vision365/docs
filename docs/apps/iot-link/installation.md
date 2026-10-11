# Installation

<!-- agent:begin installation -->
## Requirements

- Business Central version 28.0 or later.
- The app **1Vision Core Library**, version 28.2.37.6 or later. Business Central installs it with IoT Link.
- An Azure subscription in which the setup wizard can create resources.
- An Azure app registration. You need its **Application (client) ID**, **Directory (tenant) ID** and a client secret.
- The person who completes the Azure setup step in the wizard must sign in (via the device-code prompt shown during setup) with an Azure AD account that has **Owner** on the subscription — or, for least privilege, **Contributor** combined with **User Access Administrator**. Contributor alone is not enough: the wizard also creates an Azure role assignment (granting the Function App's managed identity read access to its storage account), which requires `Microsoft.Authorization/roleAssignments/write`, a permission Contributor explicitly excludes. The app registration itself does not need any role on the subscription — resource creation runs under the signed-in user's own identity, not the app registration's.

## Install the app

1. In Business Central, open **Extension Marketplace**.
2. Search for **1Vision IoT Link** and choose **Get it now**.
3. Follow the prompts and wait for the installation to finish.
4. Open **Extension Management** and check that the status is **Installed**.
5. Assign the [permission sets](permissions.md) to your users.
6. Continue with the [configuration](configuration.md).

## Licensing

IoT Link is licensed per company, with the plans **Small**, **Medium** and **Max**. Every plan includes the same permission sets.

The number of IoT messages per day is limited by your plan:

| Plan | Daily message limit |
|---|---|
| Small | fewer than 200,000 messages per day |
| Medium | 200,000 to 500,000 messages per day |
| Max | more than 500,000 messages per day |

The limit is only enforced in production environments. Sandbox environments are exempt.
<!-- agent:end installation -->