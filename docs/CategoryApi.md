# SwaggerClient::CategoryApi

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**category_add**](CategoryApi.md#category_add) | **POST** /category.add.json | 
[**category_assign**](CategoryApi.md#category_assign) | **POST** /category.assign.json | 
[**category_count**](CategoryApi.md#category_count) | **GET** /category.count.json | 
[**category_delete**](CategoryApi.md#category_delete) | **DELETE** /category.delete.json | 
[**category_find**](CategoryApi.md#category_find) | **GET** /category.find.json | 
[**category_image_add**](CategoryApi.md#category_image_add) | **POST** /category.image.add.json | 
[**category_image_delete**](CategoryApi.md#category_image_delete) | **DELETE** /category.image.delete.json | 
[**category_info**](CategoryApi.md#category_info) | **GET** /category.info.json | 
[**category_list**](CategoryApi.md#category_list) | **GET** /category.list.json | 
[**category_unassign**](CategoryApi.md#category_unassign) | **POST** /category.unassign.json | 
[**category_update**](CategoryApi.md#category_update) | **PUT** /category.update.json | 


# **category_add**
> InlineResponse20040 category_add(name, opts)



Add new category in store

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

api_instance = SwaggerClient::CategoryApi.new

name = 'name_example' # String | Defines category's name that has to be added

opts = { 
  parent_id: 'parent_id_example', # String | Adds categories specified by parent id
  stores_ids: '0', # String | Create category in the stores that is specified by comma-separated stores' id
  store_id: 'store_id_example', # String | Store Id
  lang_id: 'lang_id_example', # String | Language id
  avail: true, # BOOLEAN | Defines category's visibility status
  sort_order: 0, # Integer | Sort number in the list
  created_time: 'created_time_example', # String | Entity's date creation
  modified_time: 'modified_time_example', # String | Entity's date modification
  description: 'description_example', # String | Defines category's description
  meta_title: 'meta_title_example', # String | Defines unique meta title for each entity
  meta_description: 'meta_description_example', # String | Defines unique meta description of a entity
  meta_keywords: 'meta_keywords_example', # String | Defines unique meta keywords for each entity
  seo_url: 'seo_url_example' # String | Defines unique category's URL for SEO
}

begin
  result = api_instance.category_add(name, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoryApi->category_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Defines category&#39;s name that has to be added | 
 **parent_id** | **String**| Adds categories specified by parent id | [optional] 
 **stores_ids** | **String**| Create category in the stores that is specified by comma-separated stores&#39; id | [optional] [default to 0]
 **store_id** | **String**| Store Id | [optional] 
 **lang_id** | **String**| Language id | [optional] 
 **avail** | **BOOLEAN**| Defines category&#39;s visibility status | [optional] [default to true]
 **sort_order** | **Integer**| Sort number in the list | [optional] [default to 0]
 **created_time** | **String**| Entity&#39;s date creation | [optional] 
 **modified_time** | **String**| Entity&#39;s date modification | [optional] 
 **description** | **String**| Defines category&#39;s description | [optional] 
 **meta_title** | **String**| Defines unique meta title for each entity | [optional] 
 **meta_description** | **String**| Defines unique meta description of a entity | [optional] 
 **meta_keywords** | **String**| Defines unique meta keywords for each entity | [optional] 
 **seo_url** | **String**| Defines unique category&#39;s URL for SEO | [optional] 

### Return type

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **category_assign**
> InlineResponse20014 category_assign(product_id, category_id)



Assign category to product

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

api_instance = SwaggerClient::CategoryApi.new

product_id = 'product_id_example' # String | Defines category assign to the product, specified by product id

category_id = 'category_id_example' # String | Defines category assign, specified by category id


begin
  result = api_instance.category_assign(product_id, category_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoryApi->category_assign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **String**| Defines category assign to the product, specified by product id | 
 **category_id** | **String**| Defines category assign, specified by category id | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **category_count**
> InlineResponse20037 category_count(opts)



Count categories in store.

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

api_instance = SwaggerClient::CategoryApi.new

opts = { 
  parent_id: 'parent_id_example', # String | Counts categories specified by parent id
  store_id: 'store_id_example', # String | Counts category specified by store id
  lang_id: 'lang_id_example' # String | Counts category specified by language id
}

begin
  result = api_instance.category_count(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoryApi->category_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parent_id** | **String**| Counts categories specified by parent id | [optional] 
 **store_id** | **String**| Counts category specified by store id | [optional] 
 **lang_id** | **String**| Counts category specified by language id | [optional] 

### Return type

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **category_delete**
> InlineResponse2004 category_delete(id)



Delete category in store

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

api_instance = SwaggerClient::CategoryApi.new

id = 'id_example' # String | Defines category removal, specified by category id


begin
  result = api_instance.category_delete(id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoryApi->category_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Defines category removal, specified by category id | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **category_find**
> InlineResponse20039 category_find(find_value, opts)



Search category in store. \"Laptop\" is specified here by default.

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

api_instance = SwaggerClient::CategoryApi.new

find_value = 'find_value_example' # String | Entity search that is specified by some value

opts = { 
  find_where: 'name', # String | Entity search that is specified by the comma-separated unique fields
  find_params: 'whole_words' # String | Entity search that is specified by comma-separated parameters
}

begin
  result = api_instance.category_find(find_value, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoryApi->category_find: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **find_value** | **String**| Entity search that is specified by some value | 
 **find_where** | **String**| Entity search that is specified by the comma-separated unique fields | [optional] [default to name]
 **find_params** | **String**| Entity search that is specified by comma-separated parameters | [optional] [default to whole_words]

### Return type

[**InlineResponse20039**](InlineResponse20039.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **category_image_add**
> InlineResponse20036 category_image_add(category_id, image_name, url, type, opts)



Add image to category

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

api_instance = SwaggerClient::CategoryApi.new

category_id = 'category_id_example' # String | Defines category id where the image should be added

image_name = 'image_name_example' # String | Defines image's name

url = 'url_example' # String | Defines URL of the image that has to be added

type = 'type_example' # String | Defines image's types that are specified by comma-separated list

opts = { 
  label: 'label_example', # String | Defines alternative text that has to be attached to the picture
  mime: 'mime_example', # String | Mime type of image http://en.wikipedia.org/wiki/Internet_media_type.
  position: 0, # Integer | Defines image’s position in the list
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.category_image_add(category_id, image_name, url, type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoryApi->category_image_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **String**| Defines category id where the image should be added | 
 **image_name** | **String**| Defines image&#39;s name | 
 **url** | **String**| Defines URL of the image that has to be added | 
 **type** | **String**| Defines image&#39;s types that are specified by comma-separated list | 
 **label** | **String**| Defines alternative text that has to be attached to the picture | [optional] 
 **mime** | **String**| Mime type of image http://en.wikipedia.org/wiki/Internet_media_type. | [optional] 
 **position** | **Integer**| Defines image’s position in the list | [optional] [default to 0]
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20036**](InlineResponse20036.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **category_image_delete**
> InlineResponse2004 category_image_delete(category_id, image_id, opts)



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

api_instance = SwaggerClient::CategoryApi.new

category_id = 'category_id_example' # String | Defines category id where the image should be deleted

image_id = 'image_id_example' # String | Define image id

opts = { 
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.category_image_delete(category_id, image_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoryApi->category_image_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **String**| Defines category id where the image should be deleted | 
 **image_id** | **String**| Define image id | 
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **category_info**
> InlineResponse20038 category_info(id, opts)



Get category info about category ID*** or specify other category ID.

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

api_instance = SwaggerClient::CategoryApi.new

id = 'id_example' # String | Retrieves category's info specified by category id

opts = { 
  params: 'id,parent_id,name,description', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  store_id: 'store_id_example', # String | Retrieves category info  specified by store id
  lang_id: 'lang_id_example' # String | Retrieves category info  specified by language id
}

begin
  result = api_instance.category_info(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoryApi->category_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Retrieves category&#39;s info specified by category id | 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,parent_id,name,description]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **store_id** | **String**| Retrieves category info  specified by store id | [optional] 
 **lang_id** | **String**| Retrieves category info  specified by language id | [optional] 

### Return type

[**InlineResponse20038**](InlineResponse20038.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **category_list**
> ModelResponseCategoryList category_list(opts)



Get list of categories from store. Returns 4 categories by default.

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

api_instance = SwaggerClient::CategoryApi.new

opts = { 
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  page_cursor: 'page_cursor_example', # String | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
  parent_id: 'parent_id_example', # String | Retrieves categories specified by parent id
  params: 'id,parent_id,name,description', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  store_id: 'store_id_example', # String | Retrieves categories specified by store id
  lang_id: 'lang_id_example' # String | Retrieves categorys specified by language id
}

begin
  result = api_instance.category_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoryApi->category_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **String**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **parent_id** | **String**| Retrieves categories specified by parent id | [optional] 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to id,parent_id,name,description]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **store_id** | **String**| Retrieves categories specified by store id | [optional] 
 **lang_id** | **String**| Retrieves categorys specified by language id | [optional] 

### Return type

[**ModelResponseCategoryList**](ModelResponseCategoryList.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **category_unassign**
> InlineResponse20014 category_unassign(category_id, product_id)



Unassign category to product

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

api_instance = SwaggerClient::CategoryApi.new

category_id = 'category_id_example' # String | Defines category unassign, specified by category id

product_id = 'product_id_example' # String | Defines category unassign to the product, specified by product id


begin
  result = api_instance.category_unassign(category_id, product_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoryApi->category_unassign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category_id** | **String**| Defines category unassign, specified by category id | 
 **product_id** | **String**| Defines category unassign to the product, specified by product id | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **category_update**
> InlineResponse20027 category_update(id, opts)



Update category in store

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

api_instance = SwaggerClient::CategoryApi.new

id = 'id_example' # String | Defines category update specified by category id

opts = { 
  name: 'name_example', # String | Defines new category’s name
  parent_id: 'parent_id_example', # String | Defines new parent category id
  stores_ids: '0', # String | Update category in the stores that is specified by comma-separated stores' id
  avail: true, # BOOLEAN | Defines category's visibility status
  sort_order: 56, # Integer | Sort number in the list
  modified_time: 'modified_time_example', # String | Entity's date modification
  description: 'description_example', # String | Defines new category's description
  meta_title: 'meta_title_example', # String | Defines unique meta title for each entity
  meta_description: 'meta_description_example', # String | Defines unique meta description of a entity
  meta_keywords: 'meta_keywords_example', # String | Defines unique meta keywords for each entity
  seo_url: 'seo_url_example', # String | Defines unique category's URL for SEO
  lang_id: 'lang_id_example', # String | Language id
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.category_update(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CategoryApi->category_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Defines category update specified by category id | 
 **name** | **String**| Defines new category’s name | [optional] 
 **parent_id** | **String**| Defines new parent category id | [optional] 
 **stores_ids** | **String**| Update category in the stores that is specified by comma-separated stores&#39; id | [optional] [default to 0]
 **avail** | **BOOLEAN**| Defines category&#39;s visibility status | [optional] 
 **sort_order** | **Integer**| Sort number in the list | [optional] 
 **modified_time** | **String**| Entity&#39;s date modification | [optional] 
 **description** | **String**| Defines new category&#39;s description | [optional] 
 **meta_title** | **String**| Defines unique meta title for each entity | [optional] 
 **meta_description** | **String**| Defines unique meta description of a entity | [optional] 
 **meta_keywords** | **String**| Defines unique meta keywords for each entity | [optional] 
 **seo_url** | **String**| Defines unique category&#39;s URL for SEO | [optional] 
 **lang_id** | **String**| Language id | [optional] 
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



