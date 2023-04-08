# SecretSpec

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | User-defined name of the secret. | [optional] 
**labels** | **[String: String]** | User-defined key/value metadata. | [optional] 
**data** | **String** | Base64-url-safe-encoded ([RFC 4648](https://tools.ietf.org/html/rfc4648#section-5)) data to store as secret.  This field is only used to _create_ a secret, and is not returned by other endpoints.  | [optional] 
**driver** | [**Driver**](Driver.md) |  | [optional] 
**templating** | [**Driver**](Driver.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


