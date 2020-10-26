# SwaggerClient::AttributeApi

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attribute_add**](AttributeApi.md#attribute_add) | **POST** /attribute.add.json | 
[**attribute_assign_group**](AttributeApi.md#attribute_assign_group) | **POST** /attribute.assign.group.json | 
[**attribute_assign_set**](AttributeApi.md#attribute_assign_set) | **POST** /attribute.assign.set.json | 
[**attribute_attributeset_list**](AttributeApi.md#attribute_attributeset_list) | **GET** /attribute.attributeset.list.json | 
[**attribute_count**](AttributeApi.md#attribute_count) | **GET** /attribute.count.json | 
[**attribute_delete**](AttributeApi.md#attribute_delete) | **DELETE** /attribute.delete.json | 
[**attribute_group_list**](AttributeApi.md#attribute_group_list) | **GET** /attribute.group.list.json | 
[**attribute_info**](AttributeApi.md#attribute_info) | **GET** /attribute.info.json | 
[**attribute_list**](AttributeApi.md#attribute_list) | **GET** /attribute.list.json | 
[**attribute_type_list**](AttributeApi.md#attribute_type_list) | **GET** /attribute.type.list.json | 
[**attribute_unassign_group**](AttributeApi.md#attribute_unassign_group) | **POST** /attribute.unassign.group.json | 
[**attribute_unassign_set**](AttributeApi.md#attribute_unassign_set) | **POST** /attribute.unassign.set.json | 


# **attribute_add**
> InlineResponse200 attribute_add(type, name, opts)



Add new attribute

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

api_instance = SwaggerClient::AttributeApi.new

type = 'type_example' # String | Defines attribute's type

name = 'name_example' # String | Defines attributes's name

opts = { 
  code: 'code_example', # String | Entity code
  store_id: 'store_id_example', # String | Store Id
  lang_id: 'lang_id_example', # String | Language id
  visible: false, # BOOLEAN | Set visibility status
  required: false, # BOOLEAN | Defines if the option is required
  position: 0, # Integer | Attribute`s position
  attribute_group_id: 'attribute_group_id_example', # String | Filter by attribute_group_id
  is_global: 'Store', # String | Attribute saving scope
  is_searchable: false, # BOOLEAN | Use attribute in Quick Search
  is_filterable: 'No', # String | Use In Layered Navigation
  is_comparable: false, # BOOLEAN | Comparable on Front-end
  is_html_allowed_on_front: false, # BOOLEAN | Allow HTML Tags on Frontend
  is_filterable_in_search: false, # BOOLEAN | Use In Search Results Layered Navigation
  is_configurable: false, # BOOLEAN | Use To Create Configurable Product
  is_visible_in_advanced_search: false, # BOOLEAN | Use in Advanced Search
  is_used_for_promo_rules: false, # BOOLEAN | Use for Promo Rule Conditions
  used_in_product_listing: false, # BOOLEAN | Used in Product Listing
  used_for_sort_by: false, # BOOLEAN | Used for Sorting in Product Listing
  apply_to: 'all_types' # String | Types of products which can have this attribute
}

begin
  result = api_instance.attribute_add(type, name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Defines attribute&#39;s type | 
 **name** | **String**| Defines attributes&#39;s name | 
 **code** | **String**| Entity code | [optional] 
 **store_id** | **String**| Store Id | [optional] 
 **lang_id** | **String**| Language id | [optional] 
 **visible** | **BOOLEAN**| Set visibility status | [optional] [default to false]
 **required** | **BOOLEAN**| Defines if the option is required | [optional] [default to false]
 **position** | **Integer**| Attribute&#x60;s position | [optional] [default to 0]
 **attribute_group_id** | **String**| Filter by attribute_group_id | [optional] 
 **is_global** | **String**| Attribute saving scope | [optional] [default to Store]
 **is_searchable** | **BOOLEAN**| Use attribute in Quick Search | [optional] [default to false]
 **is_filterable** | **String**| Use In Layered Navigation | [optional] [default to No]
 **is_comparable** | **BOOLEAN**| Comparable on Front-end | [optional] [default to false]
 **is_html_allowed_on_front** | **BOOLEAN**| Allow HTML Tags on Frontend | [optional] [default to false]
 **is_filterable_in_search** | **BOOLEAN**| Use In Search Results Layered Navigation | [optional] [default to false]
 **is_configurable** | **BOOLEAN**| Use To Create Configurable Product | [optional] [default to false]
 **is_visible_in_advanced_search** | **BOOLEAN**| Use in Advanced Search | [optional] [default to false]
 **is_used_for_promo_rules** | **BOOLEAN**| Use for Promo Rule Conditions | [optional] [default to false]
 **used_in_product_listing** | **BOOLEAN**| Used in Product Listing | [optional] [default to false]
 **used_for_sort_by** | **BOOLEAN**| Used for Sorting in Product Listing | [optional] [default to false]
 **apply_to** | **String**| Types of products which can have this attribute | [optional] [default to all_types]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **attribute_assign_group**
> InlineResponse20061 attribute_assign_group(id, group_id, opts)



Assign attribute to the group

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

api_instance = SwaggerClient::AttributeApi.new

id = 'id_example' # String | Entity id

group_id = 'group_id_example' # String | Attribute group_id

opts = { 
  attribute_set_id: 'attribute_set_id_example' # String | Attribute set id
}

begin
  result = api_instance.attribute_assign_group(id, group_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_assign_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Entity id | 
 **group_id** | **String**| Attribute group_id | 
 **attribute_set_id** | **String**| Attribute set id | [optional] 

### Return type

[**InlineResponse20061**](InlineResponse20061.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **attribute_assign_set**
> InlineResponse20061 attribute_assign_set(id, attribute_set_id, opts)



Assign attribute to the attribute set

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

api_instance = SwaggerClient::AttributeApi.new

id = 'id_example' # String | Entity id

attribute_set_id = 'attribute_set_id_example' # String | Attribute set id

opts = { 
  group_id: 'group_id_example' # String | Attribute group_id
}

begin
  result = api_instance.attribute_assign_set(id, attribute_set_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_assign_set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Entity id | 
 **attribute_set_id** | **String**| Attribute set id | 
 **group_id** | **String**| Attribute group_id | [optional] 

### Return type

[**InlineResponse20061**](InlineResponse20061.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **attribute_attributeset_list**
> InlineResponse20063 attribute_attributeset_list(opts)



Get attribute_set list

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

api_instance = SwaggerClient::AttributeApi.new

opts = { 
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  params: 'id,name', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.attribute_attributeset_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_attributeset_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,name]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**InlineResponse20063**](InlineResponse20063.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **attribute_count**
> InlineResponse20059 attribute_count(opts)



Get attributes count

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

api_instance = SwaggerClient::AttributeApi.new

opts = { 
  type: 'type_example', # String | Defines attribute's type
  store_id: 'store_id_example', # String | Store Id
  lang_id: 'lang_id_example', # String | Language id
  visible: true, # BOOLEAN | Filter items by visibility status
  required: true, # BOOLEAN | Defines if the option is required
  system: true # BOOLEAN | True if attribute is system
}

begin
  result = api_instance.attribute_count(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**| Defines attribute&#39;s type | [optional] 
 **store_id** | **String**| Store Id | [optional] 
 **lang_id** | **String**| Language id | [optional] 
 **visible** | **BOOLEAN**| Filter items by visibility status | [optional] 
 **required** | **BOOLEAN**| Defines if the option is required | [optional] 
 **system** | **BOOLEAN**| True if attribute is system | [optional] 

### Return type

[**InlineResponse20059**](InlineResponse20059.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **attribute_delete**
> InlineResponse2004 attribute_delete(id, opts)



Delete attribute from store

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

api_instance = SwaggerClient::AttributeApi.new

id = 'id_example' # String | Entity id

opts = { 
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.attribute_delete(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Entity id | 
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **attribute_group_list**
> InlineResponse20063 attribute_group_list(opts)



Get attribute group list

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

api_instance = SwaggerClient::AttributeApi.new

opts = { 
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  lang_id: 'lang_id_example', # String | Language id
  params: 'id,name', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  attribute_set_id: 'attribute_set_id_example' # String | Attribute set id
}

begin
  result = api_instance.attribute_group_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_group_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **lang_id** | **String**| Language id | [optional] 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,name]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **attribute_set_id** | **String**| Attribute set id | [optional] 

### Return type

[**InlineResponse20063**](InlineResponse20063.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **attribute_info**
> InlineResponse20058 attribute_info(id, opts)



Get attribute info

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

api_instance = SwaggerClient::AttributeApi.new

id = 'id_example' # String | Entity id

opts = { 
  store_id: 'store_id_example', # String | Store Id
  lang_id: 'lang_id_example', # String | Language id
  params: 'force_all', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.attribute_info(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Entity id | 
 **store_id** | **String**| Store Id | [optional] 
 **lang_id** | **String**| Language id | [optional] 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to force_all]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**InlineResponse20058**](InlineResponse20058.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **attribute_list**
> InlineResponse20057 attribute_list(opts)



Get attributes list

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

api_instance = SwaggerClient::AttributeApi.new

opts = { 
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  type: 'type_example', # String | Defines attribute's type
  attribute_ids: 'attribute_ids_example', # String | Filter attributes by ids
  store_id: 'store_id_example', # String | Store Id
  lang_id: 'lang_id_example', # String | Retrieves attributes on specified language id
  params: 'id,name,code,type', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  visible: true, # BOOLEAN | Filter items by visibility status
  required: true, # BOOLEAN | Defines if the option is required
  system: true # BOOLEAN | True if attribute is system
}

begin
  result = api_instance.attribute_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **type** | **String**| Defines attribute&#39;s type | [optional] 
 **attribute_ids** | **String**| Filter attributes by ids | [optional] 
 **store_id** | **String**| Store Id | [optional] 
 **lang_id** | **String**| Retrieves attributes on specified language id | [optional] 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,name,code,type]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **visible** | **BOOLEAN**| Filter items by visibility status | [optional] 
 **required** | **BOOLEAN**| Defines if the option is required | [optional] 
 **system** | **BOOLEAN**| True if attribute is system | [optional] 

### Return type

[**InlineResponse20057**](InlineResponse20057.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **attribute_type_list**
> InlineResponse20060 attribute_type_list



Get list of supported attributes types

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

api_instance = SwaggerClient::AttributeApi.new

begin
  result = api_instance.attribute_type_list
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_type_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20060**](InlineResponse20060.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **attribute_unassign_group**
> InlineResponse20062 attribute_unassign_group(id, group_id)



Unassign attribute from group

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

api_instance = SwaggerClient::AttributeApi.new

id = 'id_example' # String | Entity id

group_id = 'group_id_example' # String | Customer group_id


begin
  result = api_instance.attribute_unassign_group(id, group_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_unassign_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Entity id | 
 **group_id** | **String**| Customer group_id | 

### Return type

[**InlineResponse20062**](InlineResponse20062.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **attribute_unassign_set**
> InlineResponse20062 attribute_unassign_set(id, attribute_set_id)



Unassign attribute from attribute set

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

api_instance = SwaggerClient::AttributeApi.new

id = 'id_example' # String | Entity id

attribute_set_id = 'attribute_set_id_example' # String | Attribute set id


begin
  result = api_instance.attribute_unassign_set(id, attribute_set_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AttributeApi->attribute_unassign_set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Entity id | 
 **attribute_set_id** | **String**| Attribute set id | 

### Return type

[**InlineResponse20062**](InlineResponse20062.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



