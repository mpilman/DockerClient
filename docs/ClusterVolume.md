# ClusterVolume

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **String** | The Swarm ID of this volume. Because cluster volumes are Swarm objects, they have an ID, unlike non-cluster volumes. This ID can be used to refer to the Volume instead of the name.  | [optional] 
**version** | [**ObjectVersion**](ObjectVersion.md) |  | [optional] 
**createdAt** | **String** |  | [optional] 
**updatedAt** | **String** |  | [optional] 
**spec** | [**ClusterVolumeSpec**](ClusterVolumeSpec.md) |  | [optional] 
**info** | [**ClusterVolumeInfo**](ClusterVolumeInfo.md) |  | [optional] 
**publishStatus** | [ClusterVolumePublishStatusInner] | The status of the volume as it pertains to its publishing and use on specific nodes  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


