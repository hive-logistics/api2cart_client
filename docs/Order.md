# SwaggerClient::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**order_id** | **String** |  | [optional] 
**basket_id** | **String** |  | [optional] 
**channel_id** | **String** |  | [optional] 
**customer** | [**OrderCustomer**](OrderCustomer.md) |  | [optional] 
**create_at** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**currency** | [**Currency**](Currency.md) |  | [optional] 
**shipping_address** | [**CustomerAddress**](CustomerAddress.md) |  | [optional] 
**billing_address** | [**CustomerAddress**](CustomerAddress.md) |  | [optional] 
**payment_method** | [**OrderPaymentMethod**](OrderPaymentMethod.md) |  | [optional] 
**shipping_method** | [**OrderShippingMethod**](OrderShippingMethod.md) |  | [optional] 
**shipping_methods** | [**Array&lt;OrderShippingMethod&gt;**](OrderShippingMethod.md) |  | [optional] 
**status** | [**OrderStatus**](OrderStatus.md) |  | [optional] 
**totals** | [**OrderTotals**](OrderTotals.md) |  | [optional] 
**total** | [**OrderTotal**](OrderTotal.md) |  | [optional] 
**discounts** | [**Array&lt;OrderTotalsNewDiscount&gt;**](OrderTotalsNewDiscount.md) |  | [optional] 
**order_products** | [**Array&lt;OrderItem&gt;**](OrderItem.md) |  | [optional] 
**bundles** | [**Array&lt;OrderItem&gt;**](OrderItem.md) |  | [optional] 
**modified_at** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**finished_time** | [**A2CDateTime**](A2CDateTime.md) |  | [optional] 
**comment** | **String** |  | [optional] 
**store_id** | **String** |  | [optional] 
**warehouses_ids** | **Array&lt;String&gt;** |  | [optional] 
**refunds** | [**Array&lt;OrderRefund&gt;**](OrderRefund.md) |  | [optional] 
**additional_fields** | **Object** |  | [optional] 
**custom_fields** | **Object** |  | [optional] 


