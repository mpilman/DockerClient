# SecretAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**secretCreate**](SecretAPI.md#secretcreate) | **POST** /secrets/create | Create a secret
[**secretDelete**](SecretAPI.md#secretdelete) | **DELETE** /secrets/{id} | Delete a secret
[**secretInspect**](SecretAPI.md#secretinspect) | **GET** /secrets/{id} | Inspect a secret
[**secretList**](SecretAPI.md#secretlist) | **GET** /secrets | List secrets
[**secretUpdate**](SecretAPI.md#secretupdate) | **POST** /secrets/{id}/update | Update a Secret


# **secretCreate**
```swift
    open class func secretCreate(body: SecretCreateRequest? = nil, completion: @escaping (_ data: IdResponse?, _ error: Error?) -> Void)
```

Create a secret

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = SecretCreate_request(name: "name_example", labels: "TODO", data: "", driver: Driver(name: "name_example", options: "TODO"), templating: nil) // SecretCreateRequest |  (optional)

// Create a secret
SecretAPI.secretCreate(body: body) { (response, error) in
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
 **body** | [**SecretCreateRequest**](SecretCreateRequest.md) |  | [optional] 

### Return type

[**IdResponse**](IdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **secretDelete**
```swift
    open class func secretDelete(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a secret

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID of the secret

// Delete a secret
SecretAPI.secretDelete(id: id) { (response, error) in
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
 **id** | **String** | ID of the secret | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **secretInspect**
```swift
    open class func secretInspect(id: String, completion: @escaping (_ data: Secret?, _ error: Error?) -> Void)
```

Inspect a secret

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID of the secret

// Inspect a secret
SecretAPI.secretInspect(id: id) { (response, error) in
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
 **id** | **String** | ID of the secret | 

### Return type

[**Secret**](Secret.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **secretList**
```swift
    open class func secretList(filters: String? = nil, completion: @escaping (_ data: [Secret]?, _ error: Error?) -> Void)
```

List secrets

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the secrets list.  Available filters:  - `id=<secret id>` - `label=<key> or label=<key>=value` - `name=<secret name>` - `names=<secret name>`  (optional)

// List secrets
SecretAPI.secretList(filters: filters) { (response, error) in
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
 **filters** | **String** | A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the secrets list.  Available filters:  - &#x60;id&#x3D;&lt;secret id&gt;&#x60; - &#x60;label&#x3D;&lt;key&gt; or label&#x3D;&lt;key&gt;&#x3D;value&#x60; - &#x60;name&#x3D;&lt;secret name&gt;&#x60; - &#x60;names&#x3D;&lt;secret name&gt;&#x60;  | [optional] 

### Return type

[**[Secret]**](Secret.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **secretUpdate**
```swift
    open class func secretUpdate(id: String, version: Int64, body: SecretSpec? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a Secret

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID or name of the secret
let version = 987 // Int64 | The version number of the secret object being updated. This is required to avoid conflicting writes. 
let body = SecretSpec(name: "name_example", labels: "TODO", data: "", driver: Driver(name: "name_example", options: "TODO"), templating: nil) // SecretSpec | The spec of the secret to update. Currently, only the Labels field can be updated. All other fields must remain unchanged from the [SecretInspect endpoint](#operation/SecretInspect) response values.  (optional)

// Update a Secret
SecretAPI.secretUpdate(id: id, version: version, body: body) { (response, error) in
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
 **id** | **String** | The ID or name of the secret | 
 **version** | **Int64** | The version number of the secret object being updated. This is required to avoid conflicting writes.  | 
 **body** | [**SecretSpec**](SecretSpec.md) | The spec of the secret to update. Currently, only the Labels field can be updated. All other fields must remain unchanged from the [SecretInspect endpoint](#operation/SecretInspect) response values.  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

