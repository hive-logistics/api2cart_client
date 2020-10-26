# SwaggerClient::ProductVariantAdd

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **String** | Defines product&#39;s id where the variant has to be added | [optional] 
**name** | **String** | Defines variant&#39;s name that has to be added | [optional] 
**model** | **String** | Specifies variant&#39;s model that has to be added | 
**barcode** | **String** | A barcode is a unique code composed of numbers used as a product identifier. | [optional] 
**price** | **Float** | Defines new product&#39;s variant price | [optional] 
**attributes** | [**Array&lt;ProductVariantAddAttributes&gt;**](ProductVariantAddAttributes.md) | Defines variant&#39;s attributes list | [optional] 
**description** | **String** | Specifies variant&#39;s description | [optional] 
**special_price** | **Float** | Specifies variant&#39;s model that has to be added | [optional] 
**sprice_create** | **String** | Defines the date of special price creation | [optional] 
**sprice_modified** | **String** | Defines the date of special price modification | [optional] 
**sprice_expire** | **String** | Defines the term of special price offer duration | [optional] 
**available_for_view** | **BOOLEAN** | Specifies the set of visible/invisible product&#39;s variants for users | [optional] [default to true]
**available_for_sale** | **BOOLEAN** | Specifies the set of visible/invisible product&#39;s variants for sale | [optional] [default to true]
**weight** | **Float** | Weight | [optional] 
**weight_unit** | **String** | Weight Unit | [optional] 
**short_description** | **String** | Defines short description | [optional] 
**warehouse_id** | **String** | This parameter is used for selecting a warehouse where you need to set/modify a product quantity. | [optional] 
**quantity** | **Float** | Defines product variant&#39;s quantity that has to be added | [optional] 
**created_at** | **String** | Defines the date of entity creation | [optional] 
**manufacturer** | **String** | Specifies the product variant&#39;s manufacturer | [optional] 
**tax_class_id** | **Integer** | Defines tax classes where entity has to be added | [optional] 
**meta_title** | **String** | Defines unique meta title for each entity | [optional] 
**meta_keywords** | **String** | Defines unique meta keywords for each entity | [optional] 
**meta_description** | **String** | Defines unique meta description of a entity | [optional] 
**url** | **String** | Defines unique product variant&#39;s URL | [optional] 
**store_id** | **String** | Add variants specified by store id | [optional] 
**lang_id** | **String** | Language id | [optional] 
**clear_cache** | **BOOLEAN** | Is cache clear required | [optional] [default to true]
**taxable** | **BOOLEAN** | Specifies whether a tax is charged | [optional] [default to true]


