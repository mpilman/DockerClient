# ServiceCreateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the service. | [optional] 
**labels** | **[String: String]** | User-defined key/value metadata. | [optional] 
**taskTemplate** | [**TaskSpec**](TaskSpec.md) |  | [optional] 
**mode** | [**ServiceSpecMode**](ServiceSpecMode.md) |  | [optional] 
**updateConfig** | [**ServiceSpecUpdateConfig**](ServiceSpecUpdateConfig.md) |  | [optional] 
**rollbackConfig** | [**ServiceSpecRollbackConfig**](ServiceSpecRollbackConfig.md) |  | [optional] 
**networks** | [NetworkAttachmentConfig] | Specifies which networks the service should attach to. | [optional] 
**endpointSpec** | [**EndpointSpec**](EndpointSpec.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


