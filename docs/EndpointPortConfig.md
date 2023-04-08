# EndpointPortConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**_protocol** | **String** |  | [optional] 
**targetPort** | **Int** | The port inside the container. | [optional] 
**publishedPort** | **Int** | The port on the swarm hosts. | [optional] 
**publishMode** | **String** | The mode in which port is published.  &lt;p&gt;&lt;br /&gt;&lt;/p&gt;  - \&quot;ingress\&quot; makes the target port accessible on every node,   regardless of whether there is a task for the service running on   that node or not. - \&quot;host\&quot; bypasses the routing mesh and publish the port directly on   the swarm node where that service is running.  | [optional] [default to .ingress]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


