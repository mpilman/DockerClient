# TaskAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**taskInspect**](TaskAPI.md#taskinspect) | **GET** /tasks/{id} | Inspect a task
[**taskList**](TaskAPI.md#tasklist) | **GET** /tasks | List tasks
[**taskLogs**](TaskAPI.md#tasklogs) | **GET** /tasks/{id}/logs | Get task logs


# **taskInspect**
```swift
    open class func taskInspect(id: String, completion: @escaping (_ data: Task?, _ error: Error?) -> Void)
```

Inspect a task

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID of the task

// Inspect a task
TaskAPI.taskInspect(id: id) { (response, error) in
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
 **id** | **String** | ID of the task | 

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **taskList**
```swift
    open class func taskList(filters: String? = nil, completion: @escaping (_ data: [Task]?, _ error: Error?) -> Void)
```

List tasks

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the tasks list.  Available filters:  - `desired-state=(running | shutdown | accepted)` - `id=<task id>` - `label=key` or `label=\"key=value\"` - `name=<task name>` - `node=<node id or name>` - `service=<service name>`  (optional)

// List tasks
TaskAPI.taskList(filters: filters) { (response, error) in
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
 **filters** | **String** | A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the tasks list.  Available filters:  - &#x60;desired-state&#x3D;(running | shutdown | accepted)&#x60; - &#x60;id&#x3D;&lt;task id&gt;&#x60; - &#x60;label&#x3D;key&#x60; or &#x60;label&#x3D;\&quot;key&#x3D;value\&quot;&#x60; - &#x60;name&#x3D;&lt;task name&gt;&#x60; - &#x60;node&#x3D;&lt;node id or name&gt;&#x60; - &#x60;service&#x3D;&lt;service name&gt;&#x60;  | [optional] 

### Return type

[**[Task]**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **taskLogs**
```swift
    open class func taskLogs(id: String, details: Bool? = nil, follow: Bool? = nil, stdout: Bool? = nil, stderr: Bool? = nil, since: Int? = nil, timestamps: Bool? = nil, tail: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Get task logs

Get `stdout` and `stderr` logs from a task. See also [`/containers/{id}/logs`](#operation/ContainerLogs).  **Note**: This endpoint works only for services with the `local`, `json-file` or `journald` logging drivers. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID of the task
let details = true // Bool | Show task context and extra details provided to logs. (optional) (default to false)
let follow = true // Bool | Keep connection after returning logs. (optional) (default to false)
let stdout = true // Bool | Return logs from `stdout` (optional) (default to false)
let stderr = true // Bool | Return logs from `stderr` (optional) (default to false)
let since = 987 // Int | Only return logs since this time, as a UNIX timestamp (optional) (default to 0)
let timestamps = true // Bool | Add timestamps to every log line (optional) (default to false)
let tail = "tail_example" // String | Only return this number of log lines from the end of the logs. Specify as an integer or `all` to output all log lines.  (optional) (default to "all")

// Get task logs
TaskAPI.taskLogs(id: id, details: details, follow: follow, stdout: stdout, stderr: stderr, since: since, timestamps: timestamps, tail: tail) { (response, error) in
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
 **id** | **String** | ID of the task | 
 **details** | **Bool** | Show task context and extra details provided to logs. | [optional] [default to false]
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

