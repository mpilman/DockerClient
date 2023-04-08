# ClusterVolumePublishStatusInner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nodeID** | **String** | The ID of the Swarm node the volume is published on.  | [optional] 
**state** | **String** | The published state of the volume. * &#x60;pending-publish&#x60; The volume should be published to this node, but the call to the controller plugin to do so has not yet been successfully completed. * &#x60;published&#x60; The volume is published successfully to the node. * &#x60;pending-node-unpublish&#x60; The volume should be unpublished from the node, and the manager is awaiting confirmation from the worker that it has done so. * &#x60;pending-controller-unpublish&#x60; The volume is successfully unpublished from the node, but has not yet been successfully unpublished on the controller.  | [optional] 
**publishContext** | **[String: String]** | A map of strings to strings returned by the CSI controller plugin when a volume is published.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


