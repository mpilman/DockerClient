# EventMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of object emitting the event | [optional] 
**action** | **String** | The type of event | [optional] 
**actor** | [**EventActor**](EventActor.md) |  | [optional] 
**scope** | **String** | Scope of the event. Engine events are &#x60;local&#x60; scope. Cluster (Swarm) events are &#x60;swarm&#x60; scope.  | [optional] 
**time** | **Int64** | Timestamp of event | [optional] 
**timeNano** | **Int64** | Timestamp of event, with nanosecond accuracy | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


