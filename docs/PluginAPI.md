# PluginAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPluginPrivileges**](PluginAPI.md#getpluginprivileges) | **GET** /plugins/privileges | Get plugin privileges
[**pluginCreate**](PluginAPI.md#plugincreate) | **POST** /plugins/create | Create a plugin
[**pluginDelete**](PluginAPI.md#plugindelete) | **DELETE** /plugins/{name} | Remove a plugin
[**pluginDisable**](PluginAPI.md#plugindisable) | **POST** /plugins/{name}/disable | Disable a plugin
[**pluginEnable**](PluginAPI.md#pluginenable) | **POST** /plugins/{name}/enable | Enable a plugin
[**pluginInspect**](PluginAPI.md#plugininspect) | **GET** /plugins/{name}/json | Inspect a plugin
[**pluginList**](PluginAPI.md#pluginlist) | **GET** /plugins | List plugins
[**pluginPull**](PluginAPI.md#pluginpull) | **POST** /plugins/pull | Install a plugin
[**pluginPush**](PluginAPI.md#pluginpush) | **POST** /plugins/{name}/push | Push a plugin
[**pluginSet**](PluginAPI.md#pluginset) | **POST** /plugins/{name}/set | Configure a plugin
[**pluginUpgrade**](PluginAPI.md#pluginupgrade) | **POST** /plugins/{name}/upgrade | Upgrade a plugin


# **getPluginPrivileges**
```swift
    open class func getPluginPrivileges(remote: String, completion: @escaping (_ data: [PluginPrivilege]?, _ error: Error?) -> Void)
```

Get plugin privileges

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let remote = "remote_example" // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 

// Get plugin privileges
PluginAPI.getPluginPrivileges(remote: remote) { (response, error) in
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
 **remote** | **String** | The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | 

### Return type

[**[PluginPrivilege]**](PluginPrivilege.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginCreate**
```swift
    open class func pluginCreate(name: String, tarContext: URL? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create a plugin

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 
let tarContext = URL(string: "https://example.com")! // URL | Path to tar containing plugin rootfs and manifest (optional)

// Create a plugin
PluginAPI.pluginCreate(name: name, tarContext: tarContext) { (response, error) in
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
 **name** | **String** | The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | 
 **tarContext** | **URL** | Path to tar containing plugin rootfs and manifest | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-tar
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginDelete**
```swift
    open class func pluginDelete(name: String, force: Bool? = nil, completion: @escaping (_ data: Plugin?, _ error: Error?) -> Void)
```

Remove a plugin

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 
let force = true // Bool | Disable the plugin before removing. This may result in issues if the plugin is in use by a container.  (optional) (default to false)

// Remove a plugin
PluginAPI.pluginDelete(name: name, force: force) { (response, error) in
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
 **name** | **String** | The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | 
 **force** | **Bool** | Disable the plugin before removing. This may result in issues if the plugin is in use by a container.  | [optional] [default to false]

### Return type

[**Plugin**](Plugin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginDisable**
```swift
    open class func pluginDisable(name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Disable a plugin

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 

// Disable a plugin
PluginAPI.pluginDisable(name: name) { (response, error) in
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
 **name** | **String** | The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginEnable**
```swift
    open class func pluginEnable(name: String, timeout: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Enable a plugin

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 
let timeout = 987 // Int | Set the HTTP client timeout (in seconds) (optional) (default to 0)

// Enable a plugin
PluginAPI.pluginEnable(name: name, timeout: timeout) { (response, error) in
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
 **name** | **String** | The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | 
 **timeout** | **Int** | Set the HTTP client timeout (in seconds) | [optional] [default to 0]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginInspect**
```swift
    open class func pluginInspect(name: String, completion: @escaping (_ data: Plugin?, _ error: Error?) -> Void)
```

Inspect a plugin

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 

// Inspect a plugin
PluginAPI.pluginInspect(name: name) { (response, error) in
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
 **name** | **String** | The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | 

### Return type

[**Plugin**](Plugin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginList**
```swift
    open class func pluginList(filters: String? = nil, completion: @escaping (_ data: [Plugin]?, _ error: Error?) -> Void)
```

List plugins

Returns information about installed plugins.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the plugin list.  Available filters:  - `capability=<capability name>` - `enable=<true>|<false>`  (optional)

// List plugins
PluginAPI.pluginList(filters: filters) { (response, error) in
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
 **filters** | **String** | A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the plugin list.  Available filters:  - &#x60;capability&#x3D;&lt;capability name&gt;&#x60; - &#x60;enable&#x3D;&lt;true&gt;|&lt;false&gt;&#x60;  | [optional] 

### Return type

[**[Plugin]**](Plugin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginPull**
```swift
    open class func pluginPull(remote: String, name: String? = nil, xRegistryAuth: String? = nil, body: [PluginPrivilege]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Install a plugin

Pulls and installs a plugin. After the plugin is installed, it can be enabled using the [`POST /plugins/{name}/enable` endpoint](#operation/PostPluginsEnable). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let remote = "remote_example" // String | Remote reference for plugin to install.  The `:latest` tag is optional, and is used as the default if omitted. 
let name = "name_example" // String | Local name for the pulled plugin.  The `:latest` tag is optional, and is used as the default if omitted.  (optional)
let xRegistryAuth = "xRegistryAuth_example" // String | A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.  (optional)
let body = [PluginPrivilege(name: "name_example", description: "description_example", value: ["value_example"])] // [PluginPrivilege] |  (optional)

// Install a plugin
PluginAPI.pluginPull(remote: remote, name: name, xRegistryAuth: xRegistryAuth, body: body) { (response, error) in
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
 **remote** | **String** | Remote reference for plugin to install.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  | 
 **name** | **String** | Local name for the pulled plugin.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  | [optional] 
 **xRegistryAuth** | **String** | A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.  | [optional] 
 **body** | [**[PluginPrivilege]**](PluginPrivilege.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginPush**
```swift
    open class func pluginPush(name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Push a plugin

Push a plugin to the registry. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 

// Push a plugin
PluginAPI.pluginPush(name: name) { (response, error) in
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
 **name** | **String** | The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginSet**
```swift
    open class func pluginSet(name: String, body: [String]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Configure a plugin

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 
let body = ["property_example"] // [String] |  (optional)

// Configure a plugin
PluginAPI.pluginSet(name: name, body: body) { (response, error) in
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
 **name** | **String** | The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | 
 **body** | [**[String]**](String.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pluginUpgrade**
```swift
    open class func pluginUpgrade(name: String, remote: String, xRegistryAuth: String? = nil, body: [PluginPrivilege]? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Upgrade a plugin

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | The name of the plugin. The `:latest` tag is optional, and is the default if omitted. 
let remote = "remote_example" // String | Remote reference to upgrade to.  The `:latest` tag is optional, and is used as the default if omitted. 
let xRegistryAuth = "xRegistryAuth_example" // String | A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.  (optional)
let body = [PluginPrivilege(name: "name_example", description: "description_example", value: ["value_example"])] // [PluginPrivilege] |  (optional)

// Upgrade a plugin
PluginAPI.pluginUpgrade(name: name, remote: remote, xRegistryAuth: xRegistryAuth, body: body) { (response, error) in
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
 **name** | **String** | The name of the plugin. The &#x60;:latest&#x60; tag is optional, and is the default if omitted.  | 
 **remote** | **String** | Remote reference to upgrade to.  The &#x60;:latest&#x60; tag is optional, and is used as the default if omitted.  | 
 **xRegistryAuth** | **String** | A base64url-encoded auth configuration to use when pulling a plugin from a registry.  Refer to the [authentication section](#section/Authentication) for details.  | [optional] 
 **body** | [**[PluginPrivilege]**](PluginPrivilege.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

