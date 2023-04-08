# VolumeCreateOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The new volume&#39;s name. If not specified, Docker generates a name.  | [optional] 
**driver** | **String** | Name of the volume driver to use. | [optional] [default to "local"]
**driverOpts** | **[String: String]** | A mapping of driver options and values. These options are passed directly to the driver and are driver specific.  | [optional] 
**labels** | **[String: String]** | User-defined key/value metadata. | [optional] 
**clusterVolumeSpec** | [**ClusterVolumeSpec**](ClusterVolumeSpec.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


