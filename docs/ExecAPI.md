# ExecAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**containerExec**](ExecAPI.md#containerexec) | **POST** /containers/{id}/exec | Create an exec instance
[**execInspect**](ExecAPI.md#execinspect) | **GET** /exec/{id}/json | Inspect an exec instance
[**execResize**](ExecAPI.md#execresize) | **POST** /exec/{id}/resize | Resize an exec instance
[**execStart**](ExecAPI.md#execstart) | **POST** /exec/{id}/start | Start an exec instance


# **containerExec**
```swift
    open class func containerExec(id: String, execConfig: ExecConfig, completion: @escaping (_ data: IdResponse?, _ error: Error?) -> Void)
```

Create an exec instance

Run a command inside a running container.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of container
let execConfig = ExecConfig(attachStdin: false, attachStdout: false, attachStderr: false, consoleSize: [123], detachKeys: "detachKeys_example", tty: false, env: ["env_example"], cmd: ["cmd_example"], privileged: false, user: "user_example", workingDir: "workingDir_example") // ExecConfig | Exec configuration

// Create an exec instance
ExecAPI.containerExec(id: id, execConfig: execConfig) { (response, error) in
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
 **id** | **String** | ID or name of container | 
 **execConfig** | [**ExecConfig**](ExecConfig.md) | Exec configuration | 

### Return type

[**IdResponse**](IdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execInspect**
```swift
    open class func execInspect(id: String, completion: @escaping (_ data: ExecInspectResponse?, _ error: Error?) -> Void)
```

Inspect an exec instance

Return low-level information about an exec instance.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Exec instance ID

// Inspect an exec instance
ExecAPI.execInspect(id: id) { (response, error) in
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
 **id** | **String** | Exec instance ID | 

### Return type

[**ExecInspectResponse**](ExecInspectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execResize**
```swift
    open class func execResize(id: String, h: Int? = nil, w: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Resize an exec instance

Resize the TTY session used by an exec instance. This endpoint only works if `tty` was specified as part of creating and starting the exec instance. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Exec instance ID
let h = 987 // Int | Height of the TTY session in characters (optional)
let w = 987 // Int | Width of the TTY session in characters (optional)

// Resize an exec instance
ExecAPI.execResize(id: id, h: h, w: w) { (response, error) in
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
 **id** | **String** | Exec instance ID | 
 **h** | **Int** | Height of the TTY session in characters | [optional] 
 **w** | **Int** | Width of the TTY session in characters | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execStart**
```swift
    open class func execStart(id: String, execStartConfig: ExecStartConfig? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Start an exec instance

Starts a previously set up exec instance. If detach is true, this endpoint returns immediately after starting the command. Otherwise, it sets up an interactive session with the command. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | Exec instance ID
let execStartConfig = ExecStartConfig(detach: false, tty: false, consoleSize: [123]) // ExecStartConfig |  (optional)

// Start an exec instance
ExecAPI.execStart(id: id, execStartConfig: execStartConfig) { (response, error) in
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
 **id** | **String** | Exec instance ID | 
 **execStartConfig** | [**ExecStartConfig**](ExecStartConfig.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/vnd.docker.raw-stream, application/vnd.docker.multiplexed-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

