# SwaggerClient::WebhookApi

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhook_count**](WebhookApi.md#webhook_count) | **GET** /webhook.count.json | 
[**webhook_create**](WebhookApi.md#webhook_create) | **POST** /webhook.create.json | 
[**webhook_delete**](WebhookApi.md#webhook_delete) | **DELETE** /webhook.delete.json | 
[**webhook_events**](WebhookApi.md#webhook_events) | **GET** /webhook.events.json | 
[**webhook_list**](WebhookApi.md#webhook_list) | **GET** /webhook.list.json | 
[**webhook_update**](WebhookApi.md#webhook_update) | **PUT** /webhook.update.json | 


# **webhook_count**
> InlineResponse2002 webhook_count(opts)



Count registered webhooks on the store.

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

api_instance = SwaggerClient::WebhookApi.new

opts = { 
  entity: 'entity_example', # String | The entity you want to filter webhooks by (e.g. order or product)
  action: 'action_example', # String | The action you want to filter webhooks by (e.g. order or product)
  active: true # BOOLEAN | The webhook status you want to filter webhooks by
}

begin
  result = api_instance.webhook_count(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->webhook_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity** | **String**| The entity you want to filter webhooks by (e.g. order or product) | [optional] 
 **action** | **String**| The action you want to filter webhooks by (e.g. order or product) | [optional] 
 **active** | **BOOLEAN**| The webhook status you want to filter webhooks by | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhook_create**
> InlineResponse200 webhook_create(entity, action, callback, opts)



Create webhook on the store and subscribe to it.

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

api_instance = SwaggerClient::WebhookApi.new

entity = 'entity_example' # String | Specify the entity that you want to enable webhooks for (e.g product, order, customer, category)

action = 'action_example' # String | Specify what action (event) will trigger the webhook (e.g add, delete, or update)

callback = 'callback_example' # String | Callback where the webhook should send the POST request when the event occurs

opts = { 
  label: 'label_example', # String | The name you give to the webhook
  fields: 'id', # String | Fields the webhook should send
  active: true, # BOOLEAN | Webhook status
  store_id: 'store_id_example' # String | Defines store id where the webhook should be assigned
}

begin
  result = api_instance.webhook_create(entity, action, callback, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->webhook_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity** | **String**| Specify the entity that you want to enable webhooks for (e.g product, order, customer, category) | 
 **action** | **String**| Specify what action (event) will trigger the webhook (e.g add, delete, or update) | 
 **callback** | **String**| Callback where the webhook should send the POST request when the event occurs | 
 **label** | **String**| The name you give to the webhook | [optional] 
 **fields** | **String**| Fields the webhook should send | [optional] [default to id]
 **active** | **BOOLEAN**| Webhook status | [optional] [default to true]
 **store_id** | **String**| Defines store id where the webhook should be assigned | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhook_delete**
> InlineResponse2004 webhook_delete(id)



Delete registered webhook on the store.

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

api_instance = SwaggerClient::WebhookApi.new

id = 'id_example' # String | Webhook id


begin
  result = api_instance.webhook_delete(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->webhook_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Webhook id | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhook_events**
> InlineResponse2003 webhook_events



List all Webhooks that are available on this store.

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

api_instance = SwaggerClient::WebhookApi.new

begin
  result = api_instance.webhook_events
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->webhook_events: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhook_list**
> InlineResponse2001 webhook_list(opts)



List registered webhook on the store.

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

api_instance = SwaggerClient::WebhookApi.new

opts = { 
  params: 'id,entity,action,callback', # String | Set this parameter in order to choose which entity fields you want to retrieve
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  entity: 'entity_example', # String | The entity you want to filter webhooks by (e.g. order or product)
  action: 'action_example', # String | The action you want to filter webhooks by (e.g. add, update, or delete)
  active: true, # BOOLEAN | The webhook status you want to filter webhooks by
  ids: 'ids_example' # String | List of сomma-separated webhook ids
}

begin
  result = api_instance.webhook_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->webhook_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,entity,action,callback]
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **entity** | **String**| The entity you want to filter webhooks by (e.g. order or product) | [optional] 
 **action** | **String**| The action you want to filter webhooks by (e.g. add, update, or delete) | [optional] 
 **active** | **BOOLEAN**| The webhook status you want to filter webhooks by | [optional] 
 **ids** | **String**| List of сomma-separated webhook ids | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhook_update**
> InlineResponse2005 webhook_update(id, opts)



Update Webhooks parameters.

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

api_instance = SwaggerClient::WebhookApi.new

id = 'id_example' # String | Webhook id

opts = { 
  callback: 'callback_example', # String | Callback where the webhook should send the POST request when the event occurs
  label: 'label_example', # String | The name you give to the webhook
  fields: 'fields_example', # String | Fields the webhook should send
  active: true # BOOLEAN | Webhook status
}

begin
  result = api_instance.webhook_update(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling WebhookApi->webhook_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Webhook id | 
 **callback** | **String**| Callback where the webhook should send the POST request when the event occurs | [optional] 
 **label** | **String**| The name you give to the webhook | [optional] 
 **fields** | **String**| Fields the webhook should send | [optional] 
 **active** | **BOOLEAN**| Webhook status | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



