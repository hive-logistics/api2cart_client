# SwaggerClient::OrderRefundAdd

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **String** | Defines the order for which the refund will be created. | [optional] 
**items** | [**Array&lt;OrderRefundAddItems&gt;**](OrderRefundAddItems.md) | Defines items in the order that will be refunded | [optional] 
**total_price** | **Float** | Defines order refund amount. | [optional] 
**shipping_price** | **Float** | Defines refund shipping amount. | [optional] 
**fee_price** | **Float** | Specifies refund&#39;s fee price | [optional] 
**message** | **String** | Refund reason, or some else message which assigned to refund. | [optional] 
**item_restock** | **BOOLEAN** | Boolean, whether or not to add the line items back to the store inventory. | [optional] [default to false]
**send_notifications** | **BOOLEAN** | Send notifications to customer after refund was created | [optional] [default to false]
**date** | **String** | Specifies an order creation date in format Y-m-d H:i:s | [optional] 
**is_online** | **BOOLEAN** | Indicates whether refund type is online | [optional] [default to false]


