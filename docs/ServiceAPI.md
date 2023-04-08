# ServiceAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serviceCreate**](ServiceAPI.md#servicecreate) | **POST** /services/create | Create a service
[**serviceDelete**](ServiceAPI.md#servicedelete) | **DELETE** /services/{id} | Delete a service
[**serviceInspect**](ServiceAPI.md#serviceinspect) | **GET** /services/{id} | Inspect a service
[**serviceList**](ServiceAPI.md#servicelist) | **GET** /services | List services
[**serviceLogs**](ServiceAPI.md#servicelogs) | **GET** /services/{id}/logs | Get service logs
[**serviceUpdate**](ServiceAPI.md#serviceupdate) | **POST** /services/{id}/update | Update a service


# **serviceCreate**
```swift
    open class func serviceCreate(body: ServiceCreateRequest, xRegistryAuth: String? = nil, completion: @escaping (_ data: ServiceCreateResponse?, _ error: Error?) -> Void)
```

Create a service

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = ServiceCreate_request(name: "name_example", labels: "TODO", taskTemplate: TaskSpec(pluginSpec: TaskSpec_PluginSpec(name: "name_example", remote: "remote_example", disabled: false, pluginPrivilege: [PluginPrivilege(name: "name_example", description: "description_example", value: ["value_example"])]), containerSpec: TaskSpec_ContainerSpec(image: "image_example", labels: "TODO", command: ["command_example"], args: ["args_example"], hostname: "hostname_example", env: ["env_example"], dir: "dir_example", user: "user_example", groups: ["groups_example"], privileges: TaskSpec_ContainerSpec_Privileges(credentialSpec: TaskSpec_ContainerSpec_Privileges_CredentialSpec(config: "config_example", file: "file_example", registry: "registry_example"), sELinuxContext: TaskSpec_ContainerSpec_Privileges_SELinuxContext(disable: false, user: "user_example", role: "role_example", type: "type_example", level: "level_example")), TTY: false, openStdin: false, readOnly: false, mounts: [Mount(target: "target_example", source: "source_example", type: "type_example", readOnly: false, consistency: "consistency_example", bindOptions: Mount_BindOptions(propagation: "propagation_example", nonRecursive: false, createMountpoint: false), volumeOptions: Mount_VolumeOptions(noCopy: false, labels: "TODO", driverConfig: Mount_VolumeOptions_DriverConfig(name: "name_example", options: "TODO")), tmpfsOptions: Mount_TmpfsOptions(sizeBytes: 123, mode: 123))], stopSignal: "stopSignal_example", stopGracePeriod: 123, healthCheck: HealthConfig(test: ["test_example"], interval: 123, timeout: 123, retries: 123, startPeriod: 123), hosts: ["hosts_example"], dNSConfig: TaskSpec_ContainerSpec_DNSConfig(nameservers: ["nameservers_example"], search: ["search_example"], options: ["options_example"]), secrets: [TaskSpec_ContainerSpec_Secrets_inner(file: TaskSpec_ContainerSpec_Secrets_inner_File(name: "name_example", UID: "UID_example", GID: "GID_example", mode: 123), secretID: "secretID_example", secretName: "secretName_example")], configs: [TaskSpec_ContainerSpec_Configs_inner(file: TaskSpec_ContainerSpec_Configs_inner_File(name: "name_example", UID: "UID_example", GID: "GID_example", mode: 123), runtime: 123, configID: "configID_example", configName: "configName_example")], isolation: "isolation_example", _init: false, sysctls: "TODO", capabilityAdd: ["capabilityAdd_example"], capabilityDrop: ["capabilityDrop_example"], ulimits: [Resources_Ulimits_inner(name: "name_example", soft: 123, hard: 123)]), networkAttachmentSpec: TaskSpec_NetworkAttachmentSpec(containerID: "containerID_example"), resources: TaskSpec_Resources(limits: Limit(nanoCPUs: 123, memoryBytes: 123, pids: 123), reservations: ResourceObject(nanoCPUs: 123, memoryBytes: 123, genericResources: [GenericResources_inner(namedResourceSpec: GenericResources_inner_NamedResourceSpec(kind: "kind_example", value: "value_example"), discreteResourceSpec: GenericResources_inner_DiscreteResourceSpec(kind: "kind_example", value: 123))])), restartPolicy: TaskSpec_RestartPolicy(condition: "condition_example", delay: 123, maxAttempts: 123, window: 123), placement: TaskSpec_Placement(constraints: ["constraints_example"], preferences: [TaskSpec_Placement_Preferences_inner(spread: TaskSpec_Placement_Preferences_inner_Spread(spreadDescriptor: "spreadDescriptor_example"))], maxReplicas: 123, platforms: [Platform(architecture: "architecture_example", OS: "OS_example")]), forceUpdate: 123, runtime: "runtime_example", networks: [NetworkAttachmentConfig(target: "target_example", aliases: ["aliases_example"], driverOpts: "TODO")], logDriver: TaskSpec_LogDriver(name: "name_example", options: "TODO")), mode: ServiceSpec_Mode(replicated: ServiceSpec_Mode_Replicated(replicas: 123), global: 123, replicatedJob: ServiceSpec_Mode_ReplicatedJob(maxConcurrent: 123, totalCompletions: 123), globalJob: 123), updateConfig: ServiceSpec_UpdateConfig(parallelism: 123, delay: 123, failureAction: "failureAction_example", monitor: 123, maxFailureRatio: 123, order: "order_example"), rollbackConfig: ServiceSpec_RollbackConfig(parallelism: 123, delay: 123, failureAction: "failureAction_example", monitor: 123, maxFailureRatio: 123, order: "order_example"), networks: [nil], endpointSpec: EndpointSpec(mode: "mode_example", ports: [EndpointPortConfig(name: "name_example", _protocol: "_protocol_example", targetPort: 123, publishedPort: 123, publishMode: "publishMode_example")])) // ServiceCreateRequest | 
let xRegistryAuth = "xRegistryAuth_example" // String | A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details.  (optional)

// Create a service
ServiceAPI.serviceCreate(body: body, xRegistryAuth: xRegistryAuth) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ServiceCreateRequest**](ServiceCreateRequest.md) |  | 
 **xRegistryAuth** | **String** | A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details.  | [optional] 

### Return type

[**ServiceCreateResponse**](ServiceCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceDelete**
```swift
    open class func serviceDelete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a service

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of service.

// Delete a service
ServiceAPI.serviceDelete(id: id) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID or name of service. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceInspect**
```swift
    open class func serviceInspect(id: String, insertDefaults: Bool? = nil, completion: @escaping (_ data: Service?, _ error: Error?) -> Void)
```

Inspect a service

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of service.
let insertDefaults = true // Bool | Fill empty fields with default values. (optional) (default to false)

// Inspect a service
ServiceAPI.serviceInspect(id: id, insertDefaults: insertDefaults) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID or name of service. | 
 **insertDefaults** | **Bool** | Fill empty fields with default values. | [optional] [default to false]

### Return type

[**Service**](Service.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceList**
```swift
    open class func serviceList(filters: String? = nil, status: Bool? = nil, completion: @escaping (_ data: [Service]?, _ error: Error?) -> Void)
```

List services

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the services list.  Available filters:  - `id=<service id>` - `label=<service label>` - `mode=[\"replicated\"|\"global\"]` - `name=<service name>`  (optional)
let status = true // Bool | Include service status, with count of running and desired tasks.  (optional)

// List services
ServiceAPI.serviceList(filters: filters, status: status) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filters** | **String** | A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the services list.  Available filters:  - &#x60;id&#x3D;&lt;service id&gt;&#x60; - &#x60;label&#x3D;&lt;service label&gt;&#x60; - &#x60;mode&#x3D;[\&quot;replicated\&quot;|\&quot;global\&quot;]&#x60; - &#x60;name&#x3D;&lt;service name&gt;&#x60;  | [optional] 
 **status** | **Bool** | Include service status, with count of running and desired tasks.  | [optional] 

### Return type

[**[Service]**](Service.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceLogs**
```swift
    open class func serviceLogs(id: String, details: Bool? = nil, follow: Bool? = nil, stdout: Bool? = nil, stderr: Bool? = nil, since: Int? = nil, timestamps: Bool? = nil, tail: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Get service logs

Get `stdout` and `stderr` logs from a service. See also [`/containers/{id}/logs`](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the `local`, `json-file` or `journald` logging drivers. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the service
let details = true // Bool | Show service context and extra details provided to logs. (optional) (default to false)
let follow = true // Bool | Keep connection after returning logs. (optional) (default to false)
let stdout = true // Bool | Return logs from `stdout` (optional) (default to false)
let stderr = true // Bool | Return logs from `stderr` (optional) (default to false)
let since = 987 // Int | Only return logs since this time, as a UNIX timestamp (optional) (default to 0)
let timestamps = true // Bool | Add timestamps to every log line (optional) (default to false)
let tail = "tail_example" // String | Only return this number of log lines from the end of the logs. Specify as an integer or `all` to output all log lines.  (optional) (default to "all")

// Get service logs
ServiceAPI.serviceLogs(id: id, details: details, follow: follow, stdout: stdout, stderr: stderr, since: since, timestamps: timestamps, tail: tail) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID or name of the service | 
 **details** | **Bool** | Show service context and extra details provided to logs. | [optional] [default to false]
 **follow** | **Bool** | Keep connection after returning logs. | [optional] [default to false]
 **stdout** | **Bool** | Return logs from &#x60;stdout&#x60; | [optional] [default to false]
 **stderr** | **Bool** | Return logs from &#x60;stderr&#x60; | [optional] [default to false]
 **since** | **Int** | Only return logs since this time, as a UNIX timestamp | [optional] [default to 0]
 **timestamps** | **Bool** | Add timestamps to every log line | [optional] [default to false]
 **tail** | **String** | Only return this number of log lines from the end of the logs. Specify as an integer or &#x60;all&#x60; to output all log lines.  | [optional] [default to &quot;all&quot;]

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.docker.raw-stream, application/vnd.docker.multiplexed-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **serviceUpdate**
```swift
    open class func serviceUpdate(id: String, version: Int, body: ServiceUpdateRequest, registryAuthFrom: RegistryAuthFrom_serviceUpdate? = nil, rollback: String? = nil, xRegistryAuth: String? = nil, completion: @escaping (_ data: ServiceUpdateResponse?, _ error: Error?) -> Void)
```

Update a service

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of service.
let version = 987 // Int | The version number of the service object being updated. This is required to avoid conflicting writes. This version number should be the value as currently set on the service *before* the update. You can find the current version by calling `GET /services/{id}` 
let body = ServiceUpdate_request(name: "name_example", labels: "TODO", taskTemplate: TaskSpec(pluginSpec: TaskSpec_PluginSpec(name: "name_example", remote: "remote_example", disabled: false, pluginPrivilege: [PluginPrivilege(name: "name_example", description: "description_example", value: ["value_example"])]), containerSpec: TaskSpec_ContainerSpec(image: "image_example", labels: "TODO", command: ["command_example"], args: ["args_example"], hostname: "hostname_example", env: ["env_example"], dir: "dir_example", user: "user_example", groups: ["groups_example"], privileges: TaskSpec_ContainerSpec_Privileges(credentialSpec: TaskSpec_ContainerSpec_Privileges_CredentialSpec(config: "config_example", file: "file_example", registry: "registry_example"), sELinuxContext: TaskSpec_ContainerSpec_Privileges_SELinuxContext(disable: false, user: "user_example", role: "role_example", type: "type_example", level: "level_example")), TTY: false, openStdin: false, readOnly: false, mounts: [Mount(target: "target_example", source: "source_example", type: "type_example", readOnly: false, consistency: "consistency_example", bindOptions: Mount_BindOptions(propagation: "propagation_example", nonRecursive: false, createMountpoint: false), volumeOptions: Mount_VolumeOptions(noCopy: false, labels: "TODO", driverConfig: Mount_VolumeOptions_DriverConfig(name: "name_example", options: "TODO")), tmpfsOptions: Mount_TmpfsOptions(sizeBytes: 123, mode: 123))], stopSignal: "stopSignal_example", stopGracePeriod: 123, healthCheck: HealthConfig(test: ["test_example"], interval: 123, timeout: 123, retries: 123, startPeriod: 123), hosts: ["hosts_example"], dNSConfig: TaskSpec_ContainerSpec_DNSConfig(nameservers: ["nameservers_example"], search: ["search_example"], options: ["options_example"]), secrets: [TaskSpec_ContainerSpec_Secrets_inner(file: TaskSpec_ContainerSpec_Secrets_inner_File(name: "name_example", UID: "UID_example", GID: "GID_example", mode: 123), secretID: "secretID_example", secretName: "secretName_example")], configs: [TaskSpec_ContainerSpec_Configs_inner(file: TaskSpec_ContainerSpec_Configs_inner_File(name: "name_example", UID: "UID_example", GID: "GID_example", mode: 123), runtime: 123, configID: "configID_example", configName: "configName_example")], isolation: "isolation_example", _init: false, sysctls: "TODO", capabilityAdd: ["capabilityAdd_example"], capabilityDrop: ["capabilityDrop_example"], ulimits: [Resources_Ulimits_inner(name: "name_example", soft: 123, hard: 123)]), networkAttachmentSpec: TaskSpec_NetworkAttachmentSpec(containerID: "containerID_example"), resources: TaskSpec_Resources(limits: Limit(nanoCPUs: 123, memoryBytes: 123, pids: 123), reservations: ResourceObject(nanoCPUs: 123, memoryBytes: 123, genericResources: [GenericResources_inner(namedResourceSpec: GenericResources_inner_NamedResourceSpec(kind: "kind_example", value: "value_example"), discreteResourceSpec: GenericResources_inner_DiscreteResourceSpec(kind: "kind_example", value: 123))])), restartPolicy: TaskSpec_RestartPolicy(condition: "condition_example", delay: 123, maxAttempts: 123, window: 123), placement: TaskSpec_Placement(constraints: ["constraints_example"], preferences: [TaskSpec_Placement_Preferences_inner(spread: TaskSpec_Placement_Preferences_inner_Spread(spreadDescriptor: "spreadDescriptor_example"))], maxReplicas: 123, platforms: [Platform(architecture: "architecture_example", OS: "OS_example")]), forceUpdate: 123, runtime: "runtime_example", networks: [NetworkAttachmentConfig(target: "target_example", aliases: ["aliases_example"], driverOpts: "TODO")], logDriver: TaskSpec_LogDriver(name: "name_example", options: "TODO")), mode: ServiceSpec_Mode(replicated: ServiceSpec_Mode_Replicated(replicas: 123), global: 123, replicatedJob: ServiceSpec_Mode_ReplicatedJob(maxConcurrent: 123, totalCompletions: 123), globalJob: 123), updateConfig: ServiceSpec_UpdateConfig(parallelism: 123, delay: 123, failureAction: "failureAction_example", monitor: 123, maxFailureRatio: 123, order: "order_example"), rollbackConfig: ServiceSpec_RollbackConfig(parallelism: 123, delay: 123, failureAction: "failureAction_example", monitor: 123, maxFailureRatio: 123, order: "order_example"), networks: [nil], endpointSpec: EndpointSpec(mode: "mode_example", ports: [EndpointPortConfig(name: "name_example", _protocol: "_protocol_example", targetPort: 123, publishedPort: 123, publishMode: "publishMode_example")])) // ServiceUpdateRequest | 
let registryAuthFrom = "registryAuthFrom_example" // String | If the `X-Registry-Auth` header is not specified, this parameter indicates where to find registry authorization credentials.  (optional) (default to .spec)
let rollback = "rollback_example" // String | Set to this parameter to `previous` to cause a server-side rollback to the previous service spec. The supplied spec will be ignored in this case.  (optional)
let xRegistryAuth = "xRegistryAuth_example" // String | A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details.  (optional)

// Update a service
ServiceAPI.serviceUpdate(id: id, version: version, body: body, registryAuthFrom: registryAuthFrom, rollback: rollback, xRegistryAuth: xRegistryAuth) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | ID or name of service. | 
 **version** | **Int** | The version number of the service object being updated. This is required to avoid conflicting writes. This version number should be the value as currently set on the service *before* the update. You can find the current version by calling &#x60;GET /services/{id}&#x60;  | 
 **body** | [**ServiceUpdateRequest**](ServiceUpdateRequest.md) |  | 
 **registryAuthFrom** | **String** | If the &#x60;X-Registry-Auth&#x60; header is not specified, this parameter indicates where to find registry authorization credentials.  | [optional] [default to .spec]
 **rollback** | **String** | Set to this parameter to &#x60;previous&#x60; to cause a server-side rollback to the previous service spec. The supplied spec will be ignored in this case.  | [optional] 
 **xRegistryAuth** | **String** | A base64url-encoded auth configuration for pulling from private registries.  Refer to the [authentication section](#section/Authentication) for details.  | [optional] 

### Return type

[**ServiceUpdateResponse**](ServiceUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

