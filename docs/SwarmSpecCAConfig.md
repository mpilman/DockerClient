# SwarmSpecCAConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nodeCertExpiry** | **Int64** | The duration node certificates are issued for. | [optional] 
**externalCAs** | [SwarmSpecCAConfigExternalCAsInner] | Configuration for forwarding signing requests to an external certificate authority.  | [optional] 
**signingCACert** | **String** | The desired signing CA certificate for all swarm node TLS leaf certificates, in PEM format.  | [optional] 
**signingCAKey** | **String** | The desired signing CA key for all swarm node TLS leaf certificates, in PEM format.  | [optional] 
**forceRotate** | **Int** | An integer whose purpose is to force swarm to generate a new signing CA certificate and key, if none have been specified in &#x60;SigningCACert&#x60; and &#x60;SigningCAKey&#x60;  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


