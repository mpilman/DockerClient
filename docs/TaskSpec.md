# TaskSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pluginSpec** | [**TaskSpecPluginSpec**](TaskSpecPluginSpec.md) |  | [optional] 
**containerSpec** | [**TaskSpecContainerSpec**](TaskSpecContainerSpec.md) |  | [optional] 
**networkAttachmentSpec** | [**TaskSpecNetworkAttachmentSpec**](TaskSpecNetworkAttachmentSpec.md) |  | [optional] 
**resources** | [**TaskSpecResources**](TaskSpecResources.md) |  | [optional] 
**restartPolicy** | [**TaskSpecRestartPolicy**](TaskSpecRestartPolicy.md) |  | [optional] 
**placement** | [**TaskSpecPlacement**](TaskSpecPlacement.md) |  | [optional] 
**forceUpdate** | **Int** | A counter that triggers an update even if no relevant parameters have been changed.  | [optional] 
**runtime** | **String** | Runtime is the type of runtime specified for the task executor.  | [optional] 
**networks** | [NetworkAttachmentConfig] | Specifies which networks the service should attach to. | [optional] 
**logDriver** | [**TaskSpecLogDriver**](TaskSpecLogDriver.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


