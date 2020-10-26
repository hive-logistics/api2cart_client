# SwaggerClient::CartApi

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bridge_download**](CartApi.md#bridge_download) | **GET** /bridge.download.file | 
[**cart_bridge**](CartApi.md#cart_bridge) | **GET** /cart.bridge.json | 
[**cart_clear_cache**](CartApi.md#cart_clear_cache) | **POST** /cart.clear_cache.json | 
[**cart_config**](CartApi.md#cart_config) | **GET** /cart.config.json | 
[**cart_config_update**](CartApi.md#cart_config_update) | **PUT** /cart.config.update.json | 
[**cart_coupon_add**](CartApi.md#cart_coupon_add) | **POST** /cart.coupon.add.json | 
[**cart_coupon_condition_add**](CartApi.md#cart_coupon_condition_add) | **POST** /cart.coupon.condition.add.json | 
[**cart_coupon_count**](CartApi.md#cart_coupon_count) | **GET** /cart.coupon.count.json | 
[**cart_coupon_delete**](CartApi.md#cart_coupon_delete) | **DELETE** /cart.coupon.delete.json | 
[**cart_coupon_list**](CartApi.md#cart_coupon_list) | **GET** /cart.coupon.list.json | 
[**cart_create**](CartApi.md#cart_create) | **POST** /cart.create.json | 
[**cart_delete**](CartApi.md#cart_delete) | **DELETE** /cart.delete.json | 
[**cart_disconnect**](CartApi.md#cart_disconnect) | **GET** /cart.disconnect.json | 
[**cart_giftcard_add**](CartApi.md#cart_giftcard_add) | **POST** /cart.giftcard.add.json | 
[**cart_giftcard_count**](CartApi.md#cart_giftcard_count) | **GET** /cart.giftcard.count.json | 
[**cart_giftcard_list**](CartApi.md#cart_giftcard_list) | **GET** /cart.giftcard.list.json | 
[**cart_info**](CartApi.md#cart_info) | **GET** /cart.info.json | 
[**cart_list**](CartApi.md#cart_list) | **GET** /cart.list.json | 
[**cart_meta_data_list**](CartApi.md#cart_meta_data_list) | **GET** /cart.meta_data.list.json | 
[**cart_meta_data_set**](CartApi.md#cart_meta_data_set) | **POST** /cart.meta_data.set.json | 
[**cart_meta_data_unset**](CartApi.md#cart_meta_data_unset) | **DELETE** /cart.meta_data.unset.json | 
[**cart_methods**](CartApi.md#cart_methods) | **GET** /cart.methods.json | 
[**cart_plugin_list**](CartApi.md#cart_plugin_list) | **GET** /cart.plugin.list.json | 
[**cart_script_add**](CartApi.md#cart_script_add) | **POST** /cart.script.add.json | 
[**cart_script_delete**](CartApi.md#cart_script_delete) | **DELETE** /cart.script.delete.json | 
[**cart_script_list**](CartApi.md#cart_script_list) | **GET** /cart.script.list.json | 
[**cart_shipping_zones_list**](CartApi.md#cart_shipping_zones_list) | **GET** /cart.shipping_zones.list.json | 
[**cart_validate**](CartApi.md#cart_validate) | **GET** /cart.validate.json | 


# **bridge_download**
> File bridge_download(opts)



Download bridge for store

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  whitelabel: false # BOOLEAN | Identifies if there is a necessity to download whitelabel bridge.
}

begin
  result = api_instance.bridge_download(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->bridge_download: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **whitelabel** | **BOOLEAN**| Identifies if there is a necessity to download whitelabel bridge. | [optional] [default to false]

### Return type

**File**

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/zip



# **cart_bridge**
> InlineResponse2009 cart_bridge



Get bridge key and store key

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
end

api_instance = SwaggerClient::CartApi.new

begin
  result = api_instance.cart_bridge
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_bridge: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_clear_cache**
> InlineResponse20023 cart_clear_cache(cache_type)



Clear cache on store.

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

api_instance = SwaggerClient::CartApi.new

cache_type = 'cache_type_example' # String | Defines which cache should be cleared.


begin
  result = api_instance.cart_clear_cache(cache_type)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_clear_cache: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cache_type** | **String**| Defines which cache should be cleared. | 

### Return type

[**InlineResponse20023**](InlineResponse20023.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_config**
> InlineResponse20013 cart_config(opts)



Get list of cart configs

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  params: 'store_name,store_url,db_prefix', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.cart_config(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_config: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to store_name,store_url,db_prefix]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_config_update**
> InlineResponse20014 cart_config_update(body)



Use this API method to update custom data in client database.

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

api_instance = SwaggerClient::CartApi.new

body = SwaggerClient::CartConfigUpdate.new # CartConfigUpdate | 


begin
  result = api_instance.cart_config_update(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_config_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CartConfigUpdate**](CartConfigUpdate.md)|  | 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cart_coupon_add**
> InlineResponse20018 cart_coupon_add(body)



Create new coupon

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

api_instance = SwaggerClient::CartApi.new

body = SwaggerClient::CartCouponAdd.new # CartCouponAdd | 


begin
  result = api_instance.cart_coupon_add(body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_coupon_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CartCouponAdd**](CartCouponAdd.md)|  | 

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cart_coupon_condition_add**
> InlineResponse20019 cart_coupon_condition_add(coupon_id, entity, key, operator, value, opts)



Create new coupon condition

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

api_instance = SwaggerClient::CartApi.new

coupon_id = 'coupon_id_example' # String | Coupon Id

entity = 'entity_example' # String | Defines condition entity type

key = 'key_example' # String | Defines condition entity attribute key

operator = 'operator_example' # String | Defines condition operator

value = 'value_example' # String | Defines condition value, can be comma separated according to the operator.

opts = { 
  store_id: 'store_id_example', # String | Store Id
  target: 'coupon_prerequisite' # String | Defines condition operator
}

begin
  result = api_instance.cart_coupon_condition_add(coupon_id, entity, key, operator, value, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_coupon_condition_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **coupon_id** | **String**| Coupon Id | 
 **entity** | **String**| Defines condition entity type | 
 **key** | **String**| Defines condition entity attribute key | 
 **operator** | **String**| Defines condition operator | 
 **value** | **String**| Defines condition value, can be comma separated according to the operator. | 
 **store_id** | **String**| Store Id | [optional] 
 **target** | **String**| Defines condition operator | [optional] [default to coupon_prerequisite]

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_coupon_count**
> InlineResponse20015 cart_coupon_count(opts)



Get cart coupons count.

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  store_id: 'store_id_example', # String | Store Id
  date_start_from: 'date_start_from_example', # String | Filter entity by date_start (greater or equal)
  date_start_to: 'date_start_to_example', # String | Filter entity by date_start (less or equal)
  date_end_from: 'date_end_from_example', # String | Filter entity by date_end (greater or equal)
  date_end_to: 'date_end_to_example', # String | Filter entity by date_end (less or equal)
  avail: true # BOOLEAN | Defines category's visibility status
}

begin
  result = api_instance.cart_coupon_count(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_coupon_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **String**| Store Id | [optional] 
 **date_start_from** | **String**| Filter entity by date_start (greater or equal) | [optional] 
 **date_start_to** | **String**| Filter entity by date_start (less or equal) | [optional] 
 **date_end_from** | **String**| Filter entity by date_end (greater or equal) | [optional] 
 **date_end_to** | **String**| Filter entity by date_end (less or equal) | [optional] 
 **avail** | **BOOLEAN**| Defines category&#39;s visibility status | [optional] [default to true]

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_coupon_delete**
> InlineResponse2004 cart_coupon_delete(id, opts)



Delete coupon

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

api_instance = SwaggerClient::CartApi.new

id = 'id_example' # String | Entity id

opts = { 
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.cart_coupon_delete(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_coupon_delete: #{e}"
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



# **cart_coupon_list**
> ModelResponseCartCouponList cart_coupon_list(opts)



Get cart coupon discounts.

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  page_cursor: 'page_cursor_example', # String | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  coupons_ids: 'coupons_ids_example', # String | Filter coupons by ids
  store_id: 'store_id_example', # String | Filter coupons by store id
  date_start_from: 'date_start_from_example', # String | Filter entity by date_start (greater or equal)
  date_start_to: 'date_start_to_example', # String | Filter entity by date_start (less or equal)
  date_end_from: 'date_end_from_example', # String | Filter entity by date_end (greater or equal)
  date_end_to: 'date_end_to_example', # String | Filter entity by date_end (less or equal)
  avail: true, # BOOLEAN | Filter coupons by avail status
  lang_id: 'lang_id_example', # String | Language id
  params: 'force_all', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.cart_coupon_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_coupon_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **String**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **coupons_ids** | **String**| Filter coupons by ids | [optional] 
 **store_id** | **String**| Filter coupons by store id | [optional] 
 **date_start_from** | **String**| Filter entity by date_start (greater or equal) | [optional] 
 **date_start_to** | **String**| Filter entity by date_start (less or equal) | [optional] 
 **date_end_from** | **String**| Filter entity by date_end (greater or equal) | [optional] 
 **date_end_to** | **String**| Filter entity by date_end (less or equal) | [optional] 
 **avail** | **BOOLEAN**| Filter coupons by avail status | [optional] 
 **lang_id** | **String**| Language id | [optional] 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to force_all]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseCartCouponList**](ModelResponseCartCouponList.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_create**
> InlineResponse2006 cart_create(cart_id, store_url, store_id, opts)



Add store to the account

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
end

api_instance = SwaggerClient::CartApi.new

cart_id = 'cart_id_example' # String | Store’s identifier which you can get from cart_list method

store_url = 'store_url_example' # String | A web address of a store that you would like to connect to API2Cart

store_id = 'store_id_example' # String | Store Id

opts = { 
  bridge_url: 'bridge_url_example', # String | This parameter allows to set up store with custom bridge url (also you must use store_root parameter if a bridge folder is not in the root folder of the store)
  store_root: 'store_root_example', # String | Absolute path to the store root directory (used with \"bridge_url\" parameter)
  store_key: 'store_key_example', # String | Set this parameter if bridge is already uploaded to store
  shared_secret: 'shared_secret_example', # String | Shared secret
  validate_version: false, # BOOLEAN | Specify if api2cart should validate cart version
  verify: true, # BOOLEAN | Enables or disables cart's verification
  db_tables_prefix: 'db_tables_prefix_example', # String | This parameter is deprecated for this method. Please, use this parameter in method account.config.update
  ftp_host: 'ftp_host_example', # String | FTP connection host
  ftp_user: 'ftp_user_example', # String | FTP User
  ftp_password: 'ftp_password_example', # String | FTP Password
  ftp_port: 21, # Integer | FTP Port
  ftp_store_dir: '/', # String | FTP Store dir
  api_key_3dcart: 'api_key_3dcart_example', # String | 3DCart API Key
  admin_account: 'admin_account_example', # String | It's a BigCommerce account for which API is enabled
  api_path: 'api_path_example', # String | BigCommerce API URL
  api_key: 'api_key_example', # String | Bigcommerce API Key
  client_id: 'client_id_example', # String | Client ID of the requesting app
  access_token: 'access_token_example', # String | Access token authorizing the app to access resources on behalf of a user
  context: 'context_example', # String | API Path section unique to the store
  access_token2: 'access_token_example', # String | Access token authorizing the app to access resources on behalf of a user
  api_key_shopify: 'api_key_shopify_example', # String | Shopify API Key
  api_password: 'api_password_example', # String | Shopify API Password
  access_token_shopify: 'access_token_shopify_example', # String | Access token authorizing the app to access resources on behalf of a user
  api_key2: 'api_key_example', # String | Neto API Key
  api_username: 'api_username_example', # String | Neto User Name
  encrypted_password: 'encrypted_password_example', # String | Volusion API Password
  login: 'login_example', # String | It's a Volusion account for which API is enabled
  api_user_adnsf: 'api_user_adnsf_example', # String | It's a AspDotNetStorefront account for which API is available
  api_pass: 'api_pass_example', # String | AspDotNetStorefront API Password
  access_key_scelite: 'access_key_scelite_example', # String | Shopping Cart Elite Access Key
  api_key_scelite: 'api_key_scelite_example', # String | Shopping Cart Elite API Key
  api_secret_key_scelite: 'api_secret_key_scelite_example', # String | Shopping Cart Elite API Secret Key
  private_key: 'private_key_example', # String | 3DCart Application Private Key
  app_token: 'app_token_example', # String | 3DCart Token from Application
  etsy_keystring: 'etsy_keystring_example', # String | Etsy keystring
  etsy_shared_secret: 'etsy_shared_secret_example', # String | Etsy shared secret
  token_secret: 'token_secret_example', # String | Secret token authorizing the app to access resources on behalf of a user
  ebay_client_id: 'ebay_client_id_example', # String | Application ID (AppID).
  ebay_client_secret: 'ebay_client_secret_example', # String | Shared Secret from eBay application
  ebay_runame: 'ebay_runame_example', # String | The RuName value that eBay assigns to your application.
  ebay_access_token: 'ebay_access_token_example', # String | Used to authenticate API requests.
  ebay_refresh_token: 'ebay_refresh_token_example', # String | Used to renew the access token.
  ebay_environment: 'production', # String | eBay environment
  ebay_site_id: 0, # Integer | eBay global ID
  dw_client_id: 'dw_client_id_example', # String | Demandware client id
  dw_api_pass: 'dw_api_pass_example', # String | Demandware api password
  demandware_user_name: 'demandware_user_name_example', # String | Demandware user name
  demandware_user_password: 'demandware_user_password_example', # String | Demandware user password
  seller_id: 'seller_id_example', # String | Seller Id
  amazon_secret_key: 'amazon_secret_key_example', # String | Amazon Secret Key
  amazon_access_key_id: 'amazon_access_key_id_example', # String | Amazon Secret Key Id
  marketplaces_ids: 'marketplaces_ids_example', # String | Comma separated marketplaces ids
  environment: 'production', # String | 
  hybris_client_id: 'hybris_client_id_example', # String | Omni Commerce Connector Client ID
  hybris_client_secret: 'hybris_client_secret_example', # String | Omni Commerce Connector Client Secret
  hybris_username: 'hybris_username_example', # String | User Name
  hybris_password: 'hybris_password_example', # String | User password
  walmart_client_id: 'walmart_client_id_example', # String | Walmart client ID
  walmart_client_secret: 'walmart_client_secret_example', # String | Walmart client secret
  lightspeed_api_key: 'lightspeed_api_key_example', # String | LightSpeed api key
  lightspeed_api_secret: 'lightspeed_api_secret_example' # String | LightSpeed api secret
}

begin
  result = api_instance.cart_create(cart_id, store_url, store_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cart_id** | **String**| Store’s identifier which you can get from cart_list method | 
 **store_url** | **String**| A web address of a store that you would like to connect to API2Cart | 
 **store_id** | **String**| Store Id | 
 **bridge_url** | **String**| This parameter allows to set up store with custom bridge url (also you must use store_root parameter if a bridge folder is not in the root folder of the store) | [optional] 
 **store_root** | **String**| Absolute path to the store root directory (used with \&quot;bridge_url\&quot; parameter) | [optional] 
 **store_key** | **String**| Set this parameter if bridge is already uploaded to store | [optional] 
 **shared_secret** | **String**| Shared secret | [optional] 
 **validate_version** | **BOOLEAN**| Specify if api2cart should validate cart version | [optional] [default to false]
 **verify** | **BOOLEAN**| Enables or disables cart&#39;s verification | [optional] [default to true]
 **db_tables_prefix** | **String**| This parameter is deprecated for this method. Please, use this parameter in method account.config.update | [optional] 
 **ftp_host** | **String**| FTP connection host | [optional] 
 **ftp_user** | **String**| FTP User | [optional] 
 **ftp_password** | **String**| FTP Password | [optional] 
 **ftp_port** | **Integer**| FTP Port | [optional] [default to 21]
 **ftp_store_dir** | **String**| FTP Store dir | [optional] [default to /]
 **api_key_3dcart** | **String**| 3DCart API Key | [optional] 
 **admin_account** | **String**| It&#39;s a BigCommerce account for which API is enabled | [optional] 
 **api_path** | **String**| BigCommerce API URL | [optional] 
 **api_key** | **String**| Bigcommerce API Key | [optional] 
 **client_id** | **String**| Client ID of the requesting app | [optional] 
 **access_token** | **String**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **context** | **String**| API Path section unique to the store | [optional] 
 **access_token2** | **String**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **api_key_shopify** | **String**| Shopify API Key | [optional] 
 **api_password** | **String**| Shopify API Password | [optional] 
 **access_token_shopify** | **String**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **api_key2** | **String**| Neto API Key | [optional] 
 **api_username** | **String**| Neto User Name | [optional] 
 **encrypted_password** | **String**| Volusion API Password | [optional] 
 **login** | **String**| It&#39;s a Volusion account for which API is enabled | [optional] 
 **api_user_adnsf** | **String**| It&#39;s a AspDotNetStorefront account for which API is available | [optional] 
 **api_pass** | **String**| AspDotNetStorefront API Password | [optional] 
 **access_key_scelite** | **String**| Shopping Cart Elite Access Key | [optional] 
 **api_key_scelite** | **String**| Shopping Cart Elite API Key | [optional] 
 **api_secret_key_scelite** | **String**| Shopping Cart Elite API Secret Key | [optional] 
 **private_key** | **String**| 3DCart Application Private Key | [optional] 
 **app_token** | **String**| 3DCart Token from Application | [optional] 
 **etsy_keystring** | **String**| Etsy keystring | [optional] 
 **etsy_shared_secret** | **String**| Etsy shared secret | [optional] 
 **token_secret** | **String**| Secret token authorizing the app to access resources on behalf of a user | [optional] 
 **ebay_client_id** | **String**| Application ID (AppID). | [optional] 
 **ebay_client_secret** | **String**| Shared Secret from eBay application | [optional] 
 **ebay_runame** | **String**| The RuName value that eBay assigns to your application. | [optional] 
 **ebay_access_token** | **String**| Used to authenticate API requests. | [optional] 
 **ebay_refresh_token** | **String**| Used to renew the access token. | [optional] 
 **ebay_environment** | **String**| eBay environment | [optional] [default to production]
 **ebay_site_id** | **Integer**| eBay global ID | [optional] [default to 0]
 **dw_client_id** | **String**| Demandware client id | [optional] 
 **dw_api_pass** | **String**| Demandware api password | [optional] 
 **demandware_user_name** | **String**| Demandware user name | [optional] 
 **demandware_user_password** | **String**| Demandware user password | [optional] 
 **seller_id** | **String**| Seller Id | [optional] 
 **amazon_secret_key** | **String**| Amazon Secret Key | [optional] 
 **amazon_access_key_id** | **String**| Amazon Secret Key Id | [optional] 
 **marketplaces_ids** | **String**| Comma separated marketplaces ids | [optional] 
 **environment** | **String**|  | [optional] [default to production]
 **hybris_client_id** | **String**| Omni Commerce Connector Client ID | [optional] 
 **hybris_client_secret** | **String**| Omni Commerce Connector Client Secret | [optional] 
 **hybris_username** | **String**| User Name | [optional] 
 **hybris_password** | **String**| User password | [optional] 
 **walmart_client_id** | **String**| Walmart client ID | [optional] 
 **walmart_client_secret** | **String**| Walmart client secret | [optional] 
 **lightspeed_api_key** | **String**| LightSpeed api key | [optional] 
 **lightspeed_api_secret** | **String**| LightSpeed api secret | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_delete**
> InlineResponse20010 cart_delete



Remove store from API2Cart

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

api_instance = SwaggerClient::CartApi.new

begin
  result = api_instance.cart_delete
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_delete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_disconnect**
> InlineResponse20011 cart_disconnect(opts)



Disconnect with the store and clear store session data.

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  delete_bridge: false # BOOLEAN | Identifies if there is a necessity to delete bridge
}

begin
  result = api_instance.cart_disconnect(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_disconnect: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delete_bridge** | **BOOLEAN**| Identifies if there is a necessity to delete bridge | [optional] [default to false]

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_giftcard_add**
> InlineResponse20017 cart_giftcard_add(amount, opts)



Create new gift card

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

api_instance = SwaggerClient::CartApi.new

amount = 8.14 # Float | Defines the gift card amount value.

opts = { 
  code: 'code_example', # String | Gift card code
  owner_email: 'owner_email_example' # String | Gift card owner email
}

begin
  result = api_instance.cart_giftcard_add(amount, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_giftcard_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **amount** | **Float**| Defines the gift card amount value. | 
 **code** | **String**| Gift card code | [optional] 
 **owner_email** | **String**| Gift card owner email | [optional] 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_giftcard_count**
> InlineResponse20016 cart_giftcard_count(opts)



Get gift cards count.

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.cart_giftcard_count(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_giftcard_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_giftcard_list**
> ModelResponseCartGiftCardList cart_giftcard_list(opts)



Get gift cards list.

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  page_cursor: 'page_cursor_example', # String | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  store_id: 'store_id_example', # String | Store Id
  params: 'force_all', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.cart_giftcard_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_giftcard_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **String**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **store_id** | **String**| Store Id | [optional] 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to force_all]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseCartGiftCardList**](ModelResponseCartGiftCardList.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_info**
> InlineResponse20022 cart_info(opts)



Get cart information

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  params: 'store_name,store_url,db_prefix', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.cart_info(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to store_name,store_url,db_prefix]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_list**
> InlineResponse2008 cart_list



Get list of supported carts

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
end

api_instance = SwaggerClient::CartApi.new

begin
  result = api_instance.cart_list
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_list: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_meta_data_list**
> ModelResponseCartMetaDataList cart_meta_data_list(entity_id, opts)



Get entity meta data

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

api_instance = SwaggerClient::CartApi.new

entity_id = 'entity_id_example' # String | Entity Id

opts = { 
  entity: 'product', # String | Entity
  store_id: 'store_id_example', # String | Store Id
  key: 'key_example', # String | Key
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  page_cursor: 'page_cursor_example', # String | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
  params: 'key,value', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.cart_meta_data_list(entity_id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_meta_data_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **String**| Entity Id | 
 **entity** | **String**| Entity | [optional] [default to product]
 **store_id** | **String**| Store Id | [optional] 
 **key** | **String**| Key | [optional] 
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **page_cursor** | **String**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to key,value]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseCartMetaDataList**](ModelResponseCartMetaDataList.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_meta_data_set**
> InlineResponse200 cart_meta_data_set(entity_id, key, value, opts)



Set meta data for a specific entity

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

api_instance = SwaggerClient::CartApi.new

entity_id = 'entity_id_example' # String | Entity Id

key = 'key_example' # String | Key

value = 'value_example' # String | Value

opts = { 
  entity: 'product', # String | Entity
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.cart_meta_data_set(entity_id, key, value, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_meta_data_set: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **String**| Entity Id | 
 **key** | **String**| Key | 
 **value** | **String**| Value | 
 **entity** | **String**| Entity | [optional] [default to product]
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_meta_data_unset**
> InlineResponse20019 cart_meta_data_unset(entity_id, key, opts)



Unset meta data for a specific entity

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

api_instance = SwaggerClient::CartApi.new

entity_id = 'entity_id_example' # String | Entity Id

key = 'key_example' # String | Key

opts = { 
  entity: 'product', # String | Entity
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.cart_meta_data_unset(entity_id, key, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_meta_data_unset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **String**| Entity Id | 
 **key** | **String**| Key | 
 **entity** | **String**| Entity | [optional] [default to product]
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_methods**
> InlineResponse20012 cart_methods



Get list of cart methods

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

api_instance = SwaggerClient::CartApi.new

begin
  result = api_instance.cart_methods
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_methods: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_plugin_list**
> InlineResponse20024 cart_plugin_list(opts)



Get list of installed plugins

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  store_key: 'store_key_example', # String | Set this parameter if bridge is already uploaded to store
  store_id: 'store_id_example', # String | Store Id
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10 # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
}

begin
  result = api_instance.cart_plugin_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_plugin_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_key** | **String**| Set this parameter if bridge is already uploaded to store | [optional] 
 **store_id** | **String**| Store Id | [optional] 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]

### Return type

[**InlineResponse20024**](InlineResponse20024.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_script_add**
> InlineResponse20020 cart_script_add(opts)



Add new script to the storefront

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  name: 'name_example', # String | The user-friendly script name
  description: 'description_example', # String | The user-friendly description
  html: 'html_example', # String | An html string containing exactly one `script` tag.
  src: 'src_example', # String | The URL of the remote script
  load_method: 'load_method_example', # String | The load method to use for the script
  scope: 'storefront', # String | The page or pages on the online store where the script should be included
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.cart_script_add(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_script_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| The user-friendly script name | [optional] 
 **description** | **String**| The user-friendly description | [optional] 
 **html** | **String**| An html string containing exactly one &#x60;script&#x60; tag. | [optional] 
 **src** | **String**| The URL of the remote script | [optional] 
 **load_method** | **String**| The load method to use for the script | [optional] 
 **scope** | **String**| The page or pages on the online store where the script should be included | [optional] [default to storefront]
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_script_delete**
> InlineResponse20021 cart_script_delete(id, opts)



Remove script from the storefront

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

api_instance = SwaggerClient::CartApi.new

id = 'id_example' # String | Entity id

opts = { 
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.cart_script_delete(id, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_script_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Entity id | 
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_script_list**
> ModelResponseCartScriptList cart_script_list(opts)



Get scripts installed to the storefront

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  page_cursor: 'page_cursor_example', # String | Used to retrieve entities via cursor-based pagination (it can't be used with any other filtering parameter)
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  created_from: 'created_from_example', # String | Retrieve entities from their creation date
  created_to: 'created_to_example', # String | Retrieve entities to their creation date
  modified_from: 'modified_from_example', # String | Retrieve entities from their modification date
  modified_to: 'modified_to_example', # String | Retrieve entities to their modification date
  script_ids: 'script_ids_example', # String | Retrieves only scripts with specific ids
  store_id: 'store_id_example', # String | Store Id
  params: 'force_all', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example' # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
}

begin
  result = api_instance.cart_script_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_script_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_cursor** | **String**| Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) | [optional] 
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **created_from** | **String**| Retrieve entities from their creation date | [optional] 
 **created_to** | **String**| Retrieve entities to their creation date | [optional] 
 **modified_from** | **String**| Retrieve entities from their modification date | [optional] 
 **modified_to** | **String**| Retrieve entities to their modification date | [optional] 
 **script_ids** | **String**| Retrieves only scripts with specific ids | [optional] 
 **store_id** | **String**| Store Id | [optional] 
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to force_all]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 

### Return type

[**ModelResponseCartScriptList**](ModelResponseCartScriptList.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_shipping_zones_list**
> InlineResponse20025 cart_shipping_zones_list(opts)



Get list of shipping zones

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  store_id: 'store_id_example' # String | Store Id
}

begin
  result = api_instance.cart_shipping_zones_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_shipping_zones_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **store_id** | **String**| Store Id | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **cart_validate**
> InlineResponse2007 cart_validate(opts)



Check store availability, bridge connection for the downloadable carts, identify DB prefix, validate API accesses for API carts.

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

api_instance = SwaggerClient::CartApi.new

opts = { 
  validate_version: false # BOOLEAN | Specify if api2cart should validate cart version
}

begin
  result = api_instance.cart_validate(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CartApi->cart_validate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validate_version** | **BOOLEAN**| Specify if api2cart should validate cart version | [optional] [default to false]

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



