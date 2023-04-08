# SwarmAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**swarmInit**](SwarmAPI.md#swarminit) | **POST** /swarm/init | Initialize a new swarm
[**swarmInspect**](SwarmAPI.md#swarminspect) | **GET** /swarm | Inspect swarm
[**swarmJoin**](SwarmAPI.md#swarmjoin) | **POST** /swarm/join | Join an existing swarm
[**swarmLeave**](SwarmAPI.md#swarmleave) | **POST** /swarm/leave | Leave a swarm
[**swarmUnlock**](SwarmAPI.md#swarmunlock) | **POST** /swarm/unlock | Unlock a locked manager
[**swarmUnlockkey**](SwarmAPI.md#swarmunlockkey) | **GET** /swarm/unlockkey | Get the unlock key
[**swarmUpdate**](SwarmAPI.md#swarmupdate) | **POST** /swarm/update | Update a swarm


# **swarmInit**
```swift
    open class func swarmInit(body: SwarmInitRequest, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Initialize a new swarm

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = SwarmInitRequest(listenAddr: "listenAddr_example", advertiseAddr: "advertiseAddr_example", dataPathAddr: "dataPathAddr_example", dataPathPort: 123, defaultAddrPool: [""], forceNewCluster: false, subnetSize: 123, spec: SwarmSpec(name: "name_example", labels: "TODO", orchestration: SwarmSpec_Orchestration(taskHistoryRetentionLimit: 123), raft: SwarmSpec_Raft(snapshotInterval: 123, keepOldSnapshots: 123, logEntriesForSlowFollowers: 123, electionTick: 123, heartbeatTick: 123), dispatcher: SwarmSpec_Dispatcher(heartbeatPeriod: 123), cAConfig: SwarmSpec_CAConfig(nodeCertExpiry: 123, externalCAs: [SwarmSpec_CAConfig_ExternalCAs_inner(_protocol: "_protocol_example", URL: "URL_example", options: "TODO", cACert: "cACert_example")], signingCACert: "signingCACert_example", signingCAKey: "signingCAKey_example", forceRotate: 123), encryptionConfig: SwarmSpec_EncryptionConfig(autoLockManagers: false), taskDefaults: SwarmSpec_TaskDefaults(logDriver: SwarmSpec_TaskDefaults_LogDriver(name: "name_example", options: "TODO")))) // SwarmInitRequest | 

// Initialize a new swarm
SwarmAPI.swarmInit(body: body) { (response, error) in
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
 **body** | [**SwarmInitRequest**](SwarmInitRequest.md) |  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmInspect**
```swift
    open class func swarmInspect(completion: @escaping (_ data: Swarm?, _ error: Error?) -> Void)
```

Inspect swarm

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Inspect swarm
SwarmAPI.swarmInspect() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**Swarm**](Swarm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmJoin**
```swift
    open class func swarmJoin(body: SwarmJoinRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Join an existing swarm

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = SwarmJoinRequest(listenAddr: "listenAddr_example", advertiseAddr: "advertiseAddr_example", dataPathAddr: "dataPathAddr_example", remoteAddrs: ["remoteAddrs_example"], joinToken: "joinToken_example") // SwarmJoinRequest | 

// Join an existing swarm
SwarmAPI.swarmJoin(body: body) { (response, error) in
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
 **body** | [**SwarmJoinRequest**](SwarmJoinRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmLeave**
```swift
    open class func swarmLeave(force: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Leave a swarm

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let force = true // Bool | Force leave swarm, even if this is the last manager or that it will break the cluster.  (optional) (default to false)

// Leave a swarm
SwarmAPI.swarmLeave(force: force) { (response, error) in
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
 **force** | **Bool** | Force leave swarm, even if this is the last manager or that it will break the cluster.  | [optional] [default to false]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmUnlock**
```swift
    open class func swarmUnlock(body: SwarmUnlockRequest, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unlock a locked manager

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = SwarmUnlockRequest(unlockKey: "unlockKey_example") // SwarmUnlockRequest | 

// Unlock a locked manager
SwarmAPI.swarmUnlock(body: body) { (response, error) in
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
 **body** | [**SwarmUnlockRequest**](SwarmUnlockRequest.md) |  | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmUnlockkey**
```swift
    open class func swarmUnlockkey(completion: @escaping (_ data: UnlockKeyResponse?, _ error: Error?) -> Void)
```

Get the unlock key

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get the unlock key
SwarmAPI.swarmUnlockkey() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**UnlockKeyResponse**](UnlockKeyResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **swarmUpdate**
```swift
    open class func swarmUpdate(version: Int64, body: SwarmSpec, rotateWorkerToken: Bool? = nil, rotateManagerToken: Bool? = nil, rotateManagerUnlockKey: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Update a swarm

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let version = 987 // Int64 | The version number of the swarm object being updated. This is required to avoid conflicting writes. 
let body = SwarmSpec(name: "name_example", labels: "TODO", orchestration: SwarmSpec_Orchestration(taskHistoryRetentionLimit: 123), raft: SwarmSpec_Raft(snapshotInterval: 123, keepOldSnapshots: 123, logEntriesForSlowFollowers: 123, electionTick: 123, heartbeatTick: 123), dispatcher: SwarmSpec_Dispatcher(heartbeatPeriod: 123), cAConfig: SwarmSpec_CAConfig(nodeCertExpiry: 123, externalCAs: [SwarmSpec_CAConfig_ExternalCAs_inner(_protocol: "_protocol_example", URL: "URL_example", options: "TODO", cACert: "cACert_example")], signingCACert: "signingCACert_example", signingCAKey: "signingCAKey_example", forceRotate: 123), encryptionConfig: SwarmSpec_EncryptionConfig(autoLockManagers: false), taskDefaults: SwarmSpec_TaskDefaults(logDriver: SwarmSpec_TaskDefaults_LogDriver(name: "name_example", options: "TODO"))) // SwarmSpec | 
let rotateWorkerToken = true // Bool | Rotate the worker join token. (optional) (default to false)
let rotateManagerToken = true // Bool | Rotate the manager join token. (optional) (default to false)
let rotateManagerUnlockKey = true // Bool | Rotate the manager unlock key. (optional) (default to false)

// Update a swarm
SwarmAPI.swarmUpdate(version: version, body: body, rotateWorkerToken: rotateWorkerToken, rotateManagerToken: rotateManagerToken, rotateManagerUnlockKey: rotateManagerUnlockKey) { (response, error) in
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
 **version** | **Int64** | The version number of the swarm object being updated. This is required to avoid conflicting writes.  | 
 **body** | [**SwarmSpec**](SwarmSpec.md) |  | 
 **rotateWorkerToken** | **Bool** | Rotate the worker join token. | [optional] [default to false]
 **rotateManagerToken** | **Bool** | Rotate the manager join token. | [optional] [default to false]
 **rotateManagerUnlockKey** | **Bool** | Rotate the manager unlock key. | [optional] [default to false]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/plain
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

