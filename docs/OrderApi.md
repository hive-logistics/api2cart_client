# SwaggerClient::OrderApi

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order_abandoned_list**](OrderApi.md#order_abandoned_list) | **GET** /order.abandoned.list.json | 
[**order_add**](OrderApi.md#order_add) | **POST** /order.add.json | 
[**order_count**](OrderApi.md#order_count) | **GET** /order.count.json | 
[**order_financial_status_list**](OrderApi.md#order_financial_status_list) | **GET** /order.financial_status.list.json | 
[**order_find**](OrderApi.md#order_find) | **GET** /order.find.json | 
[**order_info**](OrderApi.md#order_info) | **GET** /order.info.json | 
[**order_list**](OrderApi.md#order_list) | **GET** /order.list.json | 
[**order_refund_add**](OrderApi.md#order_refund_add) | **POST** /order.refund.add.json | 
[**order_shipment_add**](OrderApi.md#order_shipment_add) | **POST** /order.shipment.add.json | 
[**order_shipment_list**](OrderApi.md#order_shipment_list) | **GET** /order.shipment.list.json | 
[**order_shipment_tracking_add**](OrderApi.md#order_shipment_tracking_add) | **POST** /order.shipment.tracking.add.json | 
[**order_shipment_update**](OrderApi.md#order_shipment_update) | **PUT** /order.shipment.update.json | 
[**order_status_list**](OrderApi.md#order_status_list) | **GET** /order.status.list.json | 
[**order_update**](OrderApi.md#order_update) | **PUT** /order.update.json | 


# **order_abandoned_list**
> ModelResponseOrderAbandonedList order_abandoned_list(opts)



Get list of orders that were left by customers before completing the order.

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

api_instance = SwaggerClient::OrderApi.new

opts = { 
  customer_id: 'customer_id_example', # String | Retrieves orders specified by customer id
  customer_email: 'customer_email_example', # String | Retrieves orders specified by customer email
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  modified_to: 'modified_to_example', # String | Retrieve entities to their modification date
  modified_from: 'modified_from_example', # String | Retrieve entities from their modification date
  skip_empty_email: false, # BOOLEAN | Filter empty emails
  store_id: 'store_id_example', # String | Store Id
  page_cursor: 'page_cursor_example', # String | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  params: 'customer,totals,items', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.order_abandoned_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_abandoned_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Retrieves orders specified by customer id | [optional] 
 **customer_email** | **String**| Retrieves orders specified by customer email | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **modified_to** | **String**| Retrieve entities to their modification date | [optional] 
 **modified_from** | **String**| Retrieve entities from their modification date | [optional] 
 **skip_empty_email** | **BOOLEAN**| Filter empty emails | [optional] [default to false]
 **store_id** | **String**| Store Id | [optional] 
 **page_cursor** | **String**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to customer,totals,items]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseOrderAbandonedList**](ModelResponseOrderAbandonedList.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_add**
> InlineResponse20044 order_add(body)



Add a new order to the cart.

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

api_instance = SwaggerClient::OrderApi.new

body = SwaggerClient::OrderAdd.new # OrderAdd | 


begin
  result = api_instance.order_add(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OrderAdd**](OrderAdd.md)|  | 

### Return type

[**InlineResponse20044**](InlineResponse20044.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **order_count**
> InlineResponse20041 order_count(opts)



Count orders in store

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

api_instance = SwaggerClient::OrderApi.new

opts = { 
  customer_id: 'customer_id_example', # String | Counts orders quantity specified by customer id
  customer_email: 'customer_email_example', # String | Counts orders quantity specified by customer email
  order_status: 'order_status_example', # String | Counts orders quantity specified by order status
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  modified_to: 'modified_to_example', # String | Retrieve entities to their modification date
  modified_from: 'modified_from_example', # String | Retrieve entities from their modification date
  store_id: 'store_id_example', # String | Counts orders quantity specified by store id
  ids: 'ids_example', # String | Counts orders specified by ids
  order_ids: 'order_ids_example', # String | Counts orders specified by order ids
  ebay_order_status: 'ebay_order_status_example', # String | Counts orders quantity specified by order status
  financial_status: 'financial_status_example', # String | Counts orders quantity specified by financial status
  fulfillment_status: 'fulfillment_status_example', # String | Create order with fulfillment status
  shipping_method: 'shipping_method_example' # String | Retrieve entities according to shipping method
}

begin
  result = api_instance.order_count(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Counts orders quantity specified by customer id | [optional] 
 **customer_email** | **String**| Counts orders quantity specified by customer email | [optional] 
 **order_status** | **String**| Counts orders quantity specified by order status | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **modified_to** | **String**| Retrieve entities to their modification date | [optional] 
 **modified_from** | **String**| Retrieve entities from their modification date | [optional] 
 **store_id** | **String**| Counts orders quantity specified by store id | [optional] 
 **ids** | **String**| Counts orders specified by ids | [optional] 
 **order_ids** | **String**| Counts orders specified by order ids | [optional] 
 **ebay_order_status** | **String**| Counts orders quantity specified by order status | [optional] 
 **financial_status** | **String**| Counts orders quantity specified by financial status | [optional] 
 **fulfillment_status** | **String**| Create order with fulfillment status | [optional] 
 **shipping_method** | **String**| Retrieve entities according to shipping method | [optional] 

### Return type

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_financial_status_list**
> InlineResponse20046 order_financial_status_list



Retrieve list of financial statuses

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

api_instance = SwaggerClient::OrderApi.new

begin
  result = api_instance.order_financial_status_list
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_financial_status_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20046**](InlineResponse20046.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_find**
> InlineResponse20043 order_find(opts)



Find orders

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

api_instance = SwaggerClient::OrderApi.new

opts = { 
  customer_id: 'customer_id_example', # String | Retrieves orders specified by customer id
  customer_email: 'customer_email_example', # String | Retrieves orders specified by customer email
  order_status: 'order_status_example', # String | Retrieves orders specified by order status
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  params: 'order_id,customer,totals,address,items,bundles,status', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  modified_to: 'modified_to_example', # String | Retrieve entities to their modification date
  modified_from: 'modified_from_example', # String | Retrieve entities from their modification date
  financial_status: 'financial_status_example' # String | Retrieves orders specified by financial status
}

begin
  result = api_instance.order_find(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Retrieves orders specified by customer id | [optional] 
 **customer_email** | **String**| Retrieves orders specified by customer email | [optional] 
 **order_status** | **String**| Retrieves orders specified by order status | [optional] 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to order_id,customer,totals,address,items,bundles,status]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **modified_to** | **String**| Retrieve entities to their modification date | [optional] 
 **modified_from** | **String**| Retrieve entities from their modification date | [optional] 
 **financial_status** | **String**| Retrieves orders specified by financial status | [optional] 

### Return type

[**InlineResponse20043**](InlineResponse20043.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_info**
> InlineResponse20042 order_info(opts)



Info about a specific order by ID

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

api_instance = SwaggerClient::OrderApi.new

opts = { 
  order_id: 'order_id_example', # String | Retrieves order’s info specified by order id
  id: 'id_example', # String | Retrieves order info specified by id
  params: 'order_id,customer,totals,address,items,bundles,status', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  store_id: 'store_id_example', # String | Defines store id where the order should be found
  enable_cache: false # BOOLEAN | If the value is 'true' and order exist in our cache, we will return order.info response from cache
}

begin
  result = api_instance.order_info(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| Retrieves order’s info specified by order id | [optional] 
 **id** | **String**| Retrieves order info specified by id | [optional] 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to order_id,customer,totals,address,items,bundles,status]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **store_id** | **String**| Defines store id where the order should be found | [optional] 
 **enable_cache** | **BOOLEAN**| If the value is &#39;true&#39; and order exist in our cache, we will return order.info response from cache | [optional] [default to false]

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_list**
> ModelResponseOrderList order_list(opts)



Get list of orders from store. Returns 4 orders by default.

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

api_instance = SwaggerClient::OrderApi.new

opts = { 
  customer_id: 'customer_id_example', # String | Retrieves orders specified by customer id
  customer_email: 'customer_email_example', # String | Retrieves orders specified by customer email
  phone: 'phone_example', # String | Filter orders by customer's phone number
  order_status: 'order_status_example', # String | Retrieves orders specified by order status
  order_status_ids: ['order_status_ids_example'], # Array<String> | Retrieves orders specified by order statuses
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  page_cursor: 'page_cursor_example', # String | Used to retrieve orders via cursor-based pagination (it can't be used with any other filtering parameter)
  sort_by: 'order_id', # String | Set field to sort by
  sort_direction: 'asc', # String | Set sorting direction
  params: 'order_id,customer,totals,address,items,bundles,status', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  modified_to: 'modified_to_example', # String | Retrieve entities to their modification date
  modified_from: 'modified_from_example', # String | Retrieve entities from their modification date
  store_id: 'store_id_example', # String | Store Id
  ids: 'ids_example', # String | Retrieves orders specified by ids
  order_ids: 'order_ids_example', # String | Retrieves orders specified by order ids
  ebay_order_status: 'ebay_order_status_example', # String | Retrieves orders specified by order status
  basket_id: 'basket_id_example', # String | Retrieves order’s info specified by basket id.
  financial_status: 'financial_status_example', # String | Retrieves orders specified by financial status
  fulfillment_status: 'fulfillment_status_example', # String | Create order with fulfillment status
  shipping_method: 'shipping_method_example', # String | Retrieve entities according to shipping method
  skip_order_ids: 'skip_order_ids_example', # String | Skipped orders by ids
  since_id: 56, # Integer | Retrieve entities starting from the specified id.
  is_deleted: true, # BOOLEAN | Filter deleted orders
  shipping_country_iso3: 'shipping_country_iso3_example', # String | Retrieve entities according to shipping country
  enable_cache: false # BOOLEAN | If the value is 'true', we will cache orders for a 15 minutes in order to increase speed and reduce requests throttling for some methods and shoping platforms (for example order.shipment.add)
}

begin
  result = api_instance.order_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **String**| Retrieves orders specified by customer id | [optional] 
 **customer_email** | **String**| Retrieves orders specified by customer email | [optional] 
 **phone** | **String**| Filter orders by customer&#39;s phone number | [optional] 
 **order_status** | **String**| Retrieves orders specified by order status | [optional] 
 **order_status_ids** | [**Array&lt;String&gt;**](String.md)| Retrieves orders specified by order statuses | [optional] 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **String**| Used to retrieve orders via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **sort_by** | **String**| Set field to sort by | [optional] [default to order_id]
 **sort_direction** | **String**| Set sorting direction | [optional] [default to asc]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to order_id,customer,totals,address,items,bundles,status]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **modified_to** | **String**| Retrieve entities to their modification date | [optional] 
 **modified_from** | **String**| Retrieve entities from their modification date | [optional] 
 **store_id** | **String**| Store Id | [optional] 
 **ids** | **String**| Retrieves orders specified by ids | [optional] 
 **order_ids** | **String**| Retrieves orders specified by order ids | [optional] 
 **ebay_order_status** | **String**| Retrieves orders specified by order status | [optional] 
 **basket_id** | **String**| Retrieves order’s info specified by basket id. | [optional] 
 **financial_status** | **String**| Retrieves orders specified by financial status | [optional] 
 **fulfillment_status** | **String**| Create order with fulfillment status | [optional] 
 **shipping_method** | **String**| Retrieve entities according to shipping method | [optional] 
 **skip_order_ids** | **String**| Skipped orders by ids | [optional] 
 **since_id** | **Integer**| Retrieve entities starting from the specified id. | [optional] 
 **is_deleted** | **BOOLEAN**| Filter deleted orders | [optional] 
 **shipping_country_iso3** | **String**| Retrieve entities according to shipping country | [optional] 
 **enable_cache** | **BOOLEAN**| If the value is &#39;true&#39;, we will cache orders for a 15 minutes in order to increase speed and reduce requests throttling for some methods and shoping platforms (for example order.shipment.add) | [optional] [default to false]

### Return type

[**ModelResponseOrderList**](ModelResponseOrderList.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_refund_add**
> InlineResponse20049 order_refund_add(body)



Add a refund to the order.

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

api_instance = SwaggerClient::OrderApi.new

body = SwaggerClient::OrderRefundAdd.new # OrderRefundAdd | 


begin
  result = api_instance.order_refund_add(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_refund_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OrderRefundAdd**](OrderRefundAdd.md)|  | 

### Return type

[**InlineResponse20049**](InlineResponse20049.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **order_shipment_add**
> InlineResponse20047 order_shipment_add(body)



Add a shipment to the order.

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

api_instance = SwaggerClient::OrderApi.new

body = SwaggerClient::OrderShipmentAdd.new # OrderShipmentAdd | 


begin
  result = api_instance.order_shipment_add(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_shipment_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OrderShipmentAdd**](OrderShipmentAdd.md)|  | 

### Return type

[**InlineResponse20047**](InlineResponse20047.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **order_shipment_list**
> ModelResponseOrderShipmentList order_shipment_list(order_id, opts)



Get list of shipments by orders.

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

api_instance = SwaggerClient::OrderApi.new

order_id = 'order_id_example' # String | Retrieves shipments specified by order id

opts = { 
  page_cursor: 'page_cursor_example', # String | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  params: 'id,order_id,items,tracking_numbers', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.order_shipment_list(order_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_shipment_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| Retrieves shipments specified by order id | 
 **page_cursor** | **String**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,order_id,items,tracking_numbers]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**ModelResponseOrderShipmentList**](ModelResponseOrderShipmentList.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_shipment_tracking_add**
> InlineResponse20048 order_shipment_tracking_add(body)



Add order shipment's tracking info.

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

api_instance = SwaggerClient::OrderApi.new

body = SwaggerClient::OrderShipmentTrackingAdd.new # OrderShipmentTrackingAdd | 


begin
  result = api_instance.order_shipment_tracking_add(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_shipment_tracking_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OrderShipmentTrackingAdd**](OrderShipmentTrackingAdd.md)|  | 

### Return type

[**InlineResponse20048**](InlineResponse20048.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **order_shipment_update**
> InlineResponse20027 order_shipment_update(body)



Update order's shipment information.

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

api_instance = SwaggerClient::OrderApi.new

body = SwaggerClient::OrderShipmentUpdate.new # OrderShipmentUpdate | 


begin
  result = api_instance.order_shipment_update(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_shipment_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OrderShipmentUpdate**](OrderShipmentUpdate.md)|  | 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **order_status_list**
> InlineResponse20045 order_status_list



Retrieve list of statuses

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

api_instance = SwaggerClient::OrderApi.new

begin
  result = api_instance.order_status_list
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_status_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20045**](InlineResponse20045.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **order_update**
> InlineResponse20027 order_update(order_id, opts)



Update existing order.

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

api_instance = SwaggerClient::OrderApi.new

order_id = 'order_id_example' # String | Defines the orders specified by order id

opts = { 
  store_id: 'store_id_example', # String | Defines store id where the order should be found
  order_status: 'order_status_example', # String | Defines new order's status
  comment: 'comment_example', # String | Specifies order comment
  admin_comment: 'admin_comment_example', # String | Specifies admin's order comment
  admin_private_comment: 'admin_private_comment_example', # String | Specifies private admin's order comment
  date_modified: 'date_modified_example', # String | Specifies order's  modification date
  date_finished: 'date_finished_example', # String | Specifies order's  finished date
  financial_status: 'financial_status_example', # String | Update order financial status to specified
  order_payment_method: 'order_payment_method_example', # String | Defines order payment method.<br/>Setting order_payment_method on Shopify will also change financial_status field value to 'paid'
  send_notifications: false # BOOLEAN | Send notifications to customer after order was created
}

begin
  result = api_instance.order_update(order_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->order_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| Defines the orders specified by order id | 
 **store_id** | **String**| Defines store id where the order should be found | [optional] 
 **order_status** | **String**| Defines new order&#39;s status | [optional] 
 **comment** | **String**| Specifies order comment | [optional] 
 **admin_comment** | **String**| Specifies admin&#39;s order comment | [optional] 
 **admin_private_comment** | **String**| Specifies private admin&#39;s order comment | [optional] 
 **date_modified** | **String**| Specifies order&#39;s  modification date | [optional] 
 **date_finished** | **String**| Specifies order&#39;s  finished date | [optional] 
 **financial_status** | **String**| Update order financial status to specified | [optional] 
 **order_payment_method** | **String**| Defines order payment method.&lt;br/&gt;Setting order_payment_method on Shopify will also change financial_status field value to &#39;paid&#39; | [optional] 
 **send_notifications** | **BOOLEAN**| Send notifications to customer after order was created | [optional] [default to false]

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



