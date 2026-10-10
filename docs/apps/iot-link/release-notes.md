---
support_agent: false
---
# Release notes

Newest first. The agent adds an entry per release.

<!-- agent:begin release-notes -->
## Next release (28.4.x.x)

### New

- A new, improved **IoT Setup Wizard** with dynamic routing. It supports multiple Business Central environments per customer.
- **IoT V3 Endpoints** and **IoT V3 Routing Rules** pages, with **Activate Configuration** to publish the routing configuration to Azure.
- **IoT V3 Provisioning Log**, with a **Provisioning Progress** factbox in the wizard.
- You can choose to create a new IoT Hub or to reuse an existing one.
- The wizard validates Azure resource names, rejects the reserved Service Bus suffixes "-sb" and "-mgmt" and checks that global names are available before provisioning starts.
- The wizard prefills the OAuth2 tenant and client ID of an endpoint from the app registration.
- Batch configuration settings for message processing.

### Improved

- You can restart the setup wizard after an unfinished run.
- Provisioning can resume after an interruption and cleans up before it provisions again.
- The wizard shows a status while it waits for the IoT Hub and lets you continue waiting.
- Clearer error messages when Azure rejects a request or the Function App cannot be reached.

### Fixed

- The IoT Hub is now created during provisioning, including its routing endpoint and rule.
- The routing configuration is pushed to Azure right after provisioning.
- The Service Bus queue send connection string is now stored.
<!-- agent:end release-notes -->
