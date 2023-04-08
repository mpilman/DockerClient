# ConfigAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configCreate**](ConfigAPI.md#configcreate) | **POST** /configs/create | Create a config
[**configDelete**](ConfigAPI.md#configdelete) | **DELETE** /configs/{id} | Delete a config
[**configInspect**](ConfigAPI.md#configinspect) | **GET** /configs/{id} | Inspect a config
[**configList**](ConfigAPI.md#configlist) | **GET** /configs | List configs
[**configUpdate**](ConfigAPI.md#configupdate) | **POST** /configs/{id}/update | Update a Config


# **configCreate**
```swift
    open class func configCreate(body: ConfigCreateRequest? = nil, completion: @escaping (_ data: IdResponse?, _ error: Error?) -> Void)
```

Create a config

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = ConfigCreate_request(name: "name_example", labels: "TODO", data: "data_example", templating: Driver(name: "name_example", options: "TODO")) // ConfigCreateRequest |  (optional)

// Create a config
ConfigAPI.configCreate(body: body) { (response, error) in
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
 **body** | [**ConfigCreateRequest**](ConfigCreateRequest.md) |  | [optional] 

### Return type

[**IdResponse**](IdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configDelete**
```swift
    open class func configDelete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a config

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID of the config

// Delete a config
ConfigAPI.configDelete(id: id) { (response, error) in
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
 **id** | **String** | ID of the config | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configInspect**
```swift
    open class func configInspect(id: String, completion: @escaping (_ data: Config?, _ error: Error?) -> Void)
```

Inspect a config

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID of the config

// Inspect a config
ConfigAPI.configInspect(id: id) { (response, error) in
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
 **id** | **String** | ID of the config | 

### Return type

[**Config**](Config.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configList**
```swift
    open class func configList(filters: String? = nil, completion: @escaping (_ data: [Config]?, _ error: Error?) -> Void)
```

List configs

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the configs list.  Available filters:  - `id=<config id>` - `label=<key> or label=<key>=value` - `name=<config name>` - `names=<config name>`  (optional)

// List configs
ConfigAPI.configList(filters: filters) { (response, error) in
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
 **filters** | **String** | A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the configs list.  Available filters:  - &#x60;id&#x3D;&lt;config id&gt;&#x60; - &#x60;label&#x3D;&lt;key&gt; or label&#x3D;&lt;key&gt;&#x3D;value&#x60; - &#x60;name&#x3D;&lt;config name&gt;&#x60; - &#x60;names&#x3D;&lt;config name&gt;&#x60;  | [optional] 

### Return type

[**[Config]**](Config.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configUpdate**
```swift
    open class func configUpdate(id: String, version: Int64, body: ConfigSpec? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a Config

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID or name of the config
let version = 987 // Int64 | The version number of the config object being updated. This is required to avoid conflicting writes. 
let body = ConfigSpec(name: "name_example", labels: "TODO", data: "data_example", templating: Driver(name: "name_example", options: "TODO")) // ConfigSpec | The spec of the config to update. Currently, only the Labels field can be updated. All other fields must remain unchanged from the [ConfigInspect endpoint](#operation/ConfigInspect) response values.  (optional)

// Update a Config
ConfigAPI.configUpdate(id: id, version: version, body: body) { (response, error) in
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
 **id** | **String** | The ID or name of the config | 
 **version** | **Int64** | The version number of the config object being updated. This is required to avoid conflicting writes.  | 
 **body** | [**ConfigSpec**](ConfigSpec.md) | The spec of the config to update. Currently, only the Labels field can be updated. All other fields must remain unchanged from the [ConfigInspect endpoint](#operation/ConfigInspect) response values.  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

