# ContainerConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hostname** | **String** | The hostname to use for the container, as a valid RFC 1123 hostname.  | [optional] 
**domainname** | **String** | The domain name to use for the container.  | [optional] 
**user** | **String** | The user that commands are run as inside the container. | [optional] 
**attachStdin** | **Bool** | Whether to attach to &#x60;stdin&#x60;. | [optional] [default to false]
**attachStdout** | **Bool** | Whether to attach to &#x60;stdout&#x60;. | [optional] [default to true]
**attachStderr** | **Bool** | Whether to attach to &#x60;stderr&#x60;. | [optional] [default to true]
**exposedPorts** | **[String: AnyCodable]** | An object mapping ports to an empty object in the form:  &#x60;{\&quot;&lt;port&gt;/&lt;tcp|udp|sctp&gt;\&quot;: {}}&#x60;  | [optional] 
**tty** | **Bool** | Attach standard streams to a TTY, including &#x60;stdin&#x60; if it is not closed.  | [optional] [default to false]
**openStdin** | **Bool** | Open &#x60;stdin&#x60; | [optional] [default to false]
**stdinOnce** | **Bool** | Close &#x60;stdin&#x60; after one attached client disconnects | [optional] [default to false]
**env** | **[String]** | A list of environment variables to set inside the container in the form &#x60;[\&quot;VAR&#x3D;value\&quot;, ...]&#x60;. A variable without &#x60;&#x3D;&#x60; is removed from the environment, rather than to have an empty value.  | [optional] 
**cmd** | **[String]** | Command to run specified as a string or an array of strings.  | [optional] 
**healthcheck** | [**HealthConfig**](HealthConfig.md) |  | [optional] 
**argsEscaped** | **Bool** | Command is already escaped (Windows only) | [optional] [default to false]
**image** | **String** | The name (or reference) of the image to use when creating the container, or which was used when the container was created.  | [optional] 
**volumes** | **[String: AnyCodable]** | An object mapping mount point paths inside the container to empty objects.  | [optional] 
**workingDir** | **String** | The working directory for commands to run in. | [optional] 
**entrypoint** | **[String]** | The entry point for the container as a string or an array of strings.  If the array consists of exactly one empty string (&#x60;[\&quot;\&quot;]&#x60;) then the entry point is reset to system default (i.e., the entry point used by docker when there is no &#x60;ENTRYPOINT&#x60; instruction in the &#x60;Dockerfile&#x60;).  | [optional] 
**networkDisabled** | **Bool** | Disable networking for the container. | [optional] 
**macAddress** | **String** | MAC address of the container. | [optional] 
**onBuild** | **[String]** | &#x60;ONBUILD&#x60; metadata that were defined in the image&#39;s &#x60;Dockerfile&#x60;.  | [optional] 
**labels** | **[String: String]** | User-defined key/value metadata. | [optional] 
**stopSignal** | **String** | Signal to stop a container as a string or unsigned integer.  | [optional] 
**stopTimeout** | **Int** | Timeout to stop a container in seconds. | [optional] 
**shell** | **[String]** | Shell for when &#x60;RUN&#x60;, &#x60;CMD&#x60;, and &#x60;ENTRYPOINT&#x60; uses a shell.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


