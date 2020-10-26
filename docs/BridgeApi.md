# SwaggerClient::BridgeApi

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bridge_delete**](BridgeApi.md#bridge_delete) | **POST** /bridge.delete.json | 
[**bridge_update**](BridgeApi.md#bridge_update) | **POST** /bridge.update.json | 


# **bridge_delete**
> InlineResponse20021 bridge_delete



Delete bridge from the store.

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

api_instance = SwaggerClient::BridgeApi.new

begin
  result = api_instance.bridge_delete
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BridgeApi->bridge_delete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **bridge_update**
> InlineResponse20030 bridge_update



Update bridge in the store.

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

api_instance = SwaggerClient::BridgeApi.new

begin
  result = api_instance.bridge_update
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BridgeApi->bridge_update: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



