# SwaggerClient::TaxApi

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tax_class_info**](TaxApi.md#tax_class_info) | **GET** /tax.class.info.json | 


# **tax_class_info**
> InlineResponse20082 tax_class_info(tax_class_id, opts)



Get info about tax

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization
SwaggerClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api_key'] = 'Bearer'

  # Configure API key authorization: store_key
  config.api_key['store_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['store_key'] = 'Bearer'
end

api_instance = SwaggerClient::TaxApi.new

tax_class_id = 'tax_class_id_example' # String | Retrieves taxes specified by class id

opts = { 
  params: 'tax_class_id,name,avail', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.tax_class_info(tax_class_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling TaxApi->tax_class_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tax_class_id** | **String**| Retrieves taxes specified by class id | 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to tax_class_id,name,avail]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**InlineResponse20082**](InlineResponse20082.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



