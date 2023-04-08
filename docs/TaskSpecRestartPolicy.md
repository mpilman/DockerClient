# TaskSpecRestartPolicy

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**condition** | **String** | Condition for restart. | [optional] 
**delay** | **Int64** | Delay between restart attempts. | [optional] 
**maxAttempts** | **Int64** | Maximum attempts to restart a given container before giving up (default value is 0, which is ignored).  | [optional] [default to 0]
**window** | **Int64** | Windows is the time window used to evaluate the restart policy (default value is 0, which is unbounded).  | [optional] [default to 0]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


