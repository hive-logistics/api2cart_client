# SwaggerClient::CartCouponAdd

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | Store Id | [optional] 
**code** | **String** | Coupon code | 
**name** | **String** | Coupon name | [optional] 
**codes** | **Array&lt;String&gt;** | Entity codes | [optional] 
**action_type** | **String** | Coupon discount type | 
**action_apply_to** | **String** | Defines where discount should be applied | 
**action_scope** | **String** | Specify how discount should be applied. If scope&#x3D;matching_items, then discount will be applied to each of the items that match action conditions. Scope order means that discount will be applied once. | 
**action_amount** | **Float** | Defines the discount amount value. | 
**date_start** | **String** | Defines when discount code will be available. | [optional] [default to &#39;now&#39;]
**date_end** | **String** | Defines when discount code will be expired. | [optional] 
**usage_limit** | **Integer** | Usage limit for coupon. | [optional] 
**usage_limit_per_customer** | **Integer** | Usage limit per customer. | [optional] 
**action_condition_entity** | **String** | Defines entity for action condition. | [optional] 
**action_condition_key** | **String** | Defines entity attribute code for action condition. | [optional] 
**action_condition_operator** | **String** | Defines condition operator. | [optional] 
**action_condition_value** | **String** | Defines condition attribute value/s. Can be comma separated string. | [optional] 


