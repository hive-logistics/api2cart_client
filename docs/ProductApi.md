# SwaggerClient::ProductApi

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**product_add**](ProductApi.md#product_add) | **POST** /product.add.json | 
[**product_attribute_list**](ProductApi.md#product_attribute_list) | **GET** /product.attribute.list.json | 
[**product_attribute_value_set**](ProductApi.md#product_attribute_value_set) | **POST** /product.attribute.value.set.json | 
[**product_attribute_value_unset**](ProductApi.md#product_attribute_value_unset) | **POST** /product.attribute.value.unset.json | 
[**product_brand_list**](ProductApi.md#product_brand_list) | **GET** /product.brand.list.json | 
[**product_child_item_find**](ProductApi.md#product_child_item_find) | **GET** /product.child_item.find.json | 
[**product_child_item_info**](ProductApi.md#product_child_item_info) | **GET** /product.child_item.info.json | 
[**product_child_item_list**](ProductApi.md#product_child_item_list) | **GET** /product.child_item.list.json | 
[**product_count**](ProductApi.md#product_count) | **GET** /product.count.json | 
[**product_currency_add**](ProductApi.md#product_currency_add) | **POST** /product.currency.add.json | 
[**product_currency_list**](ProductApi.md#product_currency_list) | **GET** /product.currency.list.json | 
[**product_delete**](ProductApi.md#product_delete) | **DELETE** /product.delete.json | 
[**product_fields**](ProductApi.md#product_fields) | **GET** /product.fields.json | 
[**product_find**](ProductApi.md#product_find) | **GET** /product.find.json | 
[**product_image_add**](ProductApi.md#product_image_add) | **POST** /product.image.add.json | 
[**product_image_delete**](ProductApi.md#product_image_delete) | **DELETE** /product.image.delete.json | 
[**product_image_update**](ProductApi.md#product_image_update) | **PUT** /product.image.update.json | 
[**product_info**](ProductApi.md#product_info) | **GET** /product.info.json | 
[**product_list**](ProductApi.md#product_list) | **GET** /product.list.json | 
[**product_manufacturer_add**](ProductApi.md#product_manufacturer_add) | **POST** /product.manufacturer.add.json | 
[**product_option_add**](ProductApi.md#product_option_add) | **POST** /product.option.add.json | 
[**product_option_assign**](ProductApi.md#product_option_assign) | **POST** /product.option.assign.json | 
[**product_option_list**](ProductApi.md#product_option_list) | **GET** /product.option.list.json | 
[**product_option_value_add**](ProductApi.md#product_option_value_add) | **POST** /product.option.value.add.json | 
[**product_option_value_assign**](ProductApi.md#product_option_value_assign) | **POST** /product.option.value.assign.json | 
[**product_option_value_update**](ProductApi.md#product_option_value_update) | **PUT** /product.option.value.update.json | 
[**product_price_add**](ProductApi.md#product_price_add) | **POST** /product.price.add.json | 
[**product_price_delete**](ProductApi.md#product_price_delete) | **DELETE** /product.price.delete.json | 
[**product_price_update**](ProductApi.md#product_price_update) | **PUT** /product.price.update.json | 
[**product_review_list**](ProductApi.md#product_review_list) | **GET** /product.review.list.json | 
[**product_store_assign**](ProductApi.md#product_store_assign) | **POST** /product.store.assign.json | 
[**product_tax_add**](ProductApi.md#product_tax_add) | **POST** /product.tax.add.json | 
[**product_update**](ProductApi.md#product_update) | **PUT** /product.update.json | 
[**product_variant_add**](ProductApi.md#product_variant_add) | **POST** /product.variant.add.json | 
[**product_variant_count**](ProductApi.md#product_variant_count) | **GET** /product.variant.count.json | 
[**product_variant_delete**](ProductApi.md#product_variant_delete) | **DELETE** /product.variant.delete.json | 
[**product_variant_info**](ProductApi.md#product_variant_info) | **GET** /product.variant.info.json | 
[**product_variant_list**](ProductApi.md#product_variant_list) | **GET** /product.variant.list.json | 
[**product_variant_price_add**](ProductApi.md#product_variant_price_add) | **POST** /product.variant.price.add.json | 
[**product_variant_price_delete**](ProductApi.md#product_variant_price_delete) | **DELETE** /product.variant.price.delete.json | 
[**product_variant_price_update**](ProductApi.md#product_variant_price_update) | **PUT** /product.variant.price.update.json | 
[**product_variant_update**](ProductApi.md#product_variant_update) | **PUT** /product.variant.update.json | 


# **product_add**
> InlineResponse20034 product_add(body)



Add new product to store.

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

api_instance = SwaggerClient::ProductApi.new

body = SwaggerClient::ProductAdd.new # ProductAdd | 


begin
  result = api_instance.product_add(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProductAdd**](ProductAdd.md)|  | 

### Return type

[**InlineResponse20034**](InlineResponse20034.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **product_attribute_list**
> ModelResponseProductAttributeList product_attribute_list(product_id, opts)



Get list of attributes and values.

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Retrieves attributes specified by product id

opts = { 
  page_cursor: 'page_cursor_example', # String | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  variant_id: 'variant_id_example', # String | Defines product's variants specified by variant id
  attribute_id: 'attribute_id_example', # String | Retrieves info for specified attribute_id
  attribute_group_id: 'attribute_group_id_example', # String | Filter by attribute_group_id
  set_name: 'set_name_example', # String | Retrieves attributes specified by set_name in Magento
  lang_id: 'lang_id_example', # String | Retrieves attributes specified by language id
  store_id: 'store_id_example', # String | Retrieves attributes specified by store id
  sort_by: 'attribute_id', # String | Set field to sort by
  sort_direction: 'asc', # String | Set sorting direction
  params: 'attribute_id,name', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.product_attribute_list(product_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_attribute_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Retrieves attributes specified by product id | 
 **page_cursor** | **String**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **variant_id** | **String**| Defines product&#39;s variants specified by variant id | [optional] 
 **attribute_id** | **String**| Retrieves info for specified attribute_id | [optional] 
 **attribute_group_id** | **String**| Filter by attribute_group_id | [optional] 
 **set_name** | **String**| Retrieves attributes specified by set_name in Magento | [optional] 
 **lang_id** | **String**| Retrieves attributes specified by language id | [optional] 
 **store_id** | **String**| Retrieves attributes specified by store id | [optional] 
 **sort_by** | **String**| Set field to sort by | [optional] [default to attribute_id]
 **sort_direction** | **String**| Set sorting direction | [optional] [default to asc]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to attribute_id,name]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseProductAttributeList**](ModelResponseProductAttributeList.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_attribute_value_set**
> InlineResponse20064 product_attribute_value_set(product_id, opts)



Set attribute value to product.

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Defines product id where the attribute should be added

opts = { 
  attribute_id: 'attribute_id_example', # String | Filter by attribute_id
  attribute_group_id: 'attribute_group_id_example', # String | Filter by attribute_group_id
  attribute_name: 'attribute_name_example', # String | Define attribute name
  value: 'value_example', # String | Define attribute value
  value_id: 56, # Integer | Define attribute value id
  lang_id: 'lang_id_example', # String | Language id
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.product_attribute_value_set(product_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_attribute_value_set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Defines product id where the attribute should be added | 
 **attribute_id** | **String**| Filter by attribute_id | [optional] 
 **attribute_group_id** | **String**| Filter by attribute_group_id | [optional] 
 **attribute_name** | **String**| Define attribute name | [optional] 
 **value** | **String**| Define attribute value | [optional] 
 **value_id** | **Integer**| Define attribute value id | [optional] 
 **lang_id** | **String**| Language id | [optional] 
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20064**](InlineResponse20064.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_attribute_value_unset**
> InlineResponse20065 product_attribute_value_unset(product_id, attribute_id, opts)



Removes attribute value for a product.

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Product id

attribute_id = 'attribute_id_example' # String | Attribute Id

opts = { 
  store_id: 'store_id_example', # String | Store Id
  include_default: false, # BOOLEAN | Boolean, whether or not to unset default value of the attribute, if applicable
  reindex: true, # BOOLEAN | Is reindex required
  clear_cache: true # BOOLEAN | Is cache clear required
}

begin
  result = api_instance.product_attribute_value_unset(product_id, attribute_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_attribute_value_unset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Product id | 
 **attribute_id** | **String**| Attribute Id | 
 **store_id** | **String**| Store Id | [optional] 
 **include_default** | **BOOLEAN**| Boolean, whether or not to unset default value of the attribute, if applicable | [optional] [default to false]
 **reindex** | **BOOLEAN**| Is reindex required | [optional] [default to true]
 **clear_cache** | **BOOLEAN**| Is cache clear required | [optional] [default to true]

### Return type

[**InlineResponse20065**](InlineResponse20065.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_brand_list**
> InlineResponse20079 product_brand_list(opts)



Get list of brands from your store.

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

api_instance = SwaggerClient::ProductApi.new

opts = { 
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  params: 'id,name,short_description,active,url', # String | Set this parameter in order to choose which entity fields you want to retrieve
  brand_ids: 'brand_ids_example', # String | Retrieves brands specified by brand ids
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  store_id: 'store_id_example', # String | Store Id
  lang_id: 'lang_id_example', # String | Language id
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  modified_from: 'modified_from_example', # String | Retrieve entities from their modification date
  modified_to: 'modified_to_example' # String | Retrieve entities to their modification date
}

begin
  result = api_instance.product_brand_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_brand_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,name,short_description,active,url]
 **brand_ids** | **String**| Retrieves brands specified by brand ids | [optional] 
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **store_id** | **String**| Store Id | [optional] 
 **lang_id** | **String**| Language id | [optional] 
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **String**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **String**| Retrieve entities to their modification date | [optional] 

### Return type

[**InlineResponse20079**](InlineResponse20079.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_child_item_find**
> InlineResponse20074 product_child_item_find(find_value, opts)



Search product child item (bundled item or configurable product variant) in store catalog.

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

api_instance = SwaggerClient::ProductApi.new

find_value = 'find_value_example' # String | Entity search that is specified by some value

opts = { 
  find_where: 'name', # String | Entity search that is specified by the comma-separated unique fields
  find_params: 'whole_words', # String | Entity search that is specified by comma-separated parameters
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.product_child_item_find(find_value, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_child_item_find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **find_value** | **String**| Entity search that is specified by some value | 
 **find_where** | **String**| Entity search that is specified by the comma-separated unique fields | [optional] [default to name]
 **find_params** | **String**| Entity search that is specified by comma-separated parameters | [optional] [default to whole_words]
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20074**](InlineResponse20074.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_child_item_info**
> InlineResponse20073 product_child_item_info(product_id, id, opts)



Get child for specific product.

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Filter by parent product id

id = 'id_example' # String | Entity id

opts = { 
  params: 'force_all', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  store_id: 'store_id_example', # String | Store Id
  lang_id: 'lang_id_example' # String | Language id
}

begin
  result = api_instance.product_child_item_info(product_id, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_child_item_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Filter by parent product id | 
 **id** | **String**| Entity id | 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to force_all]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **store_id** | **String**| Store Id | [optional] 
 **lang_id** | **String**| Language id | [optional] 

### Return type

[**InlineResponse20073**](InlineResponse20073.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_child_item_list**
> ModelResponseProductChildItemList product_child_item_list(opts)



Get child items list of specific product(s).

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

api_instance = SwaggerClient::ProductApi.new

opts = { 
  page_cursor: 'page_cursor_example', # String | Used to retrieve products child items via cursor-based pagination (it can't be used with any other filtering parameter)
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  params: 'force_all', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  modified_from: 'modified_from_example', # String | Retrieve entities from their modification date
  modified_to: 'modified_to_example', # String | Retrieve entities to their modification date
  product_id: 'product_id_example', # String | Filter by parent product id
  product_ids: 'product_ids_example', # String | Filter by parent product ids
  store_id: 'store_id_example', # String | Store Id
  lang_id: 'lang_id_example', # String | Language id
  currency_id: 'currency_id_example', # String | Currency Id
  avail_sale: true, # BOOLEAN | Specifies the set of available/not available products for sale
  report_request_id: 'report_request_id_example', # String | Report request id
  disable_report_cache: false # BOOLEAN | Disable report cache for current request
}

begin
  result = api_instance.product_child_item_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_child_item_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **String**| Used to retrieve products child items via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to force_all]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **String**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **String**| Retrieve entities to their modification date | [optional] 
 **product_id** | **String**| Filter by parent product id | [optional] 
 **product_ids** | **String**| Filter by parent product ids | [optional] 
 **store_id** | **String**| Store Id | [optional] 
 **lang_id** | **String**| Language id | [optional] 
 **currency_id** | **String**| Currency Id | [optional] 
 **avail_sale** | **BOOLEAN**| Specifies the set of available/not available products for sale | [optional] 
 **report_request_id** | **String**| Report request id | [optional] 
 **disable_report_cache** | **BOOLEAN**| Disable report cache for current request | [optional] [default to false]

### Return type

[**ModelResponseProductChildItemList**](ModelResponseProductChildItemList.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_count**
> InlineResponse20031 product_count(opts)



Count products in store.

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

api_instance = SwaggerClient::ProductApi.new

opts = { 
  category_id: 'category_id_example', # String | Counts products specified by category id
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  modified_from: 'modified_from_example', # String | Retrieve entities from their modification date
  modified_to: 'modified_to_example', # String | Retrieve entities to their modification date
  avail_view: true, # BOOLEAN | Specifies the set of visible/invisible products
  avail_sale: true, # BOOLEAN | Specifies the set of available/not available products for sale
  store_id: 'store_id_example', # String | Counts products specified by store id
  lang_id: 'lang_id_example', # String | Counts products specified by language id
  product_ids: 'product_ids_example', # String | Counts products specified by product ids
  report_request_id: 'report_request_id_example', # String | Report request id
  disable_report_cache: false, # BOOLEAN | Disable report cache for current request
  brand_name: 'brand_name_example', # String | Retrieves brands specified by brand name
  product_attributes: ['product_attributes_example'] # Array<String> | Defines product attributes
}

begin
  result = api_instance.product_count(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **String**| Counts products specified by category id | [optional] 
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **String**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **String**| Retrieve entities to their modification date | [optional] 
 **avail_view** | **BOOLEAN**| Specifies the set of visible/invisible products | [optional] 
 **avail_sale** | **BOOLEAN**| Specifies the set of available/not available products for sale | [optional] 
 **store_id** | **String**| Counts products specified by store id | [optional] 
 **lang_id** | **String**| Counts products specified by language id | [optional] 
 **product_ids** | **String**| Counts products specified by product ids | [optional] 
 **report_request_id** | **String**| Report request id | [optional] 
 **disable_report_cache** | **BOOLEAN**| Disable report cache for current request | [optional] [default to false]
 **brand_name** | **String**| Retrieves brands specified by brand name | [optional] 
 **product_attributes** | [**Array&lt;String&gt;**](String.md)| Defines product attributes | [optional] 

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_currency_add**
> InlineResponse20080 product_currency_add(iso3, rate, opts)



Add currency and/or set default in store

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

api_instance = SwaggerClient::ProductApi.new

iso3 = 'iso3_example' # String | Specifies standardized currency code

rate = 8.14 # Float | Defines the numerical identifier against to the major currency

opts = { 
  name: 'name_example', # String | Defines currency's name
  avail: true, # BOOLEAN | Specifies whether the currency is available
  symbol_left: 'symbol_left_example', # String | Defines the symbol that is located before the currency
  symbol_right: 'symbol_right_example', # String | Defines the symbol that is located after the currency
  default: false # BOOLEAN | Specifies currency's default meaning
}

begin
  result = api_instance.product_currency_add(iso3, rate, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_currency_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **iso3** | **String**| Specifies standardized currency code | 
 **rate** | **Float**| Defines the numerical identifier against to the major currency | 
 **name** | **String**| Defines currency&#39;s name | [optional] 
 **avail** | **BOOLEAN**| Specifies whether the currency is available | [optional] [default to true]
 **symbol_left** | **String**| Defines the symbol that is located before the currency | [optional] 
 **symbol_right** | **String**| Defines the symbol that is located after the currency | [optional] 
 **default** | **BOOLEAN**| Specifies currency&#39;s default meaning | [optional] [default to false]

### Return type

[**InlineResponse20080**](InlineResponse20080.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_currency_list**
> InlineResponse20081 product_currency_list(opts)



Get list of currencies

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

api_instance = SwaggerClient::ProductApi.new

opts = { 
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  params: 'name,iso3,default,avail', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  default: true, # BOOLEAN | Specifies the set of default/not default currencies
  avail: true # BOOLEAN | Specifies the set of available/not available currencies
}

begin
  result = api_instance.product_currency_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_currency_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to name,iso3,default,avail]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **default** | **BOOLEAN**| Specifies the set of default/not default currencies | [optional] 
 **avail** | **BOOLEAN**| Specifies the set of available/not available currencies | [optional] 

### Return type

[**InlineResponse20081**](InlineResponse20081.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_delete**
> InlineResponse20035 product_delete(id)



Product delete

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

api_instance = SwaggerClient::ProductApi.new

id = 'id_example' # String | Product id that will be removed


begin
  result = api_instance.product_delete(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Product id that will be removed | 

### Return type

[**InlineResponse20035**](InlineResponse20035.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_fields**
> InlineResponse20014 product_fields



Retrieve all available fields for product item in store.

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

api_instance = SwaggerClient::ProductApi.new

begin
  result = api_instance.product_fields
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_fields: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_find**
> InlineResponse20033 product_find(find_value, opts)



Search product in store catalog. \"Apple\" is specified here by default.

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

api_instance = SwaggerClient::ProductApi.new

find_value = 'find_value_example' # String | Entity search that is specified by some value

opts = { 
  find_where: 'name', # String | Entity search that is specified by the comma-separated unique fields
  find_params: 'whole_words', # String | Entity search that is specified by comma-separated parameters
  find_what: 'product', # String | Parameter's value specifies the entity that has to be found
  lang_id: 'lang_id_example' # String | Search products specified by language id
}

begin
  result = api_instance.product_find(find_value, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **find_value** | **String**| Entity search that is specified by some value | 
 **find_where** | **String**| Entity search that is specified by the comma-separated unique fields | [optional] [default to name]
 **find_params** | **String**| Entity search that is specified by comma-separated parameters | [optional] [default to whole_words]
 **find_what** | **String**| Parameter&#39;s value specifies the entity that has to be found | [optional] [default to product]
 **lang_id** | **String**| Search products specified by language id | [optional] 

### Return type

[**InlineResponse20033**](InlineResponse20033.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_image_add**
> InlineResponse20036 product_image_add(product_id, image_name, type, opts)



Add image to product

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Defines product id where the image should be added

image_name = 'image_name_example' # String | Defines image's name

type = 'type_example' # String | Defines image's types that are specified by comma-separated list

opts = { 
  url: 'url_example', # String | Defines URL of the image that has to be added
  label: 'label_example', # String | Defines alternative text that has to be attached to the picture
  mime: 'mime_example', # String | Mime type of image http://en.wikipedia.org/wiki/Internet_media_type.
  position: 0, # Integer | Defines image’s position in the list
  content: 'content_example', # String | Content(body) encoded in base64 of image file
  product_variant_id: 56, # Integer | Defines product's variants specified by variant id
  variant_ids: 'variant_ids_example', # String | Defines product's variants ids
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.product_image_add(product_id, image_name, type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_image_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Defines product id where the image should be added | 
 **image_name** | **String**| Defines image&#39;s name | 
 **type** | **String**| Defines image&#39;s types that are specified by comma-separated list | 
 **url** | **String**| Defines URL of the image that has to be added | [optional] 
 **label** | **String**| Defines alternative text that has to be attached to the picture | [optional] 
 **mime** | **String**| Mime type of image http://en.wikipedia.org/wiki/Internet_media_type. | [optional] 
 **position** | **Integer**| Defines image’s position in the list | [optional] [default to 0]
 **content** | **String**| Content(body) encoded in base64 of image file | [optional] 
 **product_variant_id** | **Integer**| Defines product&#39;s variants specified by variant id | [optional] 
 **variant_ids** | **String**| Defines product&#39;s variants ids | [optional] 
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20036**](InlineResponse20036.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_image_delete**
> InlineResponse2004 product_image_delete(product_id, id, opts)



Delete image

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Defines product id where the image should be deleted

id = 'id_example' # String | Entity id

opts = { 
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.product_image_delete(product_id, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_image_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Defines product id where the image should be deleted | 
 **id** | **String**| Entity id | 
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_image_update**
> InlineResponse2005 product_image_update(product_id, id, opts)



Update details of image

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Defines product id where the image should be updated

id = 'id_example' # String | Defines image update specified by image id

opts = { 
  image_name: 'image_name_example', # String | Defines image's name
  type: 'additional', # String | Defines image's types that are specified by comma-separated list
  label: 'label_example', # String | Defines alternative text that has to be attached to the picture
  position: 56, # Integer | Defines image’s position in the list
  store_id: 'store_id_example', # String | Store Id
  hidden: true # BOOLEAN | Define is hide image
}

begin
  result = api_instance.product_image_update(product_id, id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_image_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Defines product id where the image should be updated | 
 **id** | **String**| Defines image update specified by image id | 
 **image_name** | **String**| Defines image&#39;s name | [optional] 
 **type** | **String**| Defines image&#39;s types that are specified by comma-separated list | [optional] [default to additional]
 **label** | **String**| Defines alternative text that has to be attached to the picture | [optional] 
 **position** | **Integer**| Defines image’s position in the list | [optional] 
 **store_id** | **String**| Store Id | [optional] 
 **hidden** | **BOOLEAN**| Define is hide image | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_info**
> InlineResponse20032 product_info(id, opts)



Get product info about product ID *** or specify other product ID.

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

api_instance = SwaggerClient::ProductApi.new

id = 'id_example' # String | Retrieves product's info specified by product id

opts = { 
  params: 'id,name,description,price,categories_ids', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  store_id: 'store_id_example', # String | Retrieves product info specified by store id
  lang_id: 'lang_id_example', # String | Retrieves product info specified by language id
  currency_id: 'currency_id_example', # String | Currency Id
  product_variant_params: 'force_all', # String | Set this parameter in order to choose which product variants fields you want to retrieve
  report_request_id: 'report_request_id_example', # String | Report request id
  disable_report_cache: false # BOOLEAN | Disable report cache for current request
}

begin
  result = api_instance.product_info(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Retrieves product&#39;s info specified by product id | 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,name,description,price,categories_ids]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **store_id** | **String**| Retrieves product info specified by store id | [optional] 
 **lang_id** | **String**| Retrieves product info specified by language id | [optional] 
 **currency_id** | **String**| Currency Id | [optional] 
 **product_variant_params** | **String**| Set this parameter in order to choose which product variants fields you want to retrieve | [optional] [default to force_all]
 **report_request_id** | **String**| Report request id | [optional] 
 **disable_report_cache** | **BOOLEAN**| Disable report cache for current request | [optional] [default to false]

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_list**
> ModelResponseProductList product_list(opts)



Get list of products from your store. Returns 10 products by default.

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

api_instance = SwaggerClient::ProductApi.new

opts = { 
  page_cursor: 'page_cursor_example', # String | Used to retrieve products via cursor-based pagination (it can't be used with any other filtering parameter)
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  params: 'id,name,description,price,categories_ids', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  category_id: 'category_id_example', # String | Retrieves products specified by category id
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  modified_from: 'modified_from_example', # String | Retrieve entities from their modification date
  modified_to: 'modified_to_example', # String | Retrieve entities to their modification date
  avail_view: true, # BOOLEAN | Specifies the set of visible/invisible products
  avail_sale: true, # BOOLEAN | Specifies the set of available/not available products for sale
  store_id: 'store_id_example', # String | Retrieves products specified by store id
  lang_id: 'lang_id_example', # String | Retrieves products specified by language id
  currency_id: 'currency_id_example', # String | Currency Id
  product_ids: 'product_ids_example', # String | Retrieves products specified by product ids
  product_variant_params: 'force_all', # String | Set this parameter in order to choose which product variants fields you want to retrieve
  since_id: 56, # Integer | Retrieve entities starting from the specified id.
  report_request_id: 'report_request_id_example', # String | Report request id
  disable_report_cache: false, # BOOLEAN | Disable report cache for current request
  sort_by: 'id', # String | Set field to sort by
  sort_direction: 'asc', # String | Set sorting direction
  sku: 'sku_example', # String | Filter by product's sku
  disable_cache: false, # BOOLEAN | Disable cache for current request
  brand_name: 'brand_name_example', # String | Retrieves brands specified by brand name
  product_attributes: ['product_attributes_example'] # Array<String> | Defines product attributes
}

begin
  result = api_instance.product_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **String**| Used to retrieve products via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,name,description,price,categories_ids]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **category_id** | **String**| Retrieves products specified by category id | [optional] 
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **String**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **String**| Retrieve entities to their modification date | [optional] 
 **avail_view** | **BOOLEAN**| Specifies the set of visible/invisible products | [optional] 
 **avail_sale** | **BOOLEAN**| Specifies the set of available/not available products for sale | [optional] 
 **store_id** | **String**| Retrieves products specified by store id | [optional] 
 **lang_id** | **String**| Retrieves products specified by language id | [optional] 
 **currency_id** | **String**| Currency Id | [optional] 
 **product_ids** | **String**| Retrieves products specified by product ids | [optional] 
 **product_variant_params** | **String**| Set this parameter in order to choose which product variants fields you want to retrieve | [optional] [default to force_all]
 **since_id** | **Integer**| Retrieve entities starting from the specified id. | [optional] 
 **report_request_id** | **String**| Report request id | [optional] 
 **disable_report_cache** | **BOOLEAN**| Disable report cache for current request | [optional] [default to false]
 **sort_by** | **String**| Set field to sort by | [optional] [default to id]
 **sort_direction** | **String**| Set sorting direction | [optional] [default to asc]
 **sku** | **String**| Filter by product&#39;s sku | [optional] 
 **disable_cache** | **BOOLEAN**| Disable cache for current request | [optional] [default to false]
 **brand_name** | **String**| Retrieves brands specified by brand name | [optional] 
 **product_attributes** | [**Array&lt;String&gt;**](String.md)| Defines product attributes | [optional] 

### Return type

[**ModelResponseProductList**](ModelResponseProductList.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_manufacturer_add**
> InlineResponse20078 product_manufacturer_add(product_id, manufacturer)



Add manufacturer to store and assign to product

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Defines products specified by product id

manufacturer = 'manufacturer_example' # String | Defines product’s manufacturer's name


begin
  result = api_instance.product_manufacturer_add(product_id, manufacturer)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_manufacturer_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Defines products specified by product id | 
 **manufacturer** | **String**| Defines product’s manufacturer&#39;s name | 

### Return type

[**InlineResponse20078**](InlineResponse20078.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_option_add**
> InlineResponse20066 product_option_add(name, type, opts)



Add product option from store.

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

api_instance = SwaggerClient::ProductApi.new

name = 'name_example' # String | Defines option's name

type = 'type_example' # String | Defines option's type that has to be added

opts = { 
  product_id: 'product_id_example', # String | Defines product id where the option should be added
  option_values: 'option_values_example', # String | Defines option values that has to be added in Magento
  description: 'description_example', # String | Defines option's description
  avail: true, # BOOLEAN | Defines whether the option is available
  sort_order: 0, # Integer | Sort number in the list
  required: false # BOOLEAN | Defines if the option is required
}

begin
  result = api_instance.product_option_add(name, type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_option_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Defines option&#39;s name | 
 **type** | **String**| Defines option&#39;s type that has to be added | 
 **product_id** | **String**| Defines product id where the option should be added | [optional] 
 **option_values** | **String**| Defines option values that has to be added in Magento | [optional] 
 **description** | **String**| Defines option&#39;s description | [optional] 
 **avail** | **BOOLEAN**| Defines whether the option is available | [optional] [default to true]
 **sort_order** | **Integer**| Sort number in the list | [optional] [default to 0]
 **required** | **BOOLEAN**| Defines if the option is required | [optional] [default to false]

### Return type

[**InlineResponse20066**](InlineResponse20066.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_option_assign**
> InlineResponse20068 product_option_assign(product_id, option_id)



Assign option from product.

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Defines product id where the option should be assigned

option_id = 56 # Integer | Defines option id which has to be assigned


begin
  result = api_instance.product_option_assign(product_id, option_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_option_assign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Defines product id where the option should be assigned | 
 **option_id** | **Integer**| Defines option id which has to be assigned | 

### Return type

[**InlineResponse20068**](InlineResponse20068.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_option_list**
> InlineResponse20067 product_option_list(opts)



Get list of options.

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

api_instance = SwaggerClient::ProductApi.new

opts = { 
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  params: 'id,name,description', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  product_id: 'product_id_example', # String | Retrieves products' options specified by product id
  lang_id: 'lang_id_example', # String | Language id
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.product_option_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_option_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,name,description]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **product_id** | **String**| Retrieves products&#39; options specified by product id | [optional] 
 **lang_id** | **String**| Language id | [optional] 
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20067**](InlineResponse20067.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_option_value_add**
> InlineResponse20069 product_option_value_add(option_id, option_value, opts)



Add product option item from option.

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

api_instance = SwaggerClient::ProductApi.new

option_id = 56 # Integer | Defines option id where the value has to be added

option_value = 'option_value_example' # String | Defines option value that has to be added

opts = { 
  sort_order: 0 # Integer | Sort number in the list
}

begin
  result = api_instance.product_option_value_add(option_id, option_value, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_option_value_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **option_id** | **Integer**| Defines option id where the value has to be added | 
 **option_value** | **String**| Defines option value that has to be added | 
 **sort_order** | **Integer**| Sort number in the list | [optional] [default to 0]

### Return type

[**InlineResponse20069**](InlineResponse20069.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_option_value_assign**
> InlineResponse20070 product_option_value_assign(product_option_id, option_value_id)



Assign product option item from product.

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

api_instance = SwaggerClient::ProductApi.new

product_option_id = 56 # Integer | Defines product's option id where the value has to be assigned

option_value_id = 56 # Integer | Defines value id that has to be assigned


begin
  result = api_instance.product_option_value_assign(product_option_id, option_value_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_option_value_assign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_option_id** | **Integer**| Defines product&#39;s option id where the value has to be assigned | 
 **option_value_id** | **Integer**| Defines value id that has to be assigned | 

### Return type

[**InlineResponse20070**](InlineResponse20070.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_option_value_update**
> InlineResponse20027 product_option_value_update(option_value_id, opts)



Update product option item from option.

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

api_instance = SwaggerClient::ProductApi.new

option_value_id = 56 # Integer | Defines value id that has to be assigned

opts = { 
  price: 8.14, # Float | Defines new product option price
  quantity: 8.14 # Float | Defines new products' options quantity
}

begin
  result = api_instance.product_option_value_update(option_value_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_option_value_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **option_value_id** | **Integer**| Defines value id that has to be assigned | 
 **price** | **Float**| Defines new product option price | [optional] 
 **quantity** | **Float**| Defines new products&#39; options quantity | [optional] 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_price_add**
> InlineResponse2007 product_price_add(body)



Add some prices to the product.

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

api_instance = SwaggerClient::ProductApi.new

body = SwaggerClient::ProductPriceAdd.new # ProductPriceAdd | 


begin
  result = api_instance.product_price_add(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_price_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProductPriceAdd**](ProductPriceAdd.md)|  | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **product_price_delete**
> InlineResponse2004 product_price_delete(product_id, opts)



Delete some prices of the product

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Defines the product where the price has to be deleted

opts = { 
  group_prices: 'group_prices_example' # String | Defines product's group prices
}

begin
  result = api_instance.product_price_delete(product_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_price_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Defines the product where the price has to be deleted | 
 **group_prices** | **String**| Defines product&#39;s group prices | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_price_update**
> InlineResponse20027 product_price_update(body)



Update some prices of the product.

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

api_instance = SwaggerClient::ProductApi.new

body = SwaggerClient::ProductPriceUpdate.new # ProductPriceUpdate | 


begin
  result = api_instance.product_price_update(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_price_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProductPriceUpdate**](ProductPriceUpdate.md)|  | 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **product_review_list**
> InlineResponse20071 product_review_list(product_id, opts)



Get reviews of a specific product.

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Product id

opts = { 
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  ids: 'ids_example', # String | Retrieves reviews specified by ids
  store_id: 'store_id_example', # String | Store Id
  status: 'status_example', # String | Defines status
  params: 'id,customer_id,email,message,status', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.product_review_list(product_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_review_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Product id | 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **ids** | **String**| Retrieves reviews specified by ids | [optional] 
 **store_id** | **String**| Store Id | [optional] 
 **status** | **String**| Defines status | [optional] 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,customer_id,email,message,status]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**InlineResponse20071**](InlineResponse20071.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_store_assign**
> InlineResponse20027 product_store_assign(product_id, store_id)



Assign product to store

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

api_instance = SwaggerClient::ProductApi.new

product_id = 'product_id_example' # String | Defines id of the product which should be assigned to a store

store_id = 'store_id_example' # String | Defines id of the store product should be assigned to


begin
  result = api_instance.product_store_assign(product_id, store_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_store_assign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Defines id of the product which should be assigned to a store | 
 **store_id** | **String**| Defines id of the store product should be assigned to | 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_tax_add**
> InlineResponse20077 product_tax_add(body)



Add tax class and tax rate to store and assign to product.

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

api_instance = SwaggerClient::ProductApi.new

body = SwaggerClient::ProductTaxAdd.new # ProductTaxAdd | 


begin
  result = api_instance.product_tax_add(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_tax_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProductTaxAdd**](ProductTaxAdd.md)|  | 

### Return type

[**InlineResponse20077**](InlineResponse20077.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **product_update**
> InlineResponse20027 product_update(id, opts)



Update price and quantity for a specific product

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

api_instance = SwaggerClient::ProductApi.new

id = 'id_example' # String | Defines product id that has to be updated

opts = { 
  model: 'model_example', # String | Defines product model that has to be updated
  old_price: 8.14, # Float | Defines product's old price
  price: 8.14, # Float | Defines new product's price
  special_price: 8.14, # Float | Defines new product's special price
  sprice_create: 'sprice_create_example', # String | Defines the date of special price creation
  sprice_expire: 'sprice_expire_example', # String | Defines the term of special price offer duration
  cost_price: 8.14, # Float | Defines new product's cost price
  retail_price: 8.14, # Float | Defines new product's retail price
  quantity: 8.14, # Float | Defines new product's quantity
  weight: 8.14, # Float | Weight
  increase_quantity: 8.14, # Float | Defines the incremental changes in product quantity
  reduce_quantity: 8.14, # Float | Defines the decrement changes in product quantity
  warehouse_id: 'warehouse_id_example', # String | This parameter is used for selecting a warehouse where you need to set/modify a product quantity.
  reserve_quantity: 8.14, # Float | This parameter allows to reserve/unreserve product quantity.
  manage_stock: true, # BOOLEAN | Defines inventory tracking for product
  backorder_status: 'backorder_status_example', # String | Set backorder status
  name: 'name_example', # String | Defines product's name that has to be updated
  sku: 'sku_example', # String | Defines new product's sku
  visible: 'visible_example', # String | Set visibility status
  manufacturer: 'manufacturer_example', # String | Defines product's manufacturer
  manufacturer_id: 'manufacturer_id_example', # String | Defines product's manufacturer by manufacturer_id
  description: 'description_example', # String | Defines new product's description
  short_description: 'short_description_example', # String | Defines short description
  meta_title: 'meta_title_example', # String | Defines unique meta title for each entity
  meta_keywords: 'meta_keywords_example', # String | Defines unique meta keywords for each entity
  meta_description: 'meta_description_example', # String | Defines unique meta description of a entity
  store_id: 'store_id_example', # String | Defines store id where the product should be found
  lang_id: 'lang_id_example', # String | Language id
  in_stock: true, # BOOLEAN | Set stock status
  status: 'status_example', # String | Defines product's status
  seo_url: 'seo_url_example', # String | Defines unique URL for SEO
  report_request_id: 'report_request_id_example', # String | Report request id
  disable_report_cache: false, # BOOLEAN | Disable report cache for current request
  reindex: true, # BOOLEAN | Is reindex required
  tags: 'tags_example', # String | Product tags
  clear_cache: true, # BOOLEAN | Is cache clear required
  gtin: 'gtin_example', # String | Global Trade Item Number. An GTIN is an identifier for trade items.
  taxable: true # BOOLEAN | Specifies whether a tax is charged
}

begin
  result = api_instance.product_update(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Defines product id that has to be updated | 
 **model** | **String**| Defines product model that has to be updated | [optional] 
 **old_price** | **Float**| Defines product&#39;s old price | [optional] 
 **price** | **Float**| Defines new product&#39;s price | [optional] 
 **special_price** | **Float**| Defines new product&#39;s special price | [optional] 
 **sprice_create** | **String**| Defines the date of special price creation | [optional] 
 **sprice_expire** | **String**| Defines the term of special price offer duration | [optional] 
 **cost_price** | **Float**| Defines new product&#39;s cost price | [optional] 
 **retail_price** | **Float**| Defines new product&#39;s retail price | [optional] 
 **quantity** | **Float**| Defines new product&#39;s quantity | [optional] 
 **weight** | **Float**| Weight | [optional] 
 **increase_quantity** | **Float**| Defines the incremental changes in product quantity | [optional] 
 **reduce_quantity** | **Float**| Defines the decrement changes in product quantity | [optional] 
 **warehouse_id** | **String**| This parameter is used for selecting a warehouse where you need to set/modify a product quantity. | [optional] 
 **reserve_quantity** | **Float**| This parameter allows to reserve/unreserve product quantity. | [optional] 
 **manage_stock** | **BOOLEAN**| Defines inventory tracking for product | [optional] 
 **backorder_status** | **String**| Set backorder status | [optional] 
 **name** | **String**| Defines product&#39;s name that has to be updated | [optional] 
 **sku** | **String**| Defines new product&#39;s sku | [optional] 
 **visible** | **String**| Set visibility status | [optional] 
 **manufacturer** | **String**| Defines product&#39;s manufacturer | [optional] 
 **manufacturer_id** | **String**| Defines product&#39;s manufacturer by manufacturer_id | [optional] 
 **description** | **String**| Defines new product&#39;s description | [optional] 
 **short_description** | **String**| Defines short description | [optional] 
 **meta_title** | **String**| Defines unique meta title for each entity | [optional] 
 **meta_keywords** | **String**| Defines unique meta keywords for each entity | [optional] 
 **meta_description** | **String**| Defines unique meta description of a entity | [optional] 
 **store_id** | **String**| Defines store id where the product should be found | [optional] 
 **lang_id** | **String**| Language id | [optional] 
 **in_stock** | **BOOLEAN**| Set stock status | [optional] 
 **status** | **String**| Defines product&#39;s status | [optional] 
 **seo_url** | **String**| Defines unique URL for SEO | [optional] 
 **report_request_id** | **String**| Report request id | [optional] 
 **disable_report_cache** | **BOOLEAN**| Disable report cache for current request | [optional] [default to false]
 **reindex** | **BOOLEAN**| Is reindex required | [optional] [default to true]
 **tags** | **String**| Product tags | [optional] 
 **clear_cache** | **BOOLEAN**| Is cache clear required | [optional] [default to true]
 **gtin** | **String**| Global Trade Item Number. An GTIN is an identifier for trade items. | [optional] 
 **taxable** | **BOOLEAN**| Specifies whether a tax is charged | [optional] [default to true]

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_variant_add**
> InlineResponse20072 product_variant_add(body)



Add variant to product.

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

api_instance = SwaggerClient::ProductApi.new

body = SwaggerClient::ProductVariantAdd.new # ProductVariantAdd | 


begin
  result = api_instance.product_variant_add(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_variant_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProductVariantAdd**](ProductVariantAdd.md)|  | 

### Return type

[**InlineResponse20072**](InlineResponse20072.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **product_variant_count**
> InlineResponse20076 product_variant_count(opts)



Get count variants.

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

api_instance = SwaggerClient::ProductApi.new

opts = { 
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  modified_from: 'modified_from_example', # String | Retrieve entities from their modification date
  modified_to: 'modified_to_example', # String | Retrieve entities to their modification date
  category_id: 'category_id_example', # String | Counts products’ variants specified by category id
  product_id: 'product_id_example', # String | Retrieves products' variants specified by product id
  store_id: 'store_id_example' # String | Retrieves variants specified by store id
}

begin
  result = api_instance.product_variant_count(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_variant_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **String**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **String**| Retrieve entities to their modification date | [optional] 
 **category_id** | **String**| Counts products’ variants specified by category id | [optional] 
 **product_id** | **String**| Retrieves products&#39; variants specified by product id | [optional] 
 **store_id** | **String**| Retrieves variants specified by store id | [optional] 

### Return type

[**InlineResponse20076**](InlineResponse20076.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_variant_delete**
> InlineResponse2004 product_variant_delete(id, product_id)



Delete variant.

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

api_instance = SwaggerClient::ProductApi.new

id = 'id_example' # String | Defines variant removal, specified by variant id

product_id = 'product_id_example' # String | Defines product's id where the variant has to be deleted


begin
  result = api_instance.product_variant_delete(id, product_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_variant_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Defines variant removal, specified by variant id | 
 **product_id** | **String**| Defines product&#39;s id where the variant has to be deleted | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_variant_info**
> InlineResponse20032 product_variant_info(id, opts)



Get variant info.

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

api_instance = SwaggerClient::ProductApi.new

id = 'id_example' # String | Retrieves variant's info specified by variant id

opts = { 
  params: 'id,name,description,price', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  store_id: 'store_id_example' # String | Retrieves variant info specified by store id
}

begin
  result = api_instance.product_variant_info(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_variant_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Retrieves variant&#39;s info specified by variant id | 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,name,description,price]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **store_id** | **String**| Retrieves variant info specified by store id | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_variant_list**
> InlineResponse20075 product_variant_list(opts)



Get list variants.

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

api_instance = SwaggerClient::ProductApi.new

opts = { 
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  params: 'id,name,description,price', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  modified_from: 'modified_from_example', # String | Retrieve entities from their modification date
  modified_to: 'modified_to_example', # String | Retrieve entities to their modification date
  category_id: 'category_id_example', # String | Retrieves products’ variants specified by category id
  product_id: 'product_id_example', # String | Retrieves products' variants specified by product id
  store_id: 'store_id_example' # String | Retrieves variants specified by store id
}

begin
  result = api_instance.product_variant_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_variant_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,name,description,price]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **String**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **String**| Retrieve entities to their modification date | [optional] 
 **category_id** | **String**| Retrieves products’ variants specified by category id | [optional] 
 **product_id** | **String**| Retrieves products&#39; variants specified by product id | [optional] 
 **store_id** | **String**| Retrieves variants specified by store id | [optional] 

### Return type

[**InlineResponse20075**](InlineResponse20075.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_variant_price_add**
> InlineResponse2007 product_variant_price_add(body)



Add some prices to the product variant.

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

api_instance = SwaggerClient::ProductApi.new

body = SwaggerClient::ProductVariantPriceAdd.new # ProductVariantPriceAdd | 


begin
  result = api_instance.product_variant_price_add(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_variant_price_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProductVariantPriceAdd**](ProductVariantPriceAdd.md)|  | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **product_variant_price_delete**
> InlineResponse2004 product_variant_price_delete(id, opts)



Delete some prices of the product variant.

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

api_instance = SwaggerClient::ProductApi.new

id = 'id_example' # String | Defines the variant where the price has to be deleted

opts = { 
  group_prices: 'group_prices_example' # String | Defines variants's group prices
}

begin
  result = api_instance.product_variant_price_delete(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_variant_price_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Defines the variant where the price has to be deleted | 
 **group_prices** | **String**| Defines variants&#39;s group prices | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **product_variant_price_update**
> InlineResponse20027 product_variant_price_update(body)



Update some prices of the product variant.

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

api_instance = SwaggerClient::ProductApi.new

body = SwaggerClient::ProductVariantPriceUpdate.new # ProductVariantPriceUpdate | 


begin
  result = api_instance.product_variant_price_update(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_variant_price_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ProductVariantPriceUpdate**](ProductVariantPriceUpdate.md)|  | 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **product_variant_update**
> InlineResponse20027 product_variant_update(id, product_id, opts)



Update variant.

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

api_instance = SwaggerClient::ProductApi.new

id = 'id_example' # String | Defines variant update specified by variant id

product_id = 'product_id_example' # String | Defines product's id where the variant has to be updated

opts = { 
  store_id: 'store_id_example', # String | Defines store id where the variant should be found
  warehouse_id: 'warehouse_id_example', # String | This parameter is used for selecting a warehouse where you need to set/modify a product quantity.
  reserve_quantity: 8.14, # Float | This parameter allows to reserve/unreserve product variants quantity.
  quantity: 8.14, # Float | Defines new products' variants quantity
  increase_quantity: 0, # Float | Defines the incremental changes in product quantity
  reduce_quantity: 0, # Float | Defines the decrement changes in product quantity
  price: 8.14, # Float | Defines new product's variant price
  special_price: 8.14, # Float | Defines new product's variant special price
  sprice_create: 'sprice_create_example', # String | Defines the date of special price creation
  sprice_expire: 'sprice_expire_example', # String | Defines the term of special price offer duration
  manage_stock: true, # BOOLEAN | Defines inventory tracking for product variant
  in_stock: true, # BOOLEAN | Set stock status
  name: 'name_example', # String | Defines variant's name that has to be updated
  description: 'description_example', # String | Specifies variant's description
  sku: 'sku_example', # String | Defines new product's variant sku
  meta_title: 'meta_title_example', # String | Defines unique meta title for each entity
  meta_description: 'meta_description_example', # String | Defines unique meta description of a entity
  meta_keywords: 'meta_keywords_example', # String | Defines unique meta keywords for each entity
  short_description: 'short_description_example', # String | Defines short description
  visible: 'visible_example', # String | Set visibility status
  status: 'status_example', # String | Defines product variant's status
  weight: 0, # Float | Weight
  reindex: true, # BOOLEAN | Is reindex required
  taxable: true # BOOLEAN | Specifies whether a tax is charged
}

begin
  result = api_instance.product_variant_update(id, product_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProductApi->product_variant_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Defines variant update specified by variant id | 
 **product_id** | **String**| Defines product&#39;s id where the variant has to be updated | 
 **store_id** | **String**| Defines store id where the variant should be found | [optional] 
 **warehouse_id** | **String**| This parameter is used for selecting a warehouse where you need to set/modify a product quantity. | [optional] 
 **reserve_quantity** | **Float**| This parameter allows to reserve/unreserve product variants quantity. | [optional] 
 **quantity** | **Float**| Defines new products&#39; variants quantity | [optional] 
 **increase_quantity** | **Float**| Defines the incremental changes in product quantity | [optional] [default to 0]
 **reduce_quantity** | **Float**| Defines the decrement changes in product quantity | [optional] [default to 0]
 **price** | **Float**| Defines new product&#39;s variant price | [optional] 
 **special_price** | **Float**| Defines new product&#39;s variant special price | [optional] 
 **sprice_create** | **String**| Defines the date of special price creation | [optional] 
 **sprice_expire** | **String**| Defines the term of special price offer duration | [optional] 
 **manage_stock** | **BOOLEAN**| Defines inventory tracking for product variant | [optional] 
 **in_stock** | **BOOLEAN**| Set stock status | [optional] 
 **name** | **String**| Defines variant&#39;s name that has to be updated | [optional] 
 **description** | **String**| Specifies variant&#39;s description | [optional] 
 **sku** | **String**| Defines new product&#39;s variant sku | [optional] 
 **meta_title** | **String**| Defines unique meta title for each entity | [optional] 
 **meta_description** | **String**| Defines unique meta description of a entity | [optional] 
 **meta_keywords** | **String**| Defines unique meta keywords for each entity | [optional] 
 **short_description** | **String**| Defines short description | [optional] 
 **visible** | **String**| Set visibility status | [optional] 
 **status** | **String**| Defines product variant&#39;s status | [optional] 
 **weight** | **Float**| Weight | [optional] [default to 0]
 **reindex** | **BOOLEAN**| Is reindex required | [optional] [default to true]
 **taxable** | **BOOLEAN**| Specifies whether a tax is charged | [optional] [default to true]

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



