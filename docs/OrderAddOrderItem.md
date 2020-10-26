# SwaggerClient::OrderAddOrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_item_id** | **String** | Defines orders specified by order item id | 
**order_item_name** | **String** | Defines orders specified by order item name | 
**order_item_model** | **String** | Defines orders specified by order item model | [optional] 
**order_item_price** | **Float** | Defines orders specified by order item price | 
**order_item_quantity** | **Integer** | Defines orders specified by order item quantity | 
**order_item_variant_id** | **String** | Ordered product variant. Where x is order item ID | [optional] 
**order_item_tax** | **Float** | Percentage of tax for product order | [optional] 
**order_item_parent** | **Integer** | Index of the parent grouped/bundle product | [optional] 
**order_item_parent_option_name** | **String** | Option name of the parent grouped/bundle product | [optional] 
**order_item_allow_refund_items_separately** | **BOOLEAN** | Indicates whether subitems of the grouped/bundle product can be refunded separately | [optional] 
**order_item_allow_ship_items_separately** | **BOOLEAN** | Indicates whether subitems of the grouped/bundle product can be shipped separately | [optional] 
**order_item_price_includes_tax** | **BOOLEAN** | Defines if item price includes tax | [optional] [default to false]
**order_item_option** | [**Array&lt;OrderAddOrderItemOption&gt;**](OrderAddOrderItemOption.md) |  | [optional] 
**order_item_property** | [**Array&lt;OrderAddOrderItemProperty&gt;**](OrderAddOrderItemProperty.md) |  | [optional] 


