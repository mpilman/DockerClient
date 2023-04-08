# NodeAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nodeDelete**](NodeAPI.md#nodedelete) | **DELETE** /nodes/{id} | Delete a node
[**nodeInspect**](NodeAPI.md#nodeinspect) | **GET** /nodes/{id} | Inspect a node
[**nodeList**](NodeAPI.md#nodelist) | **GET** /nodes | List nodes
[**nodeUpdate**](NodeAPI.md#nodeupdate) | **POST** /nodes/{id}/update | Update a node


# **nodeDelete**
```swift
    open class func nodeDelete(id: String, force: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete a node

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID or name of the node
let force = true // Bool | Force remove a node from the swarm (optional) (default to false)

// Delete a node
NodeAPI.nodeDelete(id: id, force: force) { (response, error) in
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
 **id** | **String** | The ID or name of the node | 
 **force** | **Bool** | Force remove a node from the swarm | [optional] [default to false]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nodeInspect**
```swift
    open class func nodeInspect(id: String, completion: @escaping (_ data: Node?, _ error: Error?) -> Void)
```

Inspect a node

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID or name of the node

// Inspect a node
NodeAPI.nodeInspect(id: id) { (response, error) in
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
 **id** | **String** | The ID or name of the node | 

### Return type

[**Node**](Node.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nodeList**
```swift
    open class func nodeList(filters: String? = nil, completion: @escaping (_ data: [Node]?, _ error: Error?) -> Void)
```

List nodes

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | Filters to process on the nodes list, encoded as JSON (a `map[string][]string`).  Available filters: - `id=<node id>` - `label=<engine label>` - `membership=`(`accepted`|`pending`)` - `name=<node name>` - `node.label=<node label>` - `role=`(`manager`|`worker`)`  (optional)

// List nodes
NodeAPI.nodeList(filters: filters) { (response, error) in
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
 **filters** | **String** | Filters to process on the nodes list, encoded as JSON (a &#x60;map[string][]string&#x60;).  Available filters: - &#x60;id&#x3D;&lt;node id&gt;&#x60; - &#x60;label&#x3D;&lt;engine label&gt;&#x60; - &#x60;membership&#x3D;&#x60;(&#x60;accepted&#x60;|&#x60;pending&#x60;)&#x60; - &#x60;name&#x3D;&lt;node name&gt;&#x60; - &#x60;node.label&#x3D;&lt;node label&gt;&#x60; - &#x60;role&#x3D;&#x60;(&#x60;manager&#x60;|&#x60;worker&#x60;)&#x60;  | [optional] 

### Return type

[**[Node]**](Node.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nodeUpdate**
```swift
    open class func nodeUpdate(id: String, version: Int64, body: NodeSpec? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a node

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | The ID of the node
let version = 987 // Int64 | The version number of the node object being updated. This is required to avoid conflicting writes. 
let body = NodeSpec(name: "name_example", labels: "TODO", role: "role_example", availability: "availability_example") // NodeSpec |  (optional)

// Update a node
NodeAPI.nodeUpdate(id: id, version: version, body: body) { (response, error) in
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
 **id** | **String** | The ID of the node | 
 **version** | **Int64** | The version number of the node object being updated. This is required to avoid conflicting writes.  | 
 **body** | [**NodeSpec**](NodeSpec.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

