---
support_agent: false
---
# Configuration

<!-- agent:begin configuration -->
Search for **IoT Setup** to open the setup page. Use the **IoT Setup Wizard** action for the first setup.

## Run the IoT Setup Wizard

1. On the welcome step, choose a **Setup Mode**. You can provision new Azure resources, onboard an existing infrastructure, or migrate from the legacy version.
2. Choose the **Infrastructure**. You can deploy new Azure resources for this environment, or connect to a Function App that is already deployed.
3. Under **Azure Authentication**, enter the **Application (client) ID** and **Directory (tenant) ID** of your Azure app registration.
4. Under **Subscription & Naming**, enter a **Customer Name**, select the **Subscription ID** and enter the **Azure Location**.
5. Check the generated resource names on **Azure Resource Names**. Choose whether to create a new **IoT Hub** or link to an existing one.
6. On **Function App Connection**, check the **Function App URL** and choose **Test Connection**.
7. On **Register This Environment**, register this Business Central environment as an endpoint.
8. On **Routing Rules**, add the rules that route signals to this environment.
9. Choose **Finish**.

While the wizard creates resources, the **Provisioning Progress** factbox shows the status per resource. If a run is unfinished, you can restart the wizard.

!!! tip
    Use short, lowercase customer names of at most 20 characters. The wizard builds the Azure resource names from it. A Service Bus namespace cannot end with "-sb" or "-mgmt".

## Wizard fields

| Field | Description |
|---|---|
| **Customer Name** | Short customer name used in the Azure resource names, for example `contoso`. Lowercase letters and hyphens only, maximum 20 characters. |
| **Subscription ID** | The Azure subscription in which the resources are created. Use the assist-edit button to browse your subscriptions. |
| **Azure Location** | The Azure region in which the resources are created, for example `westeurope`. |
| **Resource Group** | Name of the resource group. Pattern: `iot-{customer}-rg`. |
| **Service Bus Namespace** | Name of the Service Bus namespace. Pattern: `iot-{customer}-svcbus`. |
| **Service Bus Queue Name** | Name of the queue. Default: `iot-messages`. |
| **Storage Account Name** | Pattern: `iot{customer}sa`. Maximum 24 characters, lowercase, no hyphens. |
| **Application Insights Name** | Pattern: `iot-{customer}-ai`. |
| **App Service Plan** | Pattern: `iot-{customer}-asp`. It uses the Y1 Consumption plan. |
| **Function App Name** | Pattern: `iot-{customer}-func`. Must be globally unique. |
| **IoT Hub** | Create a new IoT Hub, or link this environment to an existing IoT Hub of the same customer in the same resource group and subscription. |
| **IoT Hub Name** | Pattern: `iot-{customer}-hub`. SKU S1. |
| **Function App URL** | URL of the Function App, for example `https://iot-contoso-func.azurewebsites.net`. |

## IoT Setup page

### General

| Field | Description |
|---|---|
| **Save IoT Hub Events** | Stores the received events in the IoT Hub Events table. |
| **Delete Events After (days)** | Deletes IoT Hub events after the given number of days. Business Central creates a job queue entry when you fill in this field. Always fill it in when you save events, to keep the events table small. |
| **Debug Mode** | Logs extra debug information to Application Insights. This can increase your Application Insights costs. |

### Heartbeat

| Field | Description |
|---|---|
| **IoT Events Heartbeat Time (seconds)** | Heartbeat interval in seconds. The heartbeat monitors the connection between Business Central and Azure. |
| **Heartbeat Grace Period** | Grace period in seconds. If the time since the last heartbeat exceeds it, the connection is considered lost. |
| **IoT Events Last Heartbeat** | Date and time of the last heartbeat. |
| **Connection Lost** | Shows whether the connection to IoT is lost. |

### Azure Setup

The wizard fills these fields. Change them only if you manage the Azure resources yourself.

| Field | Description |
|---|---|
| **Application (client) ID** | Found on the overview page of the app registration. |
| **Directory (tenant) ID** | Found on the overview page of the app registration. |
| **Client Secret** | Found on the Certificates & Secrets page of the app registration. Azure only shows it when you create it. |
| **Subscription ID**, **Subscription Name** | The Azure subscription that holds the resources. |
| **Azure Location** | The Azure region of the resources. |
| **Resource Group** | The container for the resources of this solution. |
| **Storage Account Name** | 3 to 24 characters, lowercase letters and numbers only. |
| **Application Insights Resource Name** | 1 to 250 characters. Letters, numbers, periods, underscores, hyphens and parentheses. Cannot end in a period. |
| **Application Insights Primary Connection String** | Used by the Function App to send log information to Application Insights. |
| **Function App Name** | Gets the URL `https://<name>.azurewebsites.net/`, so it must be globally unique. |
| **App Service Plan** | The compute resources of the Function App. A new plan starts as F1 (Free). You can scale it up later. |
| **IoT Hub Name** | 3 to 50 characters. Letters, numbers and hyphens. |
| **IoT Hub Device** | Maximum 128 characters. |
| **IoT Device Primary Connection String** | Used by external IoT devices to send events to the IoT Hub. |
| **IoT Event Grid System Topic** | The Event Grid system topic of the IoT Hub. |
| **Service Bus Namespace** | 6 to 50 characters. Starts with a lowercase letter and ends with a lowercase letter or digit. |
| **Service Bus Queue Name** | 3 to 50 characters. Letters, numbers and hyphens. |

### Business Central API Connection

| Field | Description |
|---|---|
| **Api Url** | The URL that the IoT Function App uses to connect to Business Central. |
| **Authentication Mode** | The authentication mode that the Function App uses to connect to Business Central. |
| **Windows Username**, **Windows Password**, **Windows Domain** | Credentials of the Windows account used with Windows Authentication. |

### IoT Link V3

| Field | Description |
|---|---|
| **Function App URL (V3)** | The Function App URL that the dynamic routing configuration uses. |
| **Routing Config Version (V3)** | The version of the routing configuration that was last activated. |

### Actions

| Action | Description |
|---|---|
| **IoT Setup Wizard** | Opens the improved setup wizard. |
| **IoT Setup Wizard (Legacy)** | Opens the wizard for the legacy IoT Link integration. |
| **Redeploy Azure Function App** | Redeploys the latest Function App from Blob Storage. |
| **Update Application Settings** | Updates the Function App settings and restarts the Function App. |

## Endpoints

An endpoint describes a Business Central environment that receives signals. Search for **IoT V3 Endpoints** to manage them. Choose **New Endpoint** to add one.

| Field | Description |
|---|---|
| **Endpoint Key** | Unique key of the endpoint, for example `L01-PRD`. Routing rules refer to it. |
| **URL** | Full URL of the IoT Signal API of the environment. |
| **Authentication Type** | **OAuth2 (SaaS)**, **Basic (OnPrem)** or **Windows (OnPrem NTLM)**. |
| **Timeout (seconds)** | HTTP timeout. Use 15 to 30 seconds for slow on-premises environments. |
| **Tenant ID**, **Client ID**, **Client Secret** | OAuth2 credentials. The client secret is stored in the routing configuration file. |
| **OAuth Scope** | OAuth2 scope. For Business Central online: `https://api.businesscentral.dynamics.com/.default`. |
| **Username**, **Password** | Basic authentication. The password is the web service access key, not the user password. |
| **Windows User**, **Windows Password**, **Windows Domain** | NTLM credentials. Enter the user as `DOMAIN\username`. |

## Routing rules

Routing rules decide which environment receives a signal. Search for **IoT V3 Routing Rules** to manage them. Rules are evaluated in order. A lower line number is evaluated first.

| Field | Description |
|---|---|
| **Line No.** | Order of evaluation. |
| **Source System** | The source system the rule applies to: `moxa` or `moneo`. |
| **Contains** | Text to look for in the device tag ID (Moxa) or device path (Moneo). Case-sensitive. |
| **Location Code** | The location code assigned when the rule matches. |
| **Endpoint Key** | The endpoint that receives the signals that match this rule. |
| **Description** | Free description. |

After you change rules or endpoints, choose **Activate Configuration**. This generates the routing configuration and pushes it to Azure Blob Storage. The Function App picks it up within its refresh interval.
<!-- agent:end configuration -->
