# SwarmSpecCAConfigExternalCAsInner

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_protocol** | **String** | Protocol for communication with the external CA (currently only &#x60;cfssl&#x60; is supported).  | [optional] [default to .cfssl]
**URL** | **String** | URL where certificate signing requests should be sent.  | [optional] 
**options** | **[String: String]** | An object with key/value pairs that are interpreted as protocol-specific options for the external CA driver.  | [optional] 
**cACert** | **String** | The root CA certificate (in PEM format) this external CA uses to issue TLS certificates (assumed to be to the current swarm root CA certificate if not provided).  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


