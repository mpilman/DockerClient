# DistributionAPI

All URIs are relative to *http://localhost/v1.42*

Method | HTTP request | Description
------------- | ------------- | -------------
[**distributionInspect**](DistributionAPI.md#distributioninspect) | **GET** /distribution/{name}/json | Get image information from the registry


# **distributionInspect**
```swift
    open class func distributionInspect(name: String, completion: @escaping (_ data: DistributionInspect?, _ error: Error?) -> Void)
```

Get image information from the registry

Return image digest and platform information by contacting the registry. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let name = "name_example" // String | Image name or id

// Get image information from the registry
DistributionAPI.distributionInspect(name: name) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String** | Image name or id | 

### Return type

[**DistributionInspect**](DistributionInspect.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

