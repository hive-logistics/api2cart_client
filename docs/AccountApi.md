# SwaggerClient::AccountApi

All URIs are relative to *https://api.api2cart.com/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_cart_add**](AccountApi.md#account_cart_add) | **POST** /account.cart.add.json | 
[**account_cart_list**](AccountApi.md#account_cart_list) | **GET** /account.cart.list.json | 
[**account_config_update**](AccountApi.md#account_config_update) | **PUT** /account.config.update.json | 
[**account_failed_webhooks**](AccountApi.md#account_failed_webhooks) | **GET** /account.failed_webhooks.json | 
[**account_supported_platforms**](AccountApi.md#account_supported_platforms) | **GET** /account.supported_platforms.json | 


# **account_cart_add**
> InlineResponse2006 account_cart_add(cart_id, store_url, opts)



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

api_instance = SwaggerClient::AccountApi.new

cart_id = 'cart_id_example' # String | Store’s identifier which you can get from cart_list method

store_url = 'store_url_example' # String | A web address of a store that you would like to connect to API2Cart

opts = { 
  bridge_url: 'bridge_url_example', # String | This parameter allows to set up store with custom bridge url (also you must use store_root parameter if a bridge folder is not in the root folder of the store)
  store_root: 'store_root_example', # String | Absolute path to the store root directory (used with \"bridge_url\" parameter)
  store_key: 'store_key_example', # String | Set this parameter if bridge is already uploaded to store
  validate_version: false, # BOOLEAN | Specify if api2cart should validate cart version
  verify: true, # BOOLEAN | Enables or disables cart's verification
  db_tables_prefix: 'db_tables_prefix_example', # String | This parameter is deprecated for this method. Please, use this parameter in method account.config.update
  ftp_host: 'ftp_host_example', # String | FTP connection host
  ftp_user: 'ftp_user_example', # String | FTP User
  ftp_password: 'ftp_password_example', # String | FTP Password
  ftp_port: 21, # Integer | FTP Port
  ftp_store_dir: '/', # String | FTP Store dir
  _3dcartapi_api_key: '_3dcartapi_api_key_example', # String | 3DCart API Key
  amazon_access_token: 'amazon_access_token_example', # String | MWS Auth Token. Access token authorizing the app to access resources on behalf of a user
  amazon_seller_id: 'amazon_seller_id_example', # String | Amazon Seller ID
  amazon_marketplaces_ids: 'amazon_marketplaces_ids_example', # String | Amazon Marketplace IDs comma separated string
  amazon_secret_key: 'amazon_secret_key_example', # String | Amazon Secret Key
  amazon_access_key_id: 'amazon_access_key_id_example', # String | Amazon Secret Key Id
  aspdotnetstorefront_api_user: 'aspdotnetstorefront_api_user_example', # String | It's a AspDotNetStorefront account for which API is available
  aspdotnetstorefront_api_pass: 'aspdotnetstorefront_api_pass_example', # String | AspDotNetStorefront API Password
  bigcommerceapi_admin_account: 'bigcommerceapi_admin_account_example', # String | It's a BigCommerce account for which API is enabled
  bigcommerceapi_api_path: 'bigcommerceapi_api_path_example', # String | BigCommerce API URL
  bigcommerceapi_api_key: 'bigcommerceapi_api_key_example', # String | Bigcommerce API Key
  bigcommerceapi_client_id: 'bigcommerceapi_client_id_example', # String | Client ID of the requesting app
  bigcommerceapi_access_token: 'bigcommerceapi_access_token_example', # String | Access token authorizing the app to access resources on behalf of a user
  bigcommerceapi_context: 'bigcommerceapi_context_example', # String | API Path section unique to the store
  demandware_client_id: 'demandware_client_id_example', # String | Demandware client id
  demandware_api_password: 'demandware_api_password_example', # String | Demandware api password
  demandware_user_name: 'demandware_user_name_example', # String | Demandware user name
  demandware_user_password: 'demandware_user_password_example', # String | Demandware user password
  demandware_env_type: 'production', # String | Demandware environment
  ebay_client_id: 'ebay_client_id_example', # String | Application ID (AppID).
  ebay_client_secret: 'ebay_client_secret_example', # String | Shared Secret from eBay application
  ebay_runame: 'ebay_runame_example', # String | The RuName value that eBay assigns to your application.
  ebay_access_token: 'ebay_access_token_example', # String | Used to authenticate API requests.
  ebay_refresh_token: 'ebay_refresh_token_example', # String | Used to renew the access token.
  ebay_environment: 'production', # String | eBay environment
  ebay_site_id: 0, # Integer | eBay global ID
  walmart_client_id: 'walmart_client_id_example', # String | Walmart client ID
  walmart_client_secret: 'walmart_client_secret_example', # String | Walmart client secret
  ecwid_acess_token: 'ecwid_acess_token_example', # String | Access token authorizing the app to access resources on behalf of a user
  ecwid_store_id: 'ecwid_store_id_example', # String | Store Id
  lightspeed_api_key: 'lightspeed_api_key_example', # String | LightSpeed api key
  lightspeed_api_secret: 'lightspeed_api_secret_example', # String | LightSpeed api secret
  etsy_keystring: 'etsy_keystring_example', # String | Etsy keystring
  etsy_shared_secret: 'etsy_shared_secret_example', # String | Etsy shared secret
  etsy_access_token: 'etsy_access_token_example', # String | Access token authorizing the app to access resources on behalf of a user
  etsy_token_secret: 'etsy_token_secret_example', # String | Secret token authorizing the app to access resources on behalf of a user
  neto_api_key: 'neto_api_key_example', # String | Neto API Key
  neto_api_username: 'neto_api_username_example', # String | Neto User Name
  shopify_api_key: 'shopify_api_key_example', # String | Shopify API Key
  shopify_api_password: 'shopify_api_password_example', # String | Shopify API Password
  shopify_shared_secret: 'shopify_shared_secret_example', # String | Shared secret
  shopify_access_token: 'shopify_access_token_example', # String | Access token authorizing the app to access resources on behalf of a user
  volusion_login: 'volusion_login_example', # String | It's a Volusion account for which API is enabled
  volusion_password: 'volusion_password_example', # String | Volusion API Password
  hybris_client_id: 'hybris_client_id_example', # String | Omni Commerce Connector Client ID
  hybris_client_secret: 'hybris_client_secret_example', # String | Omni Commerce Connector Client Secret
  hybris_username: 'hybris_username_example', # String | User Name
  hybris_password: 'hybris_password_example', # String | User password
  squarespace_api_key: 'squarespace_api_key_example' # String | Squarespace API Key
}

begin
  result = api_instance.account_cart_add(cart_id, store_url, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->account_cart_add: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cart_id** | **String**| Store’s identifier which you can get from cart_list method | 
 **store_url** | **String**| A web address of a store that you would like to connect to API2Cart | 
 **bridge_url** | **String**| This parameter allows to set up store with custom bridge url (also you must use store_root parameter if a bridge folder is not in the root folder of the store) | [optional] 
 **store_root** | **String**| Absolute path to the store root directory (used with \&quot;bridge_url\&quot; parameter) | [optional] 
 **store_key** | **String**| Set this parameter if bridge is already uploaded to store | [optional] 
 **validate_version** | **BOOLEAN**| Specify if api2cart should validate cart version | [optional] [default to false]
 **verify** | **BOOLEAN**| Enables or disables cart&#39;s verification | [optional] [default to true]
 **db_tables_prefix** | **String**| This parameter is deprecated for this method. Please, use this parameter in method account.config.update | [optional] 
 **ftp_host** | **String**| FTP connection host | [optional] 
 **ftp_user** | **String**| FTP User | [optional] 
 **ftp_password** | **String**| FTP Password | [optional] 
 **ftp_port** | **Integer**| FTP Port | [optional] [default to 21]
 **ftp_store_dir** | **String**| FTP Store dir | [optional] [default to /]
 **_3dcartapi_api_key** | **String**| 3DCart API Key | [optional] 
 **amazon_access_token** | **String**| MWS Auth Token. Access token authorizing the app to access resources on behalf of a user | [optional] 
 **amazon_seller_id** | **String**| Amazon Seller ID | [optional] 
 **amazon_marketplaces_ids** | **String**| Amazon Marketplace IDs comma separated string | [optional] 
 **amazon_secret_key** | **String**| Amazon Secret Key | [optional] 
 **amazon_access_key_id** | **String**| Amazon Secret Key Id | [optional] 
 **aspdotnetstorefront_api_user** | **String**| It&#39;s a AspDotNetStorefront account for which API is available | [optional] 
 **aspdotnetstorefront_api_pass** | **String**| AspDotNetStorefront API Password | [optional] 
 **bigcommerceapi_admin_account** | **String**| It&#39;s a BigCommerce account for which API is enabled | [optional] 
 **bigcommerceapi_api_path** | **String**| BigCommerce API URL | [optional] 
 **bigcommerceapi_api_key** | **String**| Bigcommerce API Key | [optional] 
 **bigcommerceapi_client_id** | **String**| Client ID of the requesting app | [optional] 
 **bigcommerceapi_access_token** | **String**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **bigcommerceapi_context** | **String**| API Path section unique to the store | [optional] 
 **demandware_client_id** | **String**| Demandware client id | [optional] 
 **demandware_api_password** | **String**| Demandware api password | [optional] 
 **demandware_user_name** | **String**| Demandware user name | [optional] 
 **demandware_user_password** | **String**| Demandware user password | [optional] 
 **demandware_env_type** | **String**| Demandware environment | [optional] [default to production]
 **ebay_client_id** | **String**| Application ID (AppID). | [optional] 
 **ebay_client_secret** | **String**| Shared Secret from eBay application | [optional] 
 **ebay_runame** | **String**| The RuName value that eBay assigns to your application. | [optional] 
 **ebay_access_token** | **String**| Used to authenticate API requests. | [optional] 
 **ebay_refresh_token** | **String**| Used to renew the access token. | [optional] 
 **ebay_environment** | **String**| eBay environment | [optional] [default to production]
 **ebay_site_id** | **Integer**| eBay global ID | [optional] [default to 0]
 **walmart_client_id** | **String**| Walmart client ID | [optional] 
 **walmart_client_secret** | **String**| Walmart client secret | [optional] 
 **ecwid_acess_token** | **String**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **ecwid_store_id** | **String**| Store Id | [optional] 
 **lightspeed_api_key** | **String**| LightSpeed api key | [optional] 
 **lightspeed_api_secret** | **String**| LightSpeed api secret | [optional] 
 **etsy_keystring** | **String**| Etsy keystring | [optional] 
 **etsy_shared_secret** | **String**| Etsy shared secret | [optional] 
 **etsy_access_token** | **String**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **etsy_token_secret** | **String**| Secret token authorizing the app to access resources on behalf of a user | [optional] 
 **neto_api_key** | **String**| Neto API Key | [optional] 
 **neto_api_username** | **String**| Neto User Name | [optional] 
 **shopify_api_key** | **String**| Shopify API Key | [optional] 
 **shopify_api_password** | **String**| Shopify API Password | [optional] 
 **shopify_shared_secret** | **String**| Shared secret | [optional] 
 **shopify_access_token** | **String**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **volusion_login** | **String**| It&#39;s a Volusion account for which API is enabled | [optional] 
 **volusion_password** | **String**| Volusion API Password | [optional] 
 **hybris_client_id** | **String**| Omni Commerce Connector Client ID | [optional] 
 **hybris_client_secret** | **String**| Omni Commerce Connector Client Secret | [optional] 
 **hybris_username** | **String**| User Name | [optional] 
 **hybris_password** | **String**| User password | [optional] 
 **squarespace_api_key** | **String**| Squarespace API Key | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **account_cart_list**
> InlineResponse20026 account_cart_list(opts)



Get list of carts.

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

api_instance = SwaggerClient::AccountApi.new

opts = { 
  params: 'force_all', # String | Set this parameter in order to choose which entity fields you want to retrieve
  exclude: 'exclude_example', # String | Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter `params` equal force_all
  request_from_date: 'request_from_date_example', # String | Retrieve entities from their creation date
  request_to_date: 'request_to_date_example', # String | Retrieve entities to their creation date
  store_url: 'store_url_example', # String | A web address of a store
  store_key: 'store_key_example' # String | Find store by store key
}

begin
  result = api_instance.account_cart_list(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->account_cart_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | **String**| Set this parameter in order to choose which entity fields you want to retrieve | [optional] [default to force_all]
 **exclude** | **String**| Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all | [optional] 
 **request_from_date** | **String**| Retrieve entities from their creation date | [optional] 
 **request_to_date** | **String**| Retrieve entities to their creation date | [optional] 
 **store_url** | **String**| A web address of a store | [optional] 
 **store_key** | **String**| Find store by store key | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **account_config_update**
> InlineResponse20027 account_config_update(opts)



Update configs in the API2Cart database.

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

api_instance = SwaggerClient::AccountApi.new

opts = { 
  new_store_key: 'new_store_key_example', # String | Update store key
  bridge_url: 'bridge_url_example', # String | This parameter allows to set up store with custom bridge url (also you must use store_root parameter if a bridge folder is not in the root folder of the store)
  store_root: 'store_root_example', # String | Absolute path to the store root directory (used with \"bridge_url\" parameter)
  db_tables_prefix: 'db_tables_prefix_example', # String | This parameter is deprecated for this method. Please, use this parameter in method account.config.update
  _3dcartapi_api_key: '_3dcartapi_api_key_example', # String | 3DCart API Key
  amazon_access_token: 'amazon_access_token_example', # String | MWS Auth Token. Access token authorizing the app to access resources on behalf of a user
  amazon_seller_id: 'amazon_seller_id_example', # String | Amazon Seller ID
  amazon_marketplaces_ids: 'amazon_marketplaces_ids_example', # String | Amazon Marketplace IDs comma separated string
  amazon_secret_key: 'amazon_secret_key_example', # String | Amazon Secret Key
  amazon_access_key_id: 'amazon_access_key_id_example', # String | Amazon Secret Key Id
  aspdotnetstorefront_api_user: 'aspdotnetstorefront_api_user_example', # String | It's a AspDotNetStorefront account for which API is available
  aspdotnetstorefront_api_pass: 'aspdotnetstorefront_api_pass_example', # String | AspDotNetStorefront API Password
  bigcommerceapi_admin_account: 'bigcommerceapi_admin_account_example', # String | It's a BigCommerce account for which API is enabled
  bigcommerceapi_api_path: 'bigcommerceapi_api_path_example', # String | BigCommerce API URL
  bigcommerceapi_api_key: 'bigcommerceapi_api_key_example', # String | Bigcommerce API Key
  bigcommerceapi_client_id: 'bigcommerceapi_client_id_example', # String | Client ID of the requesting app
  bigcommerceapi_access_token: 'bigcommerceapi_access_token_example', # String | Access token authorizing the app to access resources on behalf of a user
  bigcommerceapi_context: 'bigcommerceapi_context_example', # String | API Path section unique to the store
  demandware_client_id: 'demandware_client_id_example', # String | Demandware client id
  demandware_api_password: 'demandware_api_password_example', # String | Demandware api password
  demandware_user_name: 'demandware_user_name_example', # String | Demandware user name
  demandware_user_password: 'demandware_user_password_example', # String | Demandware user password
  demandware_env_type: 'demandware_env_type_example', # String | Demandware environment
  ebay_client_id: 'ebay_client_id_example', # String | Application ID (AppID).
  ebay_client_secret: 'ebay_client_secret_example', # String | Shared Secret from eBay application
  ebay_runame: 'ebay_runame_example', # String | The RuName value that eBay assigns to your application.
  ebay_access_token: 'ebay_access_token_example', # String | Used to authenticate API requests.
  ebay_refresh_token: 'ebay_refresh_token_example', # String | Used to renew the access token.
  ebay_environment: 'ebay_environment_example', # String | eBay environment
  ebay_site_id: 0, # Integer | eBay global ID
  ecwid_acess_token: 'ecwid_acess_token_example', # String | Access token authorizing the app to access resources on behalf of a user
  ecwid_store_id: 'ecwid_store_id_example', # String | Store Id
  etsy_keystring: 'etsy_keystring_example', # String | Etsy keystring
  etsy_shared_secret: 'etsy_shared_secret_example', # String | Etsy shared secret
  etsy_access_token: 'etsy_access_token_example', # String | Access token authorizing the app to access resources on behalf of a user
  etsy_token_secret: 'etsy_token_secret_example', # String | Secret token authorizing the app to access resources on behalf of a user
  neto_api_key: 'neto_api_key_example', # String | Neto API Key
  neto_api_username: 'neto_api_username_example', # String | Neto User Name
  shopify_api_key: 'shopify_api_key_example', # String | Shopify API Key
  shopify_api_password: 'shopify_api_password_example', # String | Shopify API Password
  shopify_shared_secret: 'shopify_shared_secret_example', # String | Shared secret
  shopify_access_token: 'shopify_access_token_example', # String | Access token authorizing the app to access resources on behalf of a user
  volusion_login: 'volusion_login_example', # String | It's a Volusion account for which API is enabled
  volusion_password: 'volusion_password_example', # String | Volusion API Password
  walmart_client_id: 'walmart_client_id_example', # String | Walmart client ID
  walmart_client_secret: 'walmart_client_secret_example', # String | Walmart client secret
  squarespace_api_key: 'squarespace_api_key_example', # String | Squarespace API Key
  hybris_client_id: 'hybris_client_id_example', # String | Omni Commerce Connector Client ID
  hybris_client_secret: 'hybris_client_secret_example', # String | Omni Commerce Connector Client Secret
  hybris_username: 'hybris_username_example', # String | User Name
  hybris_password: 'hybris_password_example', # String | User password
  lightspeed_api_key: 'lightspeed_api_key_example', # String | LightSpeed api key
  lightspeed_api_secret: 'lightspeed_api_secret_example' # String | LightSpeed api secret
}

begin
  result = api_instance.account_config_update(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->account_config_update: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_store_key** | **String**| Update store key | [optional] 
 **bridge_url** | **String**| This parameter allows to set up store with custom bridge url (also you must use store_root parameter if a bridge folder is not in the root folder of the store) | [optional] 
 **store_root** | **String**| Absolute path to the store root directory (used with \&quot;bridge_url\&quot; parameter) | [optional] 
 **db_tables_prefix** | **String**| This parameter is deprecated for this method. Please, use this parameter in method account.config.update | [optional] 
 **_3dcartapi_api_key** | **String**| 3DCart API Key | [optional] 
 **amazon_access_token** | **String**| MWS Auth Token. Access token authorizing the app to access resources on behalf of a user | [optional] 
 **amazon_seller_id** | **String**| Amazon Seller ID | [optional] 
 **amazon_marketplaces_ids** | **String**| Amazon Marketplace IDs comma separated string | [optional] 
 **amazon_secret_key** | **String**| Amazon Secret Key | [optional] 
 **amazon_access_key_id** | **String**| Amazon Secret Key Id | [optional] 
 **aspdotnetstorefront_api_user** | **String**| It&#39;s a AspDotNetStorefront account for which API is available | [optional] 
 **aspdotnetstorefront_api_pass** | **String**| AspDotNetStorefront API Password | [optional] 
 **bigcommerceapi_admin_account** | **String**| It&#39;s a BigCommerce account for which API is enabled | [optional] 
 **bigcommerceapi_api_path** | **String**| BigCommerce API URL | [optional] 
 **bigcommerceapi_api_key** | **String**| Bigcommerce API Key | [optional] 
 **bigcommerceapi_client_id** | **String**| Client ID of the requesting app | [optional] 
 **bigcommerceapi_access_token** | **String**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **bigcommerceapi_context** | **String**| API Path section unique to the store | [optional] 
 **demandware_client_id** | **String**| Demandware client id | [optional] 
 **demandware_api_password** | **String**| Demandware api password | [optional] 
 **demandware_user_name** | **String**| Demandware user name | [optional] 
 **demandware_user_password** | **String**| Demandware user password | [optional] 
 **demandware_env_type** | **String**| Demandware environment | [optional] 
 **ebay_client_id** | **String**| Application ID (AppID). | [optional] 
 **ebay_client_secret** | **String**| Shared Secret from eBay application | [optional] 
 **ebay_runame** | **String**| The RuName value that eBay assigns to your application. | [optional] 
 **ebay_access_token** | **String**| Used to authenticate API requests. | [optional] 
 **ebay_refresh_token** | **String**| Used to renew the access token. | [optional] 
 **ebay_environment** | **String**| eBay environment | [optional] 
 **ebay_site_id** | **Integer**| eBay global ID | [optional] [default to 0]
 **ecwid_acess_token** | **String**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **ecwid_store_id** | **String**| Store Id | [optional] 
 **etsy_keystring** | **String**| Etsy keystring | [optional] 
 **etsy_shared_secret** | **String**| Etsy shared secret | [optional] 
 **etsy_access_token** | **String**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **etsy_token_secret** | **String**| Secret token authorizing the app to access resources on behalf of a user | [optional] 
 **neto_api_key** | **String**| Neto API Key | [optional] 
 **neto_api_username** | **String**| Neto User Name | [optional] 
 **shopify_api_key** | **String**| Shopify API Key | [optional] 
 **shopify_api_password** | **String**| Shopify API Password | [optional] 
 **shopify_shared_secret** | **String**| Shared secret | [optional] 
 **shopify_access_token** | **String**| Access token authorizing the app to access resources on behalf of a user | [optional] 
 **volusion_login** | **String**| It&#39;s a Volusion account for which API is enabled | [optional] 
 **volusion_password** | **String**| Volusion API Password | [optional] 
 **walmart_client_id** | **String**| Walmart client ID | [optional] 
 **walmart_client_secret** | **String**| Walmart client secret | [optional] 
 **squarespace_api_key** | **String**| Squarespace API Key | [optional] 
 **hybris_client_id** | **String**| Omni Commerce Connector Client ID | [optional] 
 **hybris_client_secret** | **String**| Omni Commerce Connector Client Secret | [optional] 
 **hybris_username** | **String**| User Name | [optional] 
 **hybris_password** | **String**| User password | [optional] 
 **lightspeed_api_key** | **String**| LightSpeed api key | [optional] 
 **lightspeed_api_secret** | **String**| LightSpeed api secret | [optional] 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key), [store_key](../README.md#store_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **account_failed_webhooks**
> InlineResponse20028 account_failed_webhooks(opts)



List webhooks that was not delivered to the callback.

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

api_instance = SwaggerClient::AccountApi.new

opts = { 
  count: 10, # Integer | This parameter sets the entity amount that has to be retrieved. Max allowed count=250
  start: 0, # Integer | This parameter sets the number from which you want to get entities
  ids: 'ids_example' # String | List of сomma-separated webhook ids
}

begin
  result = api_instance.account_failed_webhooks(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->account_failed_webhooks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Integer**| This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 | [optional] [default to 10]
 **start** | **Integer**| This parameter sets the number from which you want to get entities | [optional] [default to 0]
 **ids** | **String**| List of сomma-separated webhook ids | [optional] 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **account_supported_platforms**
> InlineResponse20029 account_supported_platforms



Get list of supported platforms

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

api_instance = SwaggerClient::AccountApi.new

begin
  result = api_instance.account_supported_platforms
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling AccountApi->account_supported_platforms: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse20029**](InlineResponse20029.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



