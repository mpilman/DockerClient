# VolumeAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**volumeCreate**](VolumeAPI.md#volumecreate) | **POST** /volumes/create | Create a volume
[**volumeDelete**](VolumeAPI.md#volumedelete) | **DELETE** /volumes/{name} | Remove a volume
[**volumeInspect**](VolumeAPI.md#volumeinspect) | **GET** /volumes/{name} | Inspect a volume
[**volumeList**](VolumeAPI.md#volumelist) | **GET** /volumes | List volumes
[**volumePrune**](VolumeAPI.md#volumeprune) | **POST** /volumes/prune | Delete unused volumes
[**volumeUpdate**](VolumeAPI.md#volumeupdate) | **PUT** /volumes/{name} | \&quot;Update a volume. Valid only for Swarm cluster volumes\&quot; 


# **volumeCreate**
```swift
    open class func volumeCreate(volumeConfig: VolumeCreateOptions, completion: @escaping (_ data: Volume?, _ error: Error?) -> Void)
```

Create a volume

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let volumeConfig = VolumeCreateOptions(name: "name_example", driver: "driver_example", driverOpts: "TODO", labels: "TODO", clusterVolumeSpec: ClusterVolumeSpec(group: "group_example", accessMode: ClusterVolumeSpec_AccessMode(scope: "scope_example", sharing: "sharing_example", mountVolume: 123, secrets: [ClusterVolumeSpec_AccessMode_Secrets_inner(key: "key_example", secret: "secret_example")], accessibilityRequirements: ClusterVolumeSpec_AccessMode_AccessibilityRequirements(requisite: ["TODO"], preferred: ["TODO"]), capacityRange: ClusterVolumeSpec_AccessMode_CapacityRange(requiredBytes: 123, limitBytes: 123), availability: "availability_example"))) // VolumeCreateOptions | Volume configuration

// Create a volume
VolumeAPI.volumeCreate(volumeConfig: volumeConfig) { (response, error) in
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
 **volumeConfig** | [**VolumeCreateOptions**](VolumeCreateOptions.md) | Volume configuration | 

### Return type

[**Volume**](Volume.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **volumeDelete**
```swift
    open class func volumeDelete(name: String, force: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove a volume

Instruct the driver to remove the volume.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Volume name or ID
let force = true // Bool | Force the removal of the volume (optional) (default to false)

// Remove a volume
VolumeAPI.volumeDelete(name: name, force: force) { (response, error) in
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
 **name** | **String** | Volume name or ID | 
 **force** | **Bool** | Force the removal of the volume | [optional] [default to false]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **volumeInspect**
```swift
    open class func volumeInspect(name: String, completion: @escaping (_ data: Volume?, _ error: Error?) -> Void)
```

Inspect a volume

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Volume name or ID

// Inspect a volume
VolumeAPI.volumeInspect(name: name) { (response, error) in
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
 **name** | **String** | Volume name or ID | 

### Return type

[**Volume**](Volume.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **volumeList**
```swift
    open class func volumeList(filters: String? = nil, completion: @escaping (_ data: VolumeListResponse?, _ error: Error?) -> Void)
```

List volumes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | JSON encoded value of the filters (a `map[string][]string`) to process on the volumes list. Available filters:  - `dangling=<boolean>` When set to `true` (or `1`), returns all    volumes that are not in use by a container. When set to `false`    (or `0`), only volumes that are in use by one or more    containers are returned. - `driver=<volume-driver-name>` Matches volumes based on their driver. - `label=<key>` or `label=<key>:<value>` Matches volumes based on    the presence of a `label` alone or a `label` and a value. - `name=<volume-name>` Matches all or part of a volume name.  (optional)

// List volumes
VolumeAPI.volumeList(filters: filters) { (response, error) in
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
 **filters** | **String** | JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the volumes list. Available filters:  - &#x60;dangling&#x3D;&lt;boolean&gt;&#x60; When set to &#x60;true&#x60; (or &#x60;1&#x60;), returns all    volumes that are not in use by a container. When set to &#x60;false&#x60;    (or &#x60;0&#x60;), only volumes that are in use by one or more    containers are returned. - &#x60;driver&#x3D;&lt;volume-driver-name&gt;&#x60; Matches volumes based on their driver. - &#x60;label&#x3D;&lt;key&gt;&#x60; or &#x60;label&#x3D;&lt;key&gt;:&lt;value&gt;&#x60; Matches volumes based on    the presence of a &#x60;label&#x60; alone or a &#x60;label&#x60; and a value. - &#x60;name&#x3D;&lt;volume-name&gt;&#x60; Matches all or part of a volume name.  | [optional] 

### Return type

[**VolumeListResponse**](VolumeListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **volumePrune**
```swift
    open class func volumePrune(filters: String? = nil, completion: @escaping (_ data: VolumePruneResponse?, _ error: Error?) -> Void)
```

Delete unused volumes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters: - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune volumes with (or without, in case `label!=...` is used) the specified labels. - `all` (`all=true`) - Consider all (local) volumes for pruning and not just anonymous volumes.  (optional)

// Delete unused volumes
VolumeAPI.volumePrune(filters: filters) { (response, error) in
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
 **filters** | **String** | Filters to process on the prune list, encoded as JSON (a &#x60;map[string][]string&#x60;).  Available filters: - &#x60;label&#x60; (&#x60;label&#x3D;&lt;key&gt;&#x60;, &#x60;label&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;, &#x60;label!&#x3D;&lt;key&gt;&#x60;, or &#x60;label!&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;) Prune volumes with (or without, in case &#x60;label!&#x3D;...&#x60; is used) the specified labels. - &#x60;all&#x60; (&#x60;all&#x3D;true&#x60;) - Consider all (local) volumes for pruning and not just anonymous volumes.  | [optional] 

### Return type

[**VolumePruneResponse**](VolumePruneResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **volumeUpdate**
```swift
    open class func volumeUpdate(name: String, version: Int64, body: VolumeUpdateRequest? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

\"Update a volume. Valid only for Swarm cluster volumes\" 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The name or ID of the volume
let version = 987 // Int64 | The version number of the volume being updated. This is required to avoid conflicting writes. Found in the volume's `ClusterVolume` field. 
let body = VolumeUpdate_request(spec: ClusterVolumeSpec(group: "group_example", accessMode: ClusterVolumeSpec_AccessMode(scope: "scope_example", sharing: "sharing_example", mountVolume: 123, secrets: [ClusterVolumeSpec_AccessMode_Secrets_inner(key: "key_example", secret: "secret_example")], accessibilityRequirements: ClusterVolumeSpec_AccessMode_AccessibilityRequirements(requisite: ["TODO"], preferred: ["TODO"]), capacityRange: ClusterVolumeSpec_AccessMode_CapacityRange(requiredBytes: 123, limitBytes: 123), availability: "availability_example"))) // VolumeUpdateRequest | The spec of the volume to update. Currently, only Availability may change. All other fields must remain unchanged.  (optional)

// \"Update a volume. Valid only for Swarm cluster volumes\" 
VolumeAPI.volumeUpdate(name: name, version: version, body: body) { (response, error) in
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
 **name** | **String** | The name or ID of the volume | 
 **version** | **Int64** | The version number of the volume being updated. This is required to avoid conflicting writes. Found in the volume&#39;s &#x60;ClusterVolume&#x60; field.  | 
 **body** | [**VolumeUpdateRequest**](VolumeUpdateRequest.md) | The spec of the volume to update. Currently, only Availability may change. All other fields must remain unchanged.  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

