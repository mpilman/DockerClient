# ContainerAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**containerArchive**](ContainerAPI.md#containerarchive) | **GET** /containers/{id}/archive | Get an archive of a filesystem resource in a container
[**containerArchiveInfo**](ContainerAPI.md#containerarchiveinfo) | **HEAD** /containers/{id}/archive | Get information about files in a container
[**containerAttach**](ContainerAPI.md#containerattach) | **POST** /containers/{id}/attach | Attach to a container
[**containerAttachWebsocket**](ContainerAPI.md#containerattachwebsocket) | **GET** /containers/{id}/attach/ws | Attach to a container via a websocket
[**containerChanges**](ContainerAPI.md#containerchanges) | **GET** /containers/{id}/changes | Get changes on a container’s filesystem
[**containerCreate**](ContainerAPI.md#containercreate) | **POST** /containers/create | Create a container
[**containerDelete**](ContainerAPI.md#containerdelete) | **DELETE** /containers/{id} | Remove a container
[**containerExport**](ContainerAPI.md#containerexport) | **GET** /containers/{id}/export | Export a container
[**containerInspect**](ContainerAPI.md#containerinspect) | **GET** /containers/{id}/json | Inspect a container
[**containerKill**](ContainerAPI.md#containerkill) | **POST** /containers/{id}/kill | Kill a container
[**containerList**](ContainerAPI.md#containerlist) | **GET** /containers/json | List containers
[**containerLogs**](ContainerAPI.md#containerlogs) | **GET** /containers/{id}/logs | Get container logs
[**containerPause**](ContainerAPI.md#containerpause) | **POST** /containers/{id}/pause | Pause a container
[**containerPrune**](ContainerAPI.md#containerprune) | **POST** /containers/prune | Delete stopped containers
[**containerRename**](ContainerAPI.md#containerrename) | **POST** /containers/{id}/rename | Rename a container
[**containerResize**](ContainerAPI.md#containerresize) | **POST** /containers/{id}/resize | Resize a container TTY
[**containerRestart**](ContainerAPI.md#containerrestart) | **POST** /containers/{id}/restart | Restart a container
[**containerStart**](ContainerAPI.md#containerstart) | **POST** /containers/{id}/start | Start a container
[**containerStats**](ContainerAPI.md#containerstats) | **GET** /containers/{id}/stats | Get container stats based on resource usage
[**containerStop**](ContainerAPI.md#containerstop) | **POST** /containers/{id}/stop | Stop a container
[**containerTop**](ContainerAPI.md#containertop) | **GET** /containers/{id}/top | List processes running inside a container
[**containerUnpause**](ContainerAPI.md#containerunpause) | **POST** /containers/{id}/unpause | Unpause a container
[**containerUpdate**](ContainerAPI.md#containerupdate) | **POST** /containers/{id}/update | Update a container
[**containerWait**](ContainerAPI.md#containerwait) | **POST** /containers/{id}/wait | Wait for a container
[**putContainerArchive**](ContainerAPI.md#putcontainerarchive) | **PUT** /containers/{id}/archive | Extract an archive of files or folders to a directory in a container


# **containerArchive**
```swift
    open class func containerArchive(id: String, path: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get an archive of a filesystem resource in a container

Get a tar archive of a resource in the filesystem of container id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let path = "path_example" // String | Resource in the container’s filesystem to archive.

// Get an archive of a filesystem resource in a container
ContainerAPI.containerArchive(id: id, path: path) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **path** | **String** | Resource in the container’s filesystem to archive. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-tar, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerArchiveInfo**
```swift
    open class func containerArchiveInfo(id: String, path: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Get information about files in a container

A response header `X-Docker-Container-Path-Stat` is returned, containing a base64 - encoded JSON object with some filesystem header information about the path. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let path = "path_example" // String | Resource in the container’s filesystem to archive.

// Get information about files in a container
ContainerAPI.containerArchiveInfo(id: id, path: path) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **path** | **String** | Resource in the container’s filesystem to archive. | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerAttach**
```swift
    open class func containerAttach(id: String, detachKeys: String? = nil, logs: Bool? = nil, stream: Bool? = nil, stdin: Bool? = nil, stdout: Bool? = nil, stderr: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Attach to a container

Attach to a container to read its output or send it input. You can attach to the same container multiple times and you can reattach to containers that have been detached.  Either the `stream` or `logs` parameter must be `true` for this endpoint to do anything.  See the [documentation for the `docker attach` command](/engine/reference/commandline/attach/) for more details.  ### Hijacking  This endpoint hijacks the HTTP connection to transport `stdin`, `stdout`, and `stderr` on the same socket.  This is the response from the daemon for an attach request:  ``` HTTP/1.1 200 OK Content-Type: application/vnd.docker.raw-stream  [STREAM] ```  After the headers and two new lines, the TCP connection can now be used for raw, bidirectional communication between the client and server.  To hint potential proxies about connection hijacking, the Docker client can also optionally send connection upgrade headers.  For example, the client sends this request to upgrade the connection:  ``` POST /containers/16253994b7c4/attach?stream=1&stdout=1 HTTP/1.1 Upgrade: tcp Connection: Upgrade ```  The Docker daemon will respond with a `101 UPGRADED` response, and will similarly follow with the raw stream:  ``` HTTP/1.1 101 UPGRADED Content-Type: application/vnd.docker.raw-stream Connection: Upgrade Upgrade: tcp  [STREAM] ```  ### Stream format  When the TTY setting is disabled in [`POST /containers/create`](#operation/ContainerCreate), the HTTP Content-Type header is set to application/vnd.docker.multiplexed-stream and the stream over the hijacked connected is multiplexed to separate out `stdout` and `stderr`. The stream consists of a series of frames, each containing a header and a payload.  The header contains the information which the stream writes (`stdout` or `stderr`). It also contains the size of the associated frame encoded in the last four bytes (`uint32`).  It is encoded on the first eight bytes like this:  ```go header := [8]byte{STREAM_TYPE, 0, 0, 0, SIZE1, SIZE2, SIZE3, SIZE4} ```  `STREAM_TYPE` can be:  - 0: `stdin` (is written on `stdout`) - 1: `stdout` - 2: `stderr`  `SIZE1, SIZE2, SIZE3, SIZE4` are the four bytes of the `uint32` size encoded as big endian.  Following the header is the payload, which is the specified number of bytes of `STREAM_TYPE`.  The simplest way to implement this protocol is the following:  1. Read 8 bytes. 2. Choose `stdout` or `stderr` depending on the first byte. 3. Extract the frame size from the last four bytes. 4. Read the extracted size and output it on the correct output. 5. Goto 1.  ### Stream format when using a TTY  When the TTY setting is enabled in [`POST /containers/create`](#operation/ContainerCreate), the stream is not multiplexed. The data exchanged over the hijacked connection is simply the raw data from the process PTY and client's `stdin`. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let detachKeys = "detachKeys_example" // String | Override the key sequence for detaching a container.Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,` or `_`.  (optional)
let logs = true // Bool | Replay previous logs from the container.  This is useful for attaching to a container that has started and you want to output everything since the container started.  If `stream` is also enabled, once all the previous output has been returned, it will seamlessly transition into streaming current output.  (optional) (default to false)
let stream = true // Bool | Stream attached streams from the time the request was made onwards.  (optional) (default to false)
let stdin = true // Bool | Attach to `stdin` (optional) (default to false)
let stdout = true // Bool | Attach to `stdout` (optional) (default to false)
let stderr = true // Bool | Attach to `stderr` (optional) (default to false)

// Attach to a container
ContainerAPI.containerAttach(id: id, detachKeys: detachKeys, logs: logs, stream: stream, stdin: stdin, stdout: stdout, stderr: stderr) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **detachKeys** | **String** | Override the key sequence for detaching a container.Format is a single character &#x60;[a-Z]&#x60; or &#x60;ctrl-&lt;value&gt;&#x60; where &#x60;&lt;value&gt;&#x60; is one of: &#x60;a-z&#x60;, &#x60;@&#x60;, &#x60;^&#x60;, &#x60;[&#x60;, &#x60;,&#x60; or &#x60;_&#x60;.  | [optional] 
 **logs** | **Bool** | Replay previous logs from the container.  This is useful for attaching to a container that has started and you want to output everything since the container started.  If &#x60;stream&#x60; is also enabled, once all the previous output has been returned, it will seamlessly transition into streaming current output.  | [optional] [default to false]
 **stream** | **Bool** | Stream attached streams from the time the request was made onwards.  | [optional] [default to false]
 **stdin** | **Bool** | Attach to &#x60;stdin&#x60; | [optional] [default to false]
 **stdout** | **Bool** | Attach to &#x60;stdout&#x60; | [optional] [default to false]
 **stderr** | **Bool** | Attach to &#x60;stderr&#x60; | [optional] [default to false]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.docker.raw-stream, application/vnd.docker.multiplexed-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerAttachWebsocket**
```swift
    open class func containerAttachWebsocket(id: String, detachKeys: String? = nil, logs: Bool? = nil, stream: Bool? = nil, stdin: Bool? = nil, stdout: Bool? = nil, stderr: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Attach to a container via a websocket

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let detachKeys = "detachKeys_example" // String | Override the key sequence for detaching a container.Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,`, or `_`.  (optional)
let logs = true // Bool | Return logs (optional) (default to false)
let stream = true // Bool | Return stream (optional) (default to false)
let stdin = true // Bool | Attach to `stdin` (optional) (default to false)
let stdout = true // Bool | Attach to `stdout` (optional) (default to false)
let stderr = true // Bool | Attach to `stderr` (optional) (default to false)

// Attach to a container via a websocket
ContainerAPI.containerAttachWebsocket(id: id, detachKeys: detachKeys, logs: logs, stream: stream, stdin: stdin, stdout: stdout, stderr: stderr) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **detachKeys** | **String** | Override the key sequence for detaching a container.Format is a single character &#x60;[a-Z]&#x60; or &#x60;ctrl-&lt;value&gt;&#x60; where &#x60;&lt;value&gt;&#x60; is one of: &#x60;a-z&#x60;, &#x60;@&#x60;, &#x60;^&#x60;, &#x60;[&#x60;, &#x60;,&#x60;, or &#x60;_&#x60;.  | [optional] 
 **logs** | **Bool** | Return logs | [optional] [default to false]
 **stream** | **Bool** | Return stream | [optional] [default to false]
 **stdin** | **Bool** | Attach to &#x60;stdin&#x60; | [optional] [default to false]
 **stdout** | **Bool** | Attach to &#x60;stdout&#x60; | [optional] [default to false]
 **stderr** | **Bool** | Attach to &#x60;stderr&#x60; | [optional] [default to false]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerChanges**
```swift
    open class func containerChanges(id: String, completion: @escaping (_ data: [ContainerChangeResponseItem]?, _ error: Error?) -> Void)
```

Get changes on a container’s filesystem

Returns which files in a container's filesystem have been added, deleted, or modified. The `Kind` of modification can be one of:  - `0`: Modified - `1`: Added - `2`: Deleted 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container

// Get changes on a container’s filesystem
ContainerAPI.containerChanges(id: id) { (response, error) in
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
 **id** | **String** | ID or name of the container | 

### Return type

[**[ContainerChangeResponseItem]**](ContainerChangeResponseItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerCreate**
```swift
    open class func containerCreate(body: ContainerCreateRequest, name: String? = nil, platform: String? = nil, completion: @escaping (_ data: ContainerCreateResponse?, _ error: Error?) -> Void)
```

Create a container

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let body = ContainerCreate_request(hostname: "hostname_example", domainname: "domainname_example", user: "user_example", attachStdin: false, attachStdout: false, attachStderr: false, exposedPorts: "TODO", tty: false, openStdin: false, stdinOnce: false, env: ["env_example"], cmd: ["cmd_example"], healthcheck: HealthConfig(test: ["test_example"], interval: 123, timeout: 123, retries: 123, startPeriod: 123), argsEscaped: false, image: "image_example", volumes: "TODO", workingDir: "workingDir_example", entrypoint: ["entrypoint_example"], networkDisabled: false, macAddress: "macAddress_example", onBuild: ["onBuild_example"], labels: "TODO", stopSignal: "stopSignal_example", stopTimeout: 123, shell: ["shell_example"], hostConfig: HostConfig(cpuShares: 123, memory: 123, cgroupParent: "cgroupParent_example", blkioWeight: 123, blkioWeightDevice: [Resources_BlkioWeightDevice_inner(path: "path_example", weight: 123)], blkioDeviceReadBps: [ThrottleDevice(path: "path_example", rate: 123)], blkioDeviceWriteBps: [nil], blkioDeviceReadIOps: [nil], blkioDeviceWriteIOps: [nil], cpuPeriod: 123, cpuQuota: 123, cpuRealtimePeriod: 123, cpuRealtimeRuntime: 123, cpusetCpus: "cpusetCpus_example", cpusetMems: "cpusetMems_example", devices: [DeviceMapping(pathOnHost: "pathOnHost_example", pathInContainer: "pathInContainer_example", cgroupPermissions: "cgroupPermissions_example")], deviceCgroupRules: ["deviceCgroupRules_example"], deviceRequests: [DeviceRequest(driver: "driver_example", count: 123, deviceIDs: ["deviceIDs_example"], capabilities: [["capabilities_example"]], options: "TODO")], kernelMemoryTCP: 123, memoryReservation: 123, memorySwap: 123, memorySwappiness: 123, nanoCpus: 123, oomKillDisable: false, _init: false, pidsLimit: 123, ulimits: [Resources_Ulimits_inner(name: "name_example", soft: 123, hard: 123)], cpuCount: 123, cpuPercent: 123, iOMaximumIOps: 123, iOMaximumBandwidth: 123, binds: ["binds_example"], containerIDFile: "containerIDFile_example", logConfig: HostConfig_allOf_LogConfig(type: "type_example", config: "TODO"), networkMode: "networkMode_example", portBindings: "TODO", restartPolicy: RestartPolicy(name: "name_example", maximumRetryCount: 123), autoRemove: false, volumeDriver: "volumeDriver_example", volumesFrom: ["volumesFrom_example"], mounts: [Mount(target: "target_example", source: "source_example", type: "type_example", readOnly: false, consistency: "consistency_example", bindOptions: Mount_BindOptions(propagation: "propagation_example", nonRecursive: false, createMountpoint: false), volumeOptions: Mount_VolumeOptions(noCopy: false, labels: "TODO", driverConfig: Mount_VolumeOptions_DriverConfig(name: "name_example", options: "TODO")), tmpfsOptions: Mount_TmpfsOptions(sizeBytes: 123, mode: 123))], consoleSize: [123], capAdd: ["capAdd_example"], capDrop: ["capDrop_example"], cgroupnsMode: "cgroupnsMode_example", dns: ["dns_example"], dnsOptions: ["dnsOptions_example"], dnsSearch: ["dnsSearch_example"], extraHosts: ["extraHosts_example"], groupAdd: ["groupAdd_example"], ipcMode: "ipcMode_example", cgroup: "cgroup_example", links: ["links_example"], oomScoreAdj: 123, pidMode: "pidMode_example", privileged: false, publishAllPorts: false, readonlyRootfs: false, securityOpt: ["securityOpt_example"], storageOpt: "TODO", tmpfs: "TODO", uTSMode: "uTSMode_example", usernsMode: "usernsMode_example", shmSize: 123, sysctls: "TODO", runtime: "runtime_example", isolation: "isolation_example", maskedPaths: ["maskedPaths_example"], readonlyPaths: ["readonlyPaths_example"]), networkingConfig: NetworkingConfig(endpointsConfig: "TODO")) // ContainerCreateRequest | Container to create
let name = "name_example" // String | Assign the specified name to the container. Must match `/?[a-zA-Z0-9][a-zA-Z0-9_.-]+`.  (optional)
let platform = "platform_example" // String | Platform in the format `os[/arch[/variant]]` used for image lookup.  When specified, the daemon checks if the requested image is present in the local image cache with the given OS and Architecture, and otherwise returns a `404` status.  If the option is not set, the host's native OS and Architecture are used to look up the image in the image cache. However, if no platform is passed and the given image does exist in the local image cache, but its OS or architecture does not match, the container is created with the available image, and a warning is added to the `Warnings` field in the response, for example;      WARNING: The requested image's platform (linux/arm64/v8) does not              match the detected host platform (linux/amd64) and no              specific platform was requested  (optional)

// Create a container
ContainerAPI.containerCreate(body: body, name: name, platform: platform) { (response, error) in
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
 **body** | [**ContainerCreateRequest**](ContainerCreateRequest.md) | Container to create | 
 **name** | **String** | Assign the specified name to the container. Must match &#x60;/?[a-zA-Z0-9][a-zA-Z0-9_.-]+&#x60;.  | [optional] 
 **platform** | **String** | Platform in the format &#x60;os[/arch[/variant]]&#x60; used for image lookup.  When specified, the daemon checks if the requested image is present in the local image cache with the given OS and Architecture, and otherwise returns a &#x60;404&#x60; status.  If the option is not set, the host&#39;s native OS and Architecture are used to look up the image in the image cache. However, if no platform is passed and the given image does exist in the local image cache, but its OS or architecture does not match, the container is created with the available image, and a warning is added to the &#x60;Warnings&#x60; field in the response, for example;      WARNING: The requested image&#39;s platform (linux/arm64/v8) does not              match the detected host platform (linux/amd64) and no              specific platform was requested  | [optional] 

### Return type

[**ContainerCreateResponse**](ContainerCreateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerDelete**
```swift
    open class func containerDelete(id: String, v: Bool? = nil, force: Bool? = nil, link: Bool? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Remove a container

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let v = true // Bool | Remove anonymous volumes associated with the container. (optional) (default to false)
let force = true // Bool | If the container is running, kill it before removing it. (optional) (default to false)
let link = true // Bool | Remove the specified link associated with the container. (optional) (default to false)

// Remove a container
ContainerAPI.containerDelete(id: id, v: v, force: force, link: link) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **v** | **Bool** | Remove anonymous volumes associated with the container. | [optional] [default to false]
 **force** | **Bool** | If the container is running, kill it before removing it. | [optional] [default to false]
 **link** | **Bool** | Remove the specified link associated with the container. | [optional] [default to false]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerExport**
```swift
    open class func containerExport(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Export a container

Export the contents of a container as a tarball.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container

// Export a container
ContainerAPI.containerExport(id: id) { (response, error) in
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
 **id** | **String** | ID or name of the container | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerInspect**
```swift
    open class func containerInspect(id: String, size: Bool? = nil, completion: @escaping (_ data: ContainerInspectResponse?, _ error: Error?) -> Void)
```

Inspect a container

Return low-level information about a container.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let size = true // Bool | Return the size of container as fields `SizeRw` and `SizeRootFs` (optional) (default to false)

// Inspect a container
ContainerAPI.containerInspect(id: id, size: size) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **size** | **Bool** | Return the size of container as fields &#x60;SizeRw&#x60; and &#x60;SizeRootFs&#x60; | [optional] [default to false]

### Return type

[**ContainerInspectResponse**](ContainerInspectResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerKill**
```swift
    open class func containerKill(id: String, signal: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Kill a container

Send a POSIX signal to a container, defaulting to killing to the container. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let signal = "signal_example" // String | Signal to send to the container as an integer or string (e.g. `SIGINT`).  (optional) (default to "SIGKILL")

// Kill a container
ContainerAPI.containerKill(id: id, signal: signal) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **signal** | **String** | Signal to send to the container as an integer or string (e.g. &#x60;SIGINT&#x60;).  | [optional] [default to &quot;SIGKILL&quot;]

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerList**
```swift
    open class func containerList(all: Bool? = nil, limit: Int? = nil, size: Bool? = nil, filters: String? = nil, completion: @escaping (_ data: [ContainerSummary]?, _ error: Error?) -> Void)
```

List containers

Returns a list of containers. For details on the format, see the [inspect endpoint](#operation/ContainerInspect).  Note that it uses a different, smaller representation of a container than inspecting a single container. For example, the list of linked containers is not propagated . 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let all = true // Bool | Return all containers. By default, only running containers are shown.  (optional) (default to false)
let limit = 987 // Int | Return this number of most recently created containers, including non-running ones.  (optional)
let size = true // Bool | Return the size of container as fields `SizeRw` and `SizeRootFs`.  (optional) (default to false)
let filters = "filters_example" // String | Filters to process on the container list, encoded as JSON (a `map[string][]string`). For example, `{\"status\": [\"paused\"]}` will only return paused containers.  Available filters:  - `ancestor`=(`<image-name>[:<tag>]`, `<image id>`, or `<image@digest>`) - `before`=(`<container id>` or `<container name>`) - `expose`=(`<port>[/<proto>]`|`<startport-endport>/[<proto>]`) - `exited=<int>` containers with exit code of `<int>` - `health`=(`starting`|`healthy`|`unhealthy`|`none`) - `id=<ID>` a container's ID - `isolation=`(`default`|`process`|`hyperv`) (Windows daemon only) - `is-task=`(`true`|`false`) - `label=key` or `label=\"key=value\"` of a container label - `name=<name>` a container's name - `network`=(`<network id>` or `<network name>`) - `publish`=(`<port>[/<proto>]`|`<startport-endport>/[<proto>]`) - `since`=(`<container id>` or `<container name>`) - `status=`(`created`|`restarting`|`running`|`removing`|`paused`|`exited`|`dead`) - `volume`=(`<volume name>` or `<mount point destination>`)  (optional)

// List containers
ContainerAPI.containerList(all: all, limit: limit, size: size, filters: filters) { (response, error) in
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
 **all** | **Bool** | Return all containers. By default, only running containers are shown.  | [optional] [default to false]
 **limit** | **Int** | Return this number of most recently created containers, including non-running ones.  | [optional] 
 **size** | **Bool** | Return the size of container as fields &#x60;SizeRw&#x60; and &#x60;SizeRootFs&#x60;.  | [optional] [default to false]
 **filters** | **String** | Filters to process on the container list, encoded as JSON (a &#x60;map[string][]string&#x60;). For example, &#x60;{\&quot;status\&quot;: [\&quot;paused\&quot;]}&#x60; will only return paused containers.  Available filters:  - &#x60;ancestor&#x60;&#x3D;(&#x60;&lt;image-name&gt;[:&lt;tag&gt;]&#x60;, &#x60;&lt;image id&gt;&#x60;, or &#x60;&lt;image@digest&gt;&#x60;) - &#x60;before&#x60;&#x3D;(&#x60;&lt;container id&gt;&#x60; or &#x60;&lt;container name&gt;&#x60;) - &#x60;expose&#x60;&#x3D;(&#x60;&lt;port&gt;[/&lt;proto&gt;]&#x60;|&#x60;&lt;startport-endport&gt;/[&lt;proto&gt;]&#x60;) - &#x60;exited&#x3D;&lt;int&gt;&#x60; containers with exit code of &#x60;&lt;int&gt;&#x60; - &#x60;health&#x60;&#x3D;(&#x60;starting&#x60;|&#x60;healthy&#x60;|&#x60;unhealthy&#x60;|&#x60;none&#x60;) - &#x60;id&#x3D;&lt;ID&gt;&#x60; a container&#39;s ID - &#x60;isolation&#x3D;&#x60;(&#x60;default&#x60;|&#x60;process&#x60;|&#x60;hyperv&#x60;) (Windows daemon only) - &#x60;is-task&#x3D;&#x60;(&#x60;true&#x60;|&#x60;false&#x60;) - &#x60;label&#x3D;key&#x60; or &#x60;label&#x3D;\&quot;key&#x3D;value\&quot;&#x60; of a container label - &#x60;name&#x3D;&lt;name&gt;&#x60; a container&#39;s name - &#x60;network&#x60;&#x3D;(&#x60;&lt;network id&gt;&#x60; or &#x60;&lt;network name&gt;&#x60;) - &#x60;publish&#x60;&#x3D;(&#x60;&lt;port&gt;[/&lt;proto&gt;]&#x60;|&#x60;&lt;startport-endport&gt;/[&lt;proto&gt;]&#x60;) - &#x60;since&#x60;&#x3D;(&#x60;&lt;container id&gt;&#x60; or &#x60;&lt;container name&gt;&#x60;) - &#x60;status&#x3D;&#x60;(&#x60;created&#x60;|&#x60;restarting&#x60;|&#x60;running&#x60;|&#x60;removing&#x60;|&#x60;paused&#x60;|&#x60;exited&#x60;|&#x60;dead&#x60;) - &#x60;volume&#x60;&#x3D;(&#x60;&lt;volume name&gt;&#x60; or &#x60;&lt;mount point destination&gt;&#x60;)  | [optional] 

### Return type

[**[ContainerSummary]**](ContainerSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerLogs**
```swift
    open class func containerLogs(id: String, follow: Bool? = nil, stdout: Bool? = nil, stderr: Bool? = nil, since: Int? = nil, until: Int? = nil, timestamps: Bool? = nil, tail: String? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Get container logs

Get `stdout` and `stderr` logs from a container.  Note: This endpoint works only for containers with the `json-file` or `journald` logging driver. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let follow = true // Bool | Keep connection after returning logs. (optional) (default to false)
let stdout = true // Bool | Return logs from `stdout` (optional) (default to false)
let stderr = true // Bool | Return logs from `stderr` (optional) (default to false)
let since = 987 // Int | Only return logs since this time, as a UNIX timestamp (optional) (default to 0)
let until = 987 // Int | Only return logs before this time, as a UNIX timestamp (optional) (default to 0)
let timestamps = true // Bool | Add timestamps to every log line (optional) (default to false)
let tail = "tail_example" // String | Only return this number of log lines from the end of the logs. Specify as an integer or `all` to output all log lines.  (optional) (default to "all")

// Get container logs
ContainerAPI.containerLogs(id: id, follow: follow, stdout: stdout, stderr: stderr, since: since, until: until, timestamps: timestamps, tail: tail) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **follow** | **Bool** | Keep connection after returning logs. | [optional] [default to false]
 **stdout** | **Bool** | Return logs from &#x60;stdout&#x60; | [optional] [default to false]
 **stderr** | **Bool** | Return logs from &#x60;stderr&#x60; | [optional] [default to false]
 **since** | **Int** | Only return logs since this time, as a UNIX timestamp | [optional] [default to 0]
 **until** | **Int** | Only return logs before this time, as a UNIX timestamp | [optional] [default to 0]
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

# **containerPause**
```swift
    open class func containerPause(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Pause a container

Use the freezer cgroup to suspend all processes in a container.  Traditionally, when suspending a process the `SIGSTOP` signal is used, which is observable by the process being suspended. With the freezer cgroup the process is unaware, and unable to capture, that it is being suspended, and subsequently resumed. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container

// Pause a container
ContainerAPI.containerPause(id: id) { (response, error) in
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
 **id** | **String** | ID or name of the container | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerPrune**
```swift
    open class func containerPrune(filters: String? = nil, completion: @escaping (_ data: ContainerPruneResponse?, _ error: Error?) -> Void)
```

Delete stopped containers

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | Filters to process on the prune list, encoded as JSON (a `map[string][]string`).  Available filters: - `until=<timestamp>` Prune containers created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time. - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune containers with (or without, in case `label!=...` is used) the specified labels.  (optional)

// Delete stopped containers
ContainerAPI.containerPrune(filters: filters) { (response, error) in
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
 **filters** | **String** | Filters to process on the prune list, encoded as JSON (a &#x60;map[string][]string&#x60;).  Available filters: - &#x60;until&#x3D;&lt;timestamp&gt;&#x60; Prune containers created before this timestamp. The &#x60;&lt;timestamp&gt;&#x60; can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. &#x60;10m&#x60;, &#x60;1h30m&#x60;) computed relative to the daemon machine’s time. - &#x60;label&#x60; (&#x60;label&#x3D;&lt;key&gt;&#x60;, &#x60;label&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;, &#x60;label!&#x3D;&lt;key&gt;&#x60;, or &#x60;label!&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;) Prune containers with (or without, in case &#x60;label!&#x3D;...&#x60; is used) the specified labels.  | [optional] 

### Return type

[**ContainerPruneResponse**](ContainerPruneResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerRename**
```swift
    open class func containerRename(id: String, name: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Rename a container

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let name = "name_example" // String | New name for the container

// Rename a container
ContainerAPI.containerRename(id: id, name: name) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **name** | **String** | New name for the container | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerResize**
```swift
    open class func containerResize(id: String, h: Int? = nil, w: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Resize a container TTY

Resize the TTY for a container.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let h = 987 // Int | Height of the TTY session in characters (optional)
let w = 987 // Int | Width of the TTY session in characters (optional)

// Resize a container TTY
ContainerAPI.containerResize(id: id, h: h, w: w) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **h** | **Int** | Height of the TTY session in characters | [optional] 
 **w** | **Int** | Width of the TTY session in characters | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerRestart**
```swift
    open class func containerRestart(id: String, signal: String? = nil, t: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Restart a container

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let signal = "signal_example" // String | Signal to send to the container as an integer or string (e.g. `SIGINT`).  (optional)
let t = 987 // Int | Number of seconds to wait before killing the container (optional)

// Restart a container
ContainerAPI.containerRestart(id: id, signal: signal, t: t) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **signal** | **String** | Signal to send to the container as an integer or string (e.g. &#x60;SIGINT&#x60;).  | [optional] 
 **t** | **Int** | Number of seconds to wait before killing the container | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerStart**
```swift
    open class func containerStart(id: String, detachKeys: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Start a container

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let detachKeys = "detachKeys_example" // String | Override the key sequence for detaching a container. Format is a single character `[a-Z]` or `ctrl-<value>` where `<value>` is one of: `a-z`, `@`, `^`, `[`, `,` or `_`.  (optional)

// Start a container
ContainerAPI.containerStart(id: id, detachKeys: detachKeys) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **detachKeys** | **String** | Override the key sequence for detaching a container. Format is a single character &#x60;[a-Z]&#x60; or &#x60;ctrl-&lt;value&gt;&#x60; where &#x60;&lt;value&gt;&#x60; is one of: &#x60;a-z&#x60;, &#x60;@&#x60;, &#x60;^&#x60;, &#x60;[&#x60;, &#x60;,&#x60; or &#x60;_&#x60;.  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerStats**
```swift
    open class func containerStats(id: String, stream: Bool? = nil, oneShot: Bool? = nil, completion: @escaping (_ data: AnyCodable?, _ error: Error?) -> Void)
```

Get container stats based on resource usage

This endpoint returns a live stream of a container’s resource usage statistics.  The `precpu_stats` is the CPU statistic of the *previous* read, and is used to calculate the CPU usage percentage. It is not an exact copy of the `cpu_stats` field.  If either `precpu_stats.online_cpus` or `cpu_stats.online_cpus` is nil then for compatibility with older daemons the length of the corresponding `cpu_usage.percpu_usage` array should be used.  On a cgroup v2 host, the following fields are not set * `blkio_stats`: all fields other than `io_service_bytes_recursive` * `cpu_stats`: `cpu_usage.percpu_usage` * `memory_stats`: `max_usage` and `failcnt` Also, `memory_stats.stats` fields are incompatible with cgroup v1.  To calculate the values shown by the `stats` command of the docker cli tool the following formulas can be used: * used_memory = `memory_stats.usage - memory_stats.stats.cache` * available_memory = `memory_stats.limit` * Memory usage % = `(used_memory / available_memory) * 100.0` * cpu_delta = `cpu_stats.cpu_usage.total_usage - precpu_stats.cpu_usage.total_usage` * system_cpu_delta = `cpu_stats.system_cpu_usage - precpu_stats.system_cpu_usage` * number_cpus = `lenght(cpu_stats.cpu_usage.percpu_usage)` or `cpu_stats.online_cpus` * CPU usage % = `(cpu_delta / system_cpu_delta) * number_cpus * 100.0` 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let stream = true // Bool | Stream the output. If false, the stats will be output once and then it will disconnect.  (optional) (default to true)
let oneShot = true // Bool | Only get a single stat instead of waiting for 2 cycles. Must be used with `stream=false`.  (optional) (default to false)

// Get container stats based on resource usage
ContainerAPI.containerStats(id: id, stream: stream, oneShot: oneShot) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **stream** | **Bool** | Stream the output. If false, the stats will be output once and then it will disconnect.  | [optional] [default to true]
 **oneShot** | **Bool** | Only get a single stat instead of waiting for 2 cycles. Must be used with &#x60;stream&#x3D;false&#x60;.  | [optional] [default to false]

### Return type

**AnyCodable**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerStop**
```swift
    open class func containerStop(id: String, signal: String? = nil, t: Int? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Stop a container

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let signal = "signal_example" // String | Signal to send to the container as an integer or string (e.g. `SIGINT`).  (optional)
let t = 987 // Int | Number of seconds to wait before killing the container (optional)

// Stop a container
ContainerAPI.containerStop(id: id, signal: signal, t: t) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **signal** | **String** | Signal to send to the container as an integer or string (e.g. &#x60;SIGINT&#x60;).  | [optional] 
 **t** | **Int** | Number of seconds to wait before killing the container | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerTop**
```swift
    open class func containerTop(id: String, psArgs: String? = nil, completion: @escaping (_ data: ContainerTopResponse?, _ error: Error?) -> Void)
```

List processes running inside a container

On Unix systems, this is done by running the `ps` command. This endpoint is not supported on Windows. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let psArgs = "psArgs_example" // String | The arguments to pass to `ps`. For example, `aux` (optional) (default to "-ef")

// List processes running inside a container
ContainerAPI.containerTop(id: id, psArgs: psArgs) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **psArgs** | **String** | The arguments to pass to &#x60;ps&#x60;. For example, &#x60;aux&#x60; | [optional] [default to &quot;-ef&quot;]

### Return type

[**ContainerTopResponse**](ContainerTopResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerUnpause**
```swift
    open class func containerUnpause(id: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Unpause a container

Resume a container which has been paused.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container

// Unpause a container
ContainerAPI.containerUnpause(id: id) { (response, error) in
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
 **id** | **String** | ID or name of the container | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerUpdate**
```swift
    open class func containerUpdate(id: String, update: ContainerUpdateRequest, completion: @escaping (_ data: ContainerUpdateResponse?, _ error: Error?) -> Void)
```

Update a container

Change various configuration options of a container without having to recreate it. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let update = ContainerUpdate_request(cpuShares: 123, memory: 123, cgroupParent: "cgroupParent_example", blkioWeight: 123, blkioWeightDevice: [Resources_BlkioWeightDevice_inner(path: "path_example", weight: 123)], blkioDeviceReadBps: [ThrottleDevice(path: "path_example", rate: 123)], blkioDeviceWriteBps: [nil], blkioDeviceReadIOps: [nil], blkioDeviceWriteIOps: [nil], cpuPeriod: 123, cpuQuota: 123, cpuRealtimePeriod: 123, cpuRealtimeRuntime: 123, cpusetCpus: "cpusetCpus_example", cpusetMems: "cpusetMems_example", devices: [DeviceMapping(pathOnHost: "pathOnHost_example", pathInContainer: "pathInContainer_example", cgroupPermissions: "cgroupPermissions_example")], deviceCgroupRules: ["deviceCgroupRules_example"], deviceRequests: [DeviceRequest(driver: "driver_example", count: 123, deviceIDs: ["deviceIDs_example"], capabilities: [["capabilities_example"]], options: "TODO")], kernelMemoryTCP: 123, memoryReservation: 123, memorySwap: 123, memorySwappiness: 123, nanoCpus: 123, oomKillDisable: false, _init: false, pidsLimit: 123, ulimits: [Resources_Ulimits_inner(name: "name_example", soft: 123, hard: 123)], cpuCount: 123, cpuPercent: 123, iOMaximumIOps: 123, iOMaximumBandwidth: 123, restartPolicy: RestartPolicy(name: "name_example", maximumRetryCount: 123)) // ContainerUpdateRequest | 

// Update a container
ContainerAPI.containerUpdate(id: id, update: update) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **update** | [**ContainerUpdateRequest**](ContainerUpdateRequest.md) |  | 

### Return type

[**ContainerUpdateResponse**](ContainerUpdateResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **containerWait**
```swift
    open class func containerWait(id: String, condition: Condition_containerWait? = nil, completion: @escaping (_ data: ContainerWaitResponse?, _ error: Error?) -> Void)
```

Wait for a container

Block until a container stops, then returns the exit code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let condition = "condition_example" // String | Wait until a container state reaches the given condition.  Defaults to `not-running` if omitted or empty.  (optional) (default to .notRunning)

// Wait for a container
ContainerAPI.containerWait(id: id, condition: condition) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **condition** | **String** | Wait until a container state reaches the given condition.  Defaults to &#x60;not-running&#x60; if omitted or empty.  | [optional] [default to .notRunning]

### Return type

[**ContainerWaitResponse**](ContainerWaitResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putContainerArchive**
```swift
    open class func putContainerArchive(id: String, path: String, inputStream: URL, noOverwriteDirNonDir: String? = nil, copyUIDGID: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Extract an archive of files or folders to a directory in a container

Upload a tar archive to be extracted to a path in the filesystem of container id. `path` parameter is asserted to be a directory. If it exists as a file, 400 error will be returned with message \"not a directory\". 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = "id_example" // String | ID or name of the container
let path = "path_example" // String | Path to a directory in the container to extract the archive’s contents into. 
let inputStream = URL(string: "https://example.com")! // URL | The input stream must be a tar archive compressed with one of the following algorithms: `identity` (no compression), `gzip`, `bzip2`, or `xz`. 
let noOverwriteDirNonDir = "noOverwriteDirNonDir_example" // String | If `1`, `true`, or `True` then it will be an error if unpacking the given content would cause an existing directory to be replaced with a non-directory and vice versa.  (optional)
let copyUIDGID = "copyUIDGID_example" // String | If `1`, `true`, then it will copy UID/GID maps to the dest file or dir  (optional)

// Extract an archive of files or folders to a directory in a container
ContainerAPI.putContainerArchive(id: id, path: path, inputStream: inputStream, noOverwriteDirNonDir: noOverwriteDirNonDir, copyUIDGID: copyUIDGID) { (response, error) in
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
 **id** | **String** | ID or name of the container | 
 **path** | **String** | Path to a directory in the container to extract the archive’s contents into.  | 
 **inputStream** | **URL** | The input stream must be a tar archive compressed with one of the following algorithms: &#x60;identity&#x60; (no compression), &#x60;gzip&#x60;, &#x60;bzip2&#x60;, or &#x60;xz&#x60;.  | 
 **noOverwriteDirNonDir** | **String** | If &#x60;1&#x60;, &#x60;true&#x60;, or &#x60;True&#x60; then it will be an error if unpacking the given content would cause an existing directory to be replaced with a non-directory and vice versa.  | [optional] 
 **copyUIDGID** | **String** | If &#x60;1&#x60;, &#x60;true&#x60;, then it will copy UID/GID maps to the dest file or dir  | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-tar, application/octet-stream
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

