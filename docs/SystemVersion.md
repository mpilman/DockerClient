# SystemVersion

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**platform** | [**SystemVersionPlatform**](SystemVersionPlatform.md) |  | [optional] 
**components** | [SystemVersionComponentsInner] | Information about system components  | [optional] 
**version** | **String** | The version of the daemon | [optional] 
**apiVersion** | **String** | The default (and highest) API version that is supported by the daemon  | [optional] 
**minAPIVersion** | **String** | The minimum API version that is supported by the daemon  | [optional] 
**gitCommit** | **String** | The Git commit of the source code that was used to build the daemon  | [optional] 
**goVersion** | **String** | The version Go used to compile the daemon, and the version of the Go runtime in use.  | [optional] 
**os** | **String** | The operating system that the daemon is running on (\&quot;linux\&quot; or \&quot;windows\&quot;)  | [optional] 
**arch** | **String** | The architecture that the daemon is running on  | [optional] 
**kernelVersion** | **String** | The kernel version (&#x60;uname -r&#x60;) that the daemon is running on.  This field is omitted when empty.  | [optional] 
**experimental** | **Bool** | Indicates if the daemon is started with experimental features enabled.  This field is omitted when empty / false.  | [optional] 
**buildTime** | **String** | The date and time that the daemon was compiled.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


