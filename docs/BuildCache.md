# BuildCache

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ID** | **String** | Unique ID of the build cache record.  | [optional] 
**parent** | **String** | ID of the parent build cache record.  &gt; **Deprecated**: This field is deprecated, and omitted if empty.  | [optional] 
**parents** | **[String]** | List of parent build cache record IDs.  | [optional] 
**type** | **String** | Cache record type.  | [optional] 
**description** | **String** | Description of the build-step that produced the build cache.  | [optional] 
**inUse** | **Bool** | Indicates if the build cache is in use.  | [optional] 
**shared** | **Bool** | Indicates if the build cache is shared.  | [optional] 
**size** | **Int** | Amount of disk space used by the build cache (in bytes).  | [optional] 
**createdAt** | **String** | Date and time at which the build cache was created in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  | [optional] 
**lastUsedAt** | **String** | Date and time at which the build cache was last used in [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format with nano-seconds.  | [optional] 
**usageCount** | **Int** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


