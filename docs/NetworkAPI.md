# NetworkAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**networkConnect**](NetworkAPI.md#networkconnect) | **POST** /networks/{id}/connect | Connect a container to a network
[**networkCreate**](NetworkAPI.md#networkcreate) | **POST** /networks/create | Create a network
[**networkDelete**](NetworkAPI.md#networkdelete) | **DELETE** /networks/{id} | Remove a network
[**networkDisconnect**](NetworkAPI.md#networkdisconnect) | **POST** /networks/{id}/disconnect | Disconnect a container from a network
[**networkInspect**](NetworkAPI.md#networkinspect) | **GET** /networks/{id} | Inspect a network
[**networkList**](NetworkAPI.md#networklist) | **GET** /networks | List networks
[**networkPrune**](NetworkAPI.md#networkprune) | **POST** /networks/prune | Delete unused networks


# **networkConnect**
```swift
    open class func networkConnect(id: String, container: NetworkConnectRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Connect a container to a network

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Network ID or name
let container = NetworkConnectRequest(container: "container_example", endpointConfig: EndpointSettings(iPAMConfig: EndpointIPAMConfig(iPv4Address: "iPv4Address_example", iPv6Address: "iPv6Address_example", linkLocalIPs: ["linkLocalIPs_example"]), links: ["links_example"], aliases: ["aliases_example"], networkID: "networkID_example", endpointID: "endpointID_example", gateway: "gateway_example", iPAddress: "iPAddress_example", iPPrefixLen: 123, iPv6Gateway: "iPv6Gateway_example", globalIPv6Address: "globalIPv6Address_example", globalIPv6PrefixLen: 123, macAddress: "macAddress_example", driverOpts: "TODO")) // NetworkConnectRequest | 

// Connect a container to a network
NetworkAPI.networkConnect(id: id, container: container) { (response, error) in
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
 **id** | **String** | Network ID or name | 
 **container** | [**NetworkConnectRequest**](NetworkConnectRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **networkCreate**
```swift
    open class func networkCreate(networkConfig: NetworkCreateRequest, completion: @escaping (_ data: NetworkCreateResponse?, _ error: Error?) -> Void)
```

Create a network

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let networkConfig = NetworkCreateRequest(name: "name_example", checkDuplicate: false, driver: "driver_example", _internal: false, attachable: false, ingress: false, IPAM: IPAM(driver: "driver_example", config: [IPAMConfig(subnet: "subnet_example", iPRange: "iPRange_example", gateway: "gateway_example", auxiliaryAddresses: "TODO")], options: "TODO"), enableIPv6: false, options: "TODO", labels: "TODO") // NetworkCreateRequest | Network configuration

// Create a network
NetworkAPI.networkCreate(networkConfig: networkConfig) { (response, error) in
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
 **networkConfig** | [**NetworkCreateRequest**](NetworkCreateRequest.md) | Network configuration | 

### Return type

[**NetworkCreateResponse**](NetworkCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **networkDelete**
```swift
    open class func networkDelete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove a network

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Network ID or name

// Remove a network
NetworkAPI.networkDelete(id: id) { (response, error) in
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
 **id** | **String** | Network ID or name | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **networkDisconnect**
```swift
    open class func networkDisconnect(id: String, container: NetworkDisconnectRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Disconnect a container from a network

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Network ID or name
let container = NetworkDisconnectRequest(container: "container_example", force: false) // NetworkDisconnectRequest | 

// Disconnect a container from a network
NetworkAPI.networkDisconnect(id: id, container: container) { (response, error) in
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
 **id** | **String** | Network ID or name | 
 **container** | [**NetworkDisconnectRequest**](NetworkDisconnectRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **networkInspect**
```swift
    open class func networkInspect(id: String, verbose: Bool? = nil, scope: String? = nil, completion: @escaping (_ data: Network?, _ error: Error?) -> Void)
```

Inspect a network

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Network ID or name
let verbose = true // Bool | Detailed inspect output for troubleshooting (optional) (default to false)
let scope = "scope_example" // String | Filter the network by scope (swarm, global, or local) (optional)

// Inspect a network
NetworkAPI.networkInspect(id: id, verbose: verbose, scope: scope) { (response, error) in
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
 **id** | **String** | Network ID or name | 
 **verbose** | **Bool** | Detailed inspect output for troubleshooting | [optional] [default to false]
 **scope** | **String** | Filter the network by scope (swarm, global, or local) | [optional] 

### Return type

[**Network**](Network.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **networkList**
```swift
    open class func networkList(filters: String? = nil, completion: @escaping (_ data: [Network]?, _ error: Error?) -> Void)
```

List networks

Returns a list of networks. For details on the format, see the [network inspect endpoint](#operation/NetworkInspect).  Note that it uses a different, smaller representation of a network than inspecting a single network. For example, the list of containers attached to the network is not propagated in API versions 1.28 and up. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | JSON encoded value of the filters (a `map[string][]string`) to process on the networks list.  Available filters:  - `dangling=<boolean>` When set to `true` (or `1`), returns all    networks that are not in use by a container. When set to `false`    (or `0`), only networks that are in use by one or more    containers are returned. - `driver=<driver-name>` Matches a network's driver. - `id=<network-id>` Matches all or part of a network ID. - `label=<key>` or `label=<key>=<value>` of a network label. - `name=<network-name>` Matches all or part of a network name. - `scope=[\"swarm\"|\"global\"|\"local\"]` Filters networks by scope (`swarm`, `global`, or `local`). - `type=[\"custom\"|\"builtin\"]` Filters networks by type. The `custom` keyword returns all user-defined networks.  (optional)

// List networks
NetworkAPI.networkList(filters: filters) { (response, error) in
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
 **filters** | **String** | JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the networks list.  Available filters:  - &#x60;dangling&#x3D;&lt;boolean&gt;&#x60; When set to &#x60;true&#x60; (or &#x60;1&#x60;), returns all    networks that are not in use by a container. When set to &#x60;false&#x60;    (or &#x60;0&#x60;), only networks that are in use by one or more    containers are returned. - &#x60;driver&#x3D;&lt;driver-name&gt;&#x60; Matches a network&#39;s driver. - &#x60;id&#x3D;&lt;network-id&gt;&#x60; Matches all or part of a network ID. - &#x60;label&#x3D;&lt;key&gt;&#x60; or &#x60;label&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60; of a network label. - &#x60;name&#x3D;&lt;network-name&gt;&#x60; Matches all or part of a network name. - &#x60;scope&#x3D;[\&quot;swarm\&quot;|\&quot;global\&quot;|\&quot;local\&quot;]&#x60; Filters networks by scope (&#x60;swarm&#x60;, &#x60;global&#x60;, or &#x60;local&#x60;). - &#x60;type&#x3D;[\&quot;custom\&quot;|\&quot;builtin\&quot;]&#x60; Filters networks by type. The &#x60;custom&#x60; keyword returns all user-defined networks.  | [optional] 

### Return type

[**[Network]**](Network.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **networkPrune**
```swift
    open class func networkPrune(filters: String? = nil, completion: @escaping (_ data: NetworkPruneResponse?, _ error: Error?) -> Void)
```

Delete unused networks

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters: - `until=<timestamp>` Prune networks created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time. - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune networks with (or without, in case `label!=...` is used) the specified labels.  (optional)

// Delete unused networks
NetworkAPI.networkPrune(filters: filters) { (response, error) in
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
 **filters** | **String** | Filters to process on the prune list, encoded as JSON (a &#x60;map[string][]string&#x60;).  Available filters: - &#x60;until&#x3D;&lt;timestamp&gt;&#x60; Prune networks created before this timestamp. The &#x60;&lt;timestamp&gt;&#x60; can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. &#x60;10m&#x60;, &#x60;1h30m&#x60;) computed relative to the daemon machine’s time. - &#x60;label&#x60; (&#x60;label&#x3D;&lt;key&gt;&#x60;, &#x60;label&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;, &#x60;label!&#x3D;&lt;key&gt;&#x60;, or &#x60;label!&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;) Prune networks with (or without, in case &#x60;label!&#x3D;...&#x60; is used) the specified labels.  | [optional] 

### Return type

[**NetworkPruneResponse**](NetworkPruneResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

