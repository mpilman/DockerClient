# ImageAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**buildPrune**](ImageAPI.md#buildprune) | **POST** /build/prune | Delete builder cache
[**imageBuild**](ImageAPI.md#imagebuild) | **POST** /build | Build an image
[**imageCommit**](ImageAPI.md#imagecommit) | **POST** /commit | Create a new image from a container
[**imageCreate**](ImageAPI.md#imagecreate) | **POST** /images/create | Create an image
[**imageDelete**](ImageAPI.md#imagedelete) | **DELETE** /images/{name} | Remove an image
[**imageGet**](ImageAPI.md#imageget) | **GET** /images/{name}/get | Export an image
[**imageGetAll**](ImageAPI.md#imagegetall) | **GET** /images/get | Export several images
[**imageHistory**](ImageAPI.md#imagehistory) | **GET** /images/{name}/history | Get the history of an image
[**imageInspect**](ImageAPI.md#imageinspect) | **GET** /images/{name}/json | Inspect an image
[**imageList**](ImageAPI.md#imagelist) | **GET** /images/json | List Images
[**imageLoad**](ImageAPI.md#imageload) | **POST** /images/load | Import images
[**imagePrune**](ImageAPI.md#imageprune) | **POST** /images/prune | Delete unused images
[**imagePush**](ImageAPI.md#imagepush) | **POST** /images/{name}/push | Push an image
[**imageSearch**](ImageAPI.md#imagesearch) | **GET** /images/search | Search images
[**imageTag**](ImageAPI.md#imagetag) | **POST** /images/{name}/tag | Tag an image


# **buildPrune**
```swift
    open class func buildPrune(keepStorage: Int64? = nil, all: Bool? = nil, filters: String? = nil, completion: @escaping (_ data: BuildPruneResponse?, _ error: Error?) -> Void)
```

Delete builder cache

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let keepStorage = 987 // Int64 | Amount of disk space in bytes to keep for cache (optional)
let all = true // Bool | Remove all types of build cache (optional)
let filters = "filters_example" // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the list of build cache objects.  Available filters:  - `until=<duration>`: duration relative to daemon's time, during which build cache was not used, in Go's duration format (e.g., '24h') - `id=<id>` - `parent=<id>` - `type=<string>` - `description=<string>` - `inuse` - `shared` - `private`  (optional)

// Delete builder cache
ImageAPI.buildPrune(keepStorage: keepStorage, all: all, filters: filters) { (response, error) in
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
 **keepStorage** | **Int64** | Amount of disk space in bytes to keep for cache | [optional] 
 **all** | **Bool** | Remove all types of build cache | [optional] 
 **filters** | **String** | A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the list of build cache objects.  Available filters:  - &#x60;until&#x3D;&lt;duration&gt;&#x60;: duration relative to daemon&#39;s time, during which build cache was not used, in Go&#39;s duration format (e.g., &#39;24h&#39;) - &#x60;id&#x3D;&lt;id&gt;&#x60; - &#x60;parent&#x3D;&lt;id&gt;&#x60; - &#x60;type&#x3D;&lt;string&gt;&#x60; - &#x60;description&#x3D;&lt;string&gt;&#x60; - &#x60;inuse&#x60; - &#x60;shared&#x60; - &#x60;private&#x60;  | [optional] 

### Return type

[**BuildPruneResponse**](BuildPruneResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageBuild**
```swift
    open class func imageBuild(dockerfile: String? = nil, t: String? = nil, extrahosts: String? = nil, remote: String? = nil, q: Bool? = nil, nocache: Bool? = nil, cachefrom: String? = nil, pull: String? = nil, rm: Bool? = nil, forcerm: Bool? = nil, memory: Int? = nil, memswap: Int? = nil, cpushares: Int? = nil, cpusetcpus: String? = nil, cpuperiod: Int? = nil, cpuquota: Int? = nil, buildargs: String? = nil, shmsize: Int? = nil, squash: Bool? = nil, labels: String? = nil, networkmode: String? = nil, contentType: ContentType_imageBuild? = nil, xRegistryConfig: String? = nil, platform: String? = nil, target: String? = nil, outputs: String? = nil, inputStream: URL? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Build an image

Build an image from a tar archive with a `Dockerfile` in it.  The `Dockerfile` specifies how the image is built from the tar archive. It is typically in the archive's root, but can be at a different path or have a different name by specifying the `dockerfile` parameter. [See the `Dockerfile` reference for more information](/engine/reference/builder/).  The Docker daemon performs a preliminary validation of the `Dockerfile` before starting the build, and returns an error if the syntax is incorrect. After that, each instruction is run one-by-one until the ID of the new image is output.  The build is canceled if the client drops the connection by quitting or being killed. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let dockerfile = "dockerfile_example" // String | Path within the build context to the `Dockerfile`. This is ignored if `remote` is specified and points to an external `Dockerfile`. (optional) (default to "Dockerfile")
let t = "t_example" // String | A name and optional tag to apply to the image in the `name:tag` format. If you omit the tag the default `latest` value is assumed. You can provide several `t` parameters. (optional)
let extrahosts = "extrahosts_example" // String | Extra hosts to add to /etc/hosts (optional)
let remote = "remote_example" // String | A Git repository URI or HTTP/HTTPS context URI. If the URI points to a single text file, the file’s contents are placed into a file called `Dockerfile` and the image is built from that file. If the URI points to a tarball, the file is downloaded by the daemon and the contents therein used as the context for the build. If the URI points to a tarball and the `dockerfile` parameter is also specified, there must be a file with the corresponding path inside the tarball. (optional)
let q = true // Bool | Suppress verbose build output. (optional) (default to false)
let nocache = true // Bool | Do not use the cache when building the image. (optional) (default to false)
let cachefrom = "cachefrom_example" // String | JSON array of images used for build cache resolution. (optional)
let pull = "pull_example" // String | Attempt to pull the image even if an older image exists locally. (optional)
let rm = true // Bool | Remove intermediate containers after a successful build. (optional) (default to true)
let forcerm = true // Bool | Always remove intermediate containers, even upon failure. (optional) (default to false)
let memory = 987 // Int | Set memory limit for build. (optional)
let memswap = 987 // Int | Total memory (memory + swap). Set as `-1` to disable swap. (optional)
let cpushares = 987 // Int | CPU shares (relative weight). (optional)
let cpusetcpus = "cpusetcpus_example" // String | CPUs in which to allow execution (e.g., `0-3`, `0,1`). (optional)
let cpuperiod = 987 // Int | The length of a CPU period in microseconds. (optional)
let cpuquota = 987 // Int | Microseconds of CPU time that the container can get in a CPU period. (optional)
let buildargs = "buildargs_example" // String | JSON map of string pairs for build-time variables. Users pass these values at build-time. Docker uses the buildargs as the environment context for commands run via the `Dockerfile` RUN instruction, or for variable expansion in other `Dockerfile` instructions. This is not meant for passing secret values.  For example, the build arg `FOO=bar` would become `{\"FOO\":\"bar\"}` in JSON. This would result in the query parameter `buildargs={\"FOO\":\"bar\"}`. Note that `{\"FOO\":\"bar\"}` should be URI component encoded.  [Read more about the buildargs instruction.](/engine/reference/builder/#arg)  (optional)
let shmsize = 987 // Int | Size of `/dev/shm` in bytes. The size must be greater than 0. If omitted the system uses 64MB. (optional)
let squash = true // Bool | Squash the resulting images layers into a single layer. *(Experimental release only.)* (optional)
let labels = "labels_example" // String | Arbitrary key/value labels to set on the image, as a JSON map of string pairs. (optional)
let networkmode = "networkmode_example" // String | Sets the networking mode for the run commands during build. Supported standard values are: `bridge`, `host`, `none`, and `container:<name|id>`. Any other value is taken as a custom network's name or ID to which this container should connect to.  (optional)
let contentType = "contentType_example" // String |  (optional) (default to .applicationSlashXTar)
let xRegistryConfig = "xRegistryConfig_example" // String | This is a base64-encoded JSON object with auth configurations for multiple registries that a build may refer to.  The key is a registry URL, and the value is an auth configuration object, [as described in the authentication section](#section/Authentication). For example:  ``` {   \"docker.example.com\": {     \"username\": \"janedoe\",     \"password\": \"hunter2\"   },   \"https://index.docker.io/v1/\": {     \"username\": \"mobydock\",     \"password\": \"conta1n3rize14\"   } } ```  Only the registry domain name (and port if not the default 443) are required. However, for legacy reasons, the Docker Hub registry must be specified with both a `https://` prefix and a `/v1/` suffix even though Docker will prefer to use the v2 registry API.  (optional)
let platform = "platform_example" // String | Platform in the format os[/arch[/variant]] (optional)
let target = "target_example" // String | Target build stage (optional)
let outputs = "outputs_example" // String | BuildKit output configuration (optional)
let inputStream = URL(string: "https://example.com")! // URL | A tar archive compressed with one of the following algorithms: identity (no compression), gzip, bzip2, xz. (optional)

// Build an image
ImageAPI.imageBuild(dockerfile: dockerfile, t: t, extrahosts: extrahosts, remote: remote, q: q, nocache: nocache, cachefrom: cachefrom, pull: pull, rm: rm, forcerm: forcerm, memory: memory, memswap: memswap, cpushares: cpushares, cpusetcpus: cpusetcpus, cpuperiod: cpuperiod, cpuquota: cpuquota, buildargs: buildargs, shmsize: shmsize, squash: squash, labels: labels, networkmode: networkmode, contentType: contentType, xRegistryConfig: xRegistryConfig, platform: platform, target: target, outputs: outputs, inputStream: inputStream) { (response, error) in
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
 **dockerfile** | **String** | Path within the build context to the &#x60;Dockerfile&#x60;. This is ignored if &#x60;remote&#x60; is specified and points to an external &#x60;Dockerfile&#x60;. | [optional] [default to &quot;Dockerfile&quot;]
 **t** | **String** | A name and optional tag to apply to the image in the &#x60;name:tag&#x60; format. If you omit the tag the default &#x60;latest&#x60; value is assumed. You can provide several &#x60;t&#x60; parameters. | [optional] 
 **extrahosts** | **String** | Extra hosts to add to /etc/hosts | [optional] 
 **remote** | **String** | A Git repository URI or HTTP/HTTPS context URI. If the URI points to a single text file, the file’s contents are placed into a file called &#x60;Dockerfile&#x60; and the image is built from that file. If the URI points to a tarball, the file is downloaded by the daemon and the contents therein used as the context for the build. If the URI points to a tarball and the &#x60;dockerfile&#x60; parameter is also specified, there must be a file with the corresponding path inside the tarball. | [optional] 
 **q** | **Bool** | Suppress verbose build output. | [optional] [default to false]
 **nocache** | **Bool** | Do not use the cache when building the image. | [optional] [default to false]
 **cachefrom** | **String** | JSON array of images used for build cache resolution. | [optional] 
 **pull** | **String** | Attempt to pull the image even if an older image exists locally. | [optional] 
 **rm** | **Bool** | Remove intermediate containers after a successful build. | [optional] [default to true]
 **forcerm** | **Bool** | Always remove intermediate containers, even upon failure. | [optional] [default to false]
 **memory** | **Int** | Set memory limit for build. | [optional] 
 **memswap** | **Int** | Total memory (memory + swap). Set as &#x60;-1&#x60; to disable swap. | [optional] 
 **cpushares** | **Int** | CPU shares (relative weight). | [optional] 
 **cpusetcpus** | **String** | CPUs in which to allow execution (e.g., &#x60;0-3&#x60;, &#x60;0,1&#x60;). | [optional] 
 **cpuperiod** | **Int** | The length of a CPU period in microseconds. | [optional] 
 **cpuquota** | **Int** | Microseconds of CPU time that the container can get in a CPU period. | [optional] 
 **buildargs** | **String** | JSON map of string pairs for build-time variables. Users pass these values at build-time. Docker uses the buildargs as the environment context for commands run via the &#x60;Dockerfile&#x60; RUN instruction, or for variable expansion in other &#x60;Dockerfile&#x60; instructions. This is not meant for passing secret values.  For example, the build arg &#x60;FOO&#x3D;bar&#x60; would become &#x60;{\&quot;FOO\&quot;:\&quot;bar\&quot;}&#x60; in JSON. This would result in the query parameter &#x60;buildargs&#x3D;{\&quot;FOO\&quot;:\&quot;bar\&quot;}&#x60;. Note that &#x60;{\&quot;FOO\&quot;:\&quot;bar\&quot;}&#x60; should be URI component encoded.  [Read more about the buildargs instruction.](/engine/reference/builder/#arg)  | [optional] 
 **shmsize** | **Int** | Size of &#x60;/dev/shm&#x60; in bytes. The size must be greater than 0. If omitted the system uses 64MB. | [optional] 
 **squash** | **Bool** | Squash the resulting images layers into a single layer. *(Experimental release only.)* | [optional] 
 **labels** | **String** | Arbitrary key/value labels to set on the image, as a JSON map of string pairs. | [optional] 
 **networkmode** | **String** | Sets the networking mode for the run commands during build. Supported standard values are: &#x60;bridge&#x60;, &#x60;host&#x60;, &#x60;none&#x60;, and &#x60;container:&lt;name|id&gt;&#x60;. Any other value is taken as a custom network&#39;s name or ID to which this container should connect to.  | [optional] 
 **contentType** | **String** |  | [optional] [default to .applicationSlashXTar]
 **xRegistryConfig** | **String** | This is a base64-encoded JSON object with auth configurations for multiple registries that a build may refer to.  The key is a registry URL, and the value is an auth configuration object, [as described in the authentication section](#section/Authentication). For example:  &#x60;&#x60;&#x60; {   \&quot;docker.example.com\&quot;: {     \&quot;username\&quot;: \&quot;janedoe\&quot;,     \&quot;password\&quot;: \&quot;hunter2\&quot;   },   \&quot;https://index.docker.io/v1/\&quot;: {     \&quot;username\&quot;: \&quot;mobydock\&quot;,     \&quot;password\&quot;: \&quot;conta1n3rize14\&quot;   } } &#x60;&#x60;&#x60;  Only the registry domain name (and port if not the default 443) are required. However, for legacy reasons, the Docker Hub registry must be specified with both a &#x60;https://&#x60; prefix and a &#x60;/v1/&#x60; suffix even though Docker will prefer to use the v2 registry API.  | [optional] 
 **platform** | **String** | Platform in the format os[/arch[/variant]] | [optional] 
 **target** | **String** | Target build stage | [optional] 
 **outputs** | **String** | BuildKit output configuration | [optional] 
 **inputStream** | **URL** | A tar archive compressed with one of the following algorithms: identity (no compression), gzip, bzip2, xz. | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageCommit**
```swift
    open class func imageCommit(container: String? = nil, repo: String? = nil, tag: String? = nil, comment: String? = nil, author: String? = nil, pause: Bool? = nil, changes: String? = nil, containerConfig: ContainerConfig? = nil, completion: @escaping (_ data: IdResponse?, _ error: Error?) -> Void)
```

Create a new image from a container

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let container = "container_example" // String | The ID or name of the container to commit (optional)
let repo = "repo_example" // String | Repository name for the created image (optional)
let tag = "tag_example" // String | Tag name for the create image (optional)
let comment = "comment_example" // String | Commit message (optional)
let author = "author_example" // String | Author of the image (e.g., `John Hannibal Smith <hannibal@a-team.com>`) (optional)
let pause = true // Bool | Whether to pause the container before committing (optional) (default to true)
let changes = "changes_example" // String | `Dockerfile` instructions to apply while committing (optional)
let containerConfig = ContainerConfig(hostname: "hostname_example", domainname: "domainname_example", user: "user_example", attachStdin: false, attachStdout: false, attachStderr: false, exposedPorts: "TODO", tty: false, openStdin: false, stdinOnce: false, env: ["env_example"], cmd: ["cmd_example"], healthcheck: HealthConfig(test: ["test_example"], interval: 123, timeout: 123, retries: 123, startPeriod: 123), argsEscaped: false, image: "image_example", volumes: "TODO", workingDir: "workingDir_example", entrypoint: ["entrypoint_example"], networkDisabled: false, macAddress: "macAddress_example", onBuild: ["onBuild_example"], labels: "TODO", stopSignal: "stopSignal_example", stopTimeout: 123, shell: ["shell_example"]) // ContainerConfig | The container configuration (optional)

// Create a new image from a container
ImageAPI.imageCommit(container: container, repo: repo, tag: tag, comment: comment, author: author, pause: pause, changes: changes, containerConfig: containerConfig) { (response, error) in
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
 **container** | **String** | The ID or name of the container to commit | [optional] 
 **repo** | **String** | Repository name for the created image | [optional] 
 **tag** | **String** | Tag name for the create image | [optional] 
 **comment** | **String** | Commit message | [optional] 
 **author** | **String** | Author of the image (e.g., &#x60;John Hannibal Smith &lt;hannibal@a-team.com&gt;&#x60;) | [optional] 
 **pause** | **Bool** | Whether to pause the container before committing | [optional] [default to true]
 **changes** | **String** | &#x60;Dockerfile&#x60; instructions to apply while committing | [optional] 
 **containerConfig** | [**ContainerConfig**](ContainerConfig.md) | The container configuration | [optional] 

### Return type

[**IdResponse**](IdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageCreate**
```swift
    open class func imageCreate(fromImage: String? = nil, fromSrc: String? = nil, repo: String? = nil, tag: String? = nil, message: String? = nil, xRegistryAuth: String? = nil, changes: [String]? = nil, platform: String? = nil, inputImage: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Create an image

Create an image by either pulling it from a registry or importing it.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let fromImage = "fromImage_example" // String | Name of the image to pull. The name may include a tag or digest. This parameter may only be used when pulling an image. The pull is cancelled if the HTTP connection is closed. (optional)
let fromSrc = "fromSrc_example" // String | Source to import. The value may be a URL from which the image can be retrieved or `-` to read the image from the request body. This parameter may only be used when importing an image. (optional)
let repo = "repo_example" // String | Repository name given to an image when it is imported. The repo may include a tag. This parameter may only be used when importing an image. (optional)
let tag = "tag_example" // String | Tag or digest. If empty when pulling an image, this causes all tags for the given image to be pulled. (optional)
let message = "message_example" // String | Set commit message for imported image. (optional)
let xRegistryAuth = "xRegistryAuth_example" // String | A base64url-encoded auth configuration.  Refer to the [authentication section](#section/Authentication) for details.  (optional)
let changes = ["inner_example"] // [String] | Apply `Dockerfile` instructions to the image that is created, for example: `changes=ENV DEBUG=true`. Note that `ENV DEBUG=true` should be URI component encoded.  Supported `Dockerfile` instructions: `CMD`|`ENTRYPOINT`|`ENV`|`EXPOSE`|`ONBUILD`|`USER`|`VOLUME`|`WORKDIR`  (optional)
let platform = "platform_example" // String | Platform in the format os[/arch[/variant]].  When used in combination with the `fromImage` option, the daemon checks if the given image is present in the local image cache with the given OS and Architecture, and otherwise attempts to pull the image. If the option is not set, the host's native OS and Architecture are used. If the given image does not exist in the local image cache, the daemon attempts to pull the image with the host's native OS and Architecture. If the given image does exists in the local image cache, but its OS or architecture does not match, a warning is produced.  When used with the `fromSrc` option to import an image from an archive, this option sets the platform information for the imported image. If the option is not set, the host's native OS and Architecture are used for the imported image.  (optional)
let inputImage = "inputImage_example" // String | Image content if the value `-` has been specified in fromSrc query parameter (optional)

// Create an image
ImageAPI.imageCreate(fromImage: fromImage, fromSrc: fromSrc, repo: repo, tag: tag, message: message, xRegistryAuth: xRegistryAuth, changes: changes, platform: platform, inputImage: inputImage) { (response, error) in
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
 **fromImage** | **String** | Name of the image to pull. The name may include a tag or digest. This parameter may only be used when pulling an image. The pull is cancelled if the HTTP connection is closed. | [optional] 
 **fromSrc** | **String** | Source to import. The value may be a URL from which the image can be retrieved or &#x60;-&#x60; to read the image from the request body. This parameter may only be used when importing an image. | [optional] 
 **repo** | **String** | Repository name given to an image when it is imported. The repo may include a tag. This parameter may only be used when importing an image. | [optional] 
 **tag** | **String** | Tag or digest. If empty when pulling an image, this causes all tags for the given image to be pulled. | [optional] 
 **message** | **String** | Set commit message for imported image. | [optional] 
 **xRegistryAuth** | **String** | A base64url-encoded auth configuration.  Refer to the [authentication section](#section/Authentication) for details.  | [optional] 
 **changes** | [**[String]**](String.md) | Apply &#x60;Dockerfile&#x60; instructions to the image that is created, for example: &#x60;changes&#x3D;ENV DEBUG&#x3D;true&#x60;. Note that &#x60;ENV DEBUG&#x3D;true&#x60; should be URI component encoded.  Supported &#x60;Dockerfile&#x60; instructions: &#x60;CMD&#x60;|&#x60;ENTRYPOINT&#x60;|&#x60;ENV&#x60;|&#x60;EXPOSE&#x60;|&#x60;ONBUILD&#x60;|&#x60;USER&#x60;|&#x60;VOLUME&#x60;|&#x60;WORKDIR&#x60;  | [optional] 
 **platform** | **String** | Platform in the format os[/arch[/variant]].  When used in combination with the &#x60;fromImage&#x60; option, the daemon checks if the given image is present in the local image cache with the given OS and Architecture, and otherwise attempts to pull the image. If the option is not set, the host&#39;s native OS and Architecture are used. If the given image does not exist in the local image cache, the daemon attempts to pull the image with the host&#39;s native OS and Architecture. If the given image does exists in the local image cache, but its OS or architecture does not match, a warning is produced.  When used with the &#x60;fromSrc&#x60; option to import an image from an archive, this option sets the platform information for the imported image. If the option is not set, the host&#39;s native OS and Architecture are used for the imported image.  | [optional] 
 **inputImage** | **String** | Image content if the value &#x60;-&#x60; has been specified in fromSrc query parameter | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: text/plain, application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageDelete**
```swift
    open class func imageDelete(name: String, force: Bool? = nil, noprune: Bool? = nil, completion: @escaping (_ data: [ImageDeleteResponseItem]?, _ error: Error?) -> Void)
```

Remove an image

Remove an image, along with any untagged parent images that were referenced by that image.  Images can't be removed if they have descendant images, are being used by a running container or are being used by a build. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Image name or ID
let force = true // Bool | Remove the image even if it is being used by stopped containers or has other tags (optional) (default to false)
let noprune = true // Bool | Do not delete untagged parent images (optional) (default to false)

// Remove an image
ImageAPI.imageDelete(name: name, force: force, noprune: noprune) { (response, error) in
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
 **name** | **String** | Image name or ID | 
 **force** | **Bool** | Remove the image even if it is being used by stopped containers or has other tags | [optional] [default to false]
 **noprune** | **Bool** | Do not delete untagged parent images | [optional] [default to false]

### Return type

[**[ImageDeleteResponseItem]**](ImageDeleteResponseItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageGet**
```swift
    open class func imageGet(name: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Export an image

Get a tarball containing all images and metadata for a repository.  If `name` is a specific name and tag (e.g. `ubuntu:latest`), then only that image (and its parents) are returned. If `name` is an image ID, similarly only that image (and its parents) are returned, but with the exclusion of the `repositories` file in the tarball, as there were no image names referenced.  ### Image tarball format  An image tarball contains one directory per image layer (named using its long ID), each containing these files:  - `VERSION`: currently `1.0` - the file format version - `json`: detailed layer information, similar to `docker inspect layer_id` - `layer.tar`: A tarfile containing the filesystem changes in this layer  The `layer.tar` file contains `aufs` style `.wh..wh.aufs` files and directories for storing attribute changes and deletions.  If the tarball defines a repository, the tarball should also include a `repositories` file at the root that contains a list of repository and tag names mapped to layer IDs.  ```json {   \"hello-world\": {     \"latest\": \"565a9d68a73f6706862bfe8409a7f659776d4d60a8d096eb4a3cbce6999cc2a1\"   } } ``` 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Image name or ID

// Export an image
ImageAPI.imageGet(name: name) { (response, error) in
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
 **name** | **String** | Image name or ID | 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-tar

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageGetAll**
```swift
    open class func imageGetAll(names: [String]? = nil, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Export several images

Get a tarball containing all images and metadata for several image repositories.  For each value of the `names` parameter: if it is a specific name and tag (e.g. `ubuntu:latest`), then only that image (and its parents) are returned; if it is an image ID, similarly only that image (and its parents) are returned and there would be no names referenced in the 'repositories' file for this image ID.  For details on the format, see the [export image endpoint](#operation/ImageGet). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let names = ["inner_example"] // [String] | Image names to filter by (optional)

// Export several images
ImageAPI.imageGetAll(names: names) { (response, error) in
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
 **names** | [**[String]**](String.md) | Image names to filter by | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-tar

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageHistory**
```swift
    open class func imageHistory(name: String, completion: @escaping (_ data: [HistoryResponseItem]?, _ error: Error?) -> Void)
```

Get the history of an image

Return parent layers of an image.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Image name or ID

// Get the history of an image
ImageAPI.imageHistory(name: name) { (response, error) in
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
 **name** | **String** | Image name or ID | 

### Return type

[**[HistoryResponseItem]**](HistoryResponseItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageInspect**
```swift
    open class func imageInspect(name: String, completion: @escaping (_ data: ImageInspect?, _ error: Error?) -> Void)
```

Inspect an image

Return low-level information about an image.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Image name or id

// Inspect an image
ImageAPI.imageInspect(name: name) { (response, error) in
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
 **name** | **String** | Image name or id | 

### Return type

[**ImageInspect**](ImageInspect.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageList**
```swift
    open class func imageList(all: Bool? = nil, filters: String? = nil, sharedSize: Bool? = nil, digests: Bool? = nil, completion: @escaping (_ data: [ImageSummary]?, _ error: Error?) -> Void)
```

List Images

Returns a list of images on the server. Note that it uses a different, smaller representation of an image than inspecting a single image.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let all = true // Bool | Show all images. Only images from a final layer (no children) are shown by default. (optional) (default to false)
let filters = "filters_example" // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the images list.  Available filters:  - `before`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`) - `dangling=true` - `label=key` or `label=\"key=value\"` of an image label - `reference`=(`<image-name>[:<tag>]`) - `since`=(`<image-name>[:<tag>]`,  `<image id>` or `<image@digest>`)  (optional)
let sharedSize = true // Bool | Compute and show shared size as a `SharedSize` field on each image. (optional) (default to false)
let digests = true // Bool | Show digest information as a `RepoDigests` field on each image. (optional) (default to false)

// List Images
ImageAPI.imageList(all: all, filters: filters, sharedSize: sharedSize, digests: digests) { (response, error) in
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
 **all** | **Bool** | Show all images. Only images from a final layer (no children) are shown by default. | [optional] [default to false]
 **filters** | **String** | A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the images list.  Available filters:  - &#x60;before&#x60;&#x3D;(&#x60;&lt;image-name&gt;[:&lt;tag&gt;]&#x60;,  &#x60;&lt;image id&gt;&#x60; or &#x60;&lt;image@digest&gt;&#x60;) - &#x60;dangling&#x3D;true&#x60; - &#x60;label&#x3D;key&#x60; or &#x60;label&#x3D;\&quot;key&#x3D;value\&quot;&#x60; of an image label - &#x60;reference&#x60;&#x3D;(&#x60;&lt;image-name&gt;[:&lt;tag&gt;]&#x60;) - &#x60;since&#x60;&#x3D;(&#x60;&lt;image-name&gt;[:&lt;tag&gt;]&#x60;,  &#x60;&lt;image id&gt;&#x60; or &#x60;&lt;image@digest&gt;&#x60;)  | [optional] 
 **sharedSize** | **Bool** | Compute and show shared size as a &#x60;SharedSize&#x60; field on each image. | [optional] [default to false]
 **digests** | **Bool** | Show digest information as a &#x60;RepoDigests&#x60; field on each image. | [optional] [default to false]

### Return type

[**[ImageSummary]**](ImageSummary.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageLoad**
```swift
    open class func imageLoad(quiet: Bool? = nil, imagesTarball: URL? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Import images

Load a set of images and tags into a repository.  For details on the format, see the [export image endpoint](#operation/ImageGet). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let quiet = true // Bool | Suppress progress details during load. (optional) (default to false)
let imagesTarball = URL(string: "https://example.com")! // URL | Tar archive containing images (optional)

// Import images
ImageAPI.imageLoad(quiet: quiet, imagesTarball: imagesTarball) { (response, error) in
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
 **quiet** | **Bool** | Suppress progress details during load. | [optional] [default to false]
 **imagesTarball** | **URL** | Tar archive containing images | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-tar
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagePrune**
```swift
    open class func imagePrune(filters: String? = nil, completion: @escaping (_ data: ImagePruneResponse?, _ error: Error?) -> Void)
```

Delete unused images

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let filters = "filters_example" // String | Filters to process on the prune list, encoded as JSON (a `map[string][]string`). Available filters:  - `dangling=<boolean>` When set to `true` (or `1`), prune only    unused *and* untagged images. When set to `false`    (or `0`), all unused images are pruned. - `until=<string>` Prune images created before this timestamp. The `<timestamp>` can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. `10m`, `1h30m`) computed relative to the daemon machine’s time. - `label` (`label=<key>`, `label=<key>=<value>`, `label!=<key>`, or `label!=<key>=<value>`) Prune images with (or without, in case `label!=...` is used) the specified labels.  (optional)

// Delete unused images
ImageAPI.imagePrune(filters: filters) { (response, error) in
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
 **filters** | **String** | Filters to process on the prune list, encoded as JSON (a &#x60;map[string][]string&#x60;). Available filters:  - &#x60;dangling&#x3D;&lt;boolean&gt;&#x60; When set to &#x60;true&#x60; (or &#x60;1&#x60;), prune only    unused *and* untagged images. When set to &#x60;false&#x60;    (or &#x60;0&#x60;), all unused images are pruned. - &#x60;until&#x3D;&lt;string&gt;&#x60; Prune images created before this timestamp. The &#x60;&lt;timestamp&gt;&#x60; can be Unix timestamps, date formatted timestamps, or Go duration strings (e.g. &#x60;10m&#x60;, &#x60;1h30m&#x60;) computed relative to the daemon machine’s time. - &#x60;label&#x60; (&#x60;label&#x3D;&lt;key&gt;&#x60;, &#x60;label&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;, &#x60;label!&#x3D;&lt;key&gt;&#x60;, or &#x60;label!&#x3D;&lt;key&gt;&#x3D;&lt;value&gt;&#x60;) Prune images with (or without, in case &#x60;label!&#x3D;...&#x60; is used) the specified labels.  | [optional] 

### Return type

[**ImagePruneResponse**](ImagePruneResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imagePush**
```swift
    open class func imagePush(name: String, xRegistryAuth: String, tag: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Push an image

Push an image to a registry.  If you wish to push an image on to a private registry, that image must already have a tag which references the registry. For example, `registry.example.com/myimage:latest`.  The push is cancelled if the HTTP connection is closed. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Image name or ID.
let xRegistryAuth = "xRegistryAuth_example" // String | A base64url-encoded auth configuration.  Refer to the [authentication section](#section/Authentication) for details. 
let tag = "tag_example" // String | The tag to associate with the image on the registry. (optional)

// Push an image
ImageAPI.imagePush(name: name, xRegistryAuth: xRegistryAuth, tag: tag) { (response, error) in
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
 **name** | **String** | Image name or ID. | 
 **xRegistryAuth** | **String** | A base64url-encoded auth configuration.  Refer to the [authentication section](#section/Authentication) for details.  | 
 **tag** | **String** | The tag to associate with the image on the registry. | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageSearch**
```swift
    open class func imageSearch(term: String, limit: Int? = nil, filters: String? = nil, completion: @escaping (_ data: [ImageSearchResponseItem]?, _ error: Error?) -> Void)
```

Search images

Search for an image on Docker Hub.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let term = "term_example" // String | Term to search
let limit = 987 // Int | Maximum number of results to return (optional)
let filters = "filters_example" // String | A JSON encoded value of the filters (a `map[string][]string`) to process on the images list. Available filters:  - `is-automated=(true|false)` - `is-official=(true|false)` - `stars=<number>` Matches images that has at least 'number' stars.  (optional)

// Search images
ImageAPI.imageSearch(term: term, limit: limit, filters: filters) { (response, error) in
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
 **term** | **String** | Term to search | 
 **limit** | **Int** | Maximum number of results to return | [optional] 
 **filters** | **String** | A JSON encoded value of the filters (a &#x60;map[string][]string&#x60;) to process on the images list. Available filters:  - &#x60;is-automated&#x3D;(true|false)&#x60; - &#x60;is-official&#x3D;(true|false)&#x60; - &#x60;stars&#x3D;&lt;number&gt;&#x60; Matches images that has at least &#39;number&#39; stars.  | [optional] 

### Return type

[**[ImageSearchResponseItem]**](ImageSearchResponseItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **imageTag**
```swift
    open class func imageTag(name: String, repo: String? = nil, tag: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Tag an image

Tag an image so that it becomes part of a repository.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Image name or ID to tag.
let repo = "repo_example" // String | The repository to tag in. For example, `someuser/someimage`. (optional)
let tag = "tag_example" // String | The name of the new tag. (optional)

// Tag an image
ImageAPI.imageTag(name: name, repo: repo, tag: tag) { (response, error) in
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
 **name** | **String** | Image name or ID to tag. | 
 **repo** | **String** | The repository to tag in. For example, &#x60;someuser/someimage&#x60;. | [optional] 
 **tag** | **String** | The name of the new tag. | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

