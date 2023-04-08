# SwarmInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nodeID** | **String** | Unique identifier of for this node in the swarm. | [optional] [default to ""]
**nodeAddr** | **String** | IP address at which this node can be reached by other nodes in the swarm.  | [optional] [default to ""]
**localNodeState** | [**LocalNodeState**](LocalNodeState.md) |  | [optional] 
**controlAvailable** | **Bool** |  | [optional] [default to false]
**error** | **String** |  | [optional] [default to ""]
**remoteManagers** | [PeerNode] | List of ID&#39;s and addresses of other managers in the swarm.  | [optional] 
**nodes** | **Int** | Total number of nodes in the swarm. | [optional] 
**managers** | **Int** | Total number of managers in the swarm. | [optional] 
**cluster** | [**ClusterInfo**](ClusterInfo.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


