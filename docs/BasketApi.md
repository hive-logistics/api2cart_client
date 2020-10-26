# SwaggerClient::BasketApi

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**basket_info**](BasketApi.md#basket_info) | **GET** /basket.info.json | 
[**basket_item_add**](BasketApi.md#basket_item_add) | **POST** /basket.item.add.json | 
[**basket_live_shipping_service_create**](BasketApi.md#basket_live_shipping_service_create) | **POST** /basket.live_shipping_service.create.json | 
[**basket_live_shipping_service_delete**](BasketApi.md#basket_live_shipping_service_delete) | **DELETE** /basket.live_shipping_service.delete.json | 
[**basket_live_shipping_service_list**](BasketApi.md#basket_live_shipping_service_list) | **GET** /basket.live_shipping_service.list.json | 


# **basket_info**
> InlineResponse20051 basket_info(id, opts)



Retrieve basket information.

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

api_instance = SwaggerClient::BasketApi.new

id = 'id_example' # String | Entity id

opts = { 
  store_id: 'store_id_example', # String | Store Id
  params: 'force_all', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.basket_info(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BasketApi->basket_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Entity id | 
 **store_id** | **String**| Store Id | [optional] 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to force_all]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**InlineResponse20051**](InlineResponse20051.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **basket_item_add**
> InlineResponse20083 basket_item_add(customer_id, product_id, opts)



Add item to basket

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

api_instance = SwaggerClient::BasketApi.new

customer_id = 'customer_id_example' # String | Retrieves orders specified by customer id

product_id = 'product_id_example' # String | Defines id of the product which should be added to the basket

opts = { 
  variant_id: 'variant_id_example', # String | Defines product's variants specified by variant id
  quantity: 0, # Float | Defines new items quantity
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.basket_item_add(customer_id, product_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BasketApi->basket_item_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Retrieves orders specified by customer id | 
 **product_id** | **String**| Defines id of the product which should be added to the basket | 
 **variant_id** | **String**| Defines product&#39;s variants specified by variant id | [optional] 
 **quantity** | **Float**| Defines new items quantity | [optional] [default to 0]
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20083**](InlineResponse20083.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **basket_live_shipping_service_create**
> InlineResponse20052 basket_live_shipping_service_create(name, callback, opts)



Create live shipping rate service. (Beta)

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

api_instance = SwaggerClient::BasketApi.new

name = 'name_example' # String | Shipping Service Name

callback = 'callback_example' # String | Callback url that returns shipping rates. It should be able to accept POST requests with json data.

opts = { 
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.basket_live_shipping_service_create(name, callback, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BasketApi->basket_live_shipping_service_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Shipping Service Name | 
 **callback** | **String**| Callback url that returns shipping rates. It should be able to accept POST requests with json data. | 
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20052**](InlineResponse20052.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **basket_live_shipping_service_delete**
> InlineResponse20019 basket_live_shipping_service_delete(id)



Delete live shipping rate service. (Beta)

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

api_instance = SwaggerClient::BasketApi.new

id = 56 # Integer | Entity id


begin
  result = api_instance.basket_live_shipping_service_delete(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BasketApi->basket_live_shipping_service_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Entity id | 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **basket_live_shipping_service_list**
> InlineResponse20050 basket_live_shipping_service_list(opts)



Retrieve a list of live shipping rate services. (Beta)

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

api_instance = SwaggerClient::BasketApi.new

opts = { 
  store_id: 'store_id_example', # String | Store Id
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10 # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
}

begin
  result = api_instance.basket_live_shipping_service_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling BasketApi->basket_live_shipping_service_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **String**| Store Id | [optional] 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]

### Return type

[**InlineResponse20050**](InlineResponse20050.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



