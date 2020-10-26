# SwaggerClient::OrderAdd

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **String** | Defines the order id if it is supported by the cart | [optional] 
**store_id** | **String** | Defines store id where the order should be assigned | [optional] 
**channel_id** | **String** | Channel ID | [optional] 
**order_status** | **String** | Defines order status. | 
**send_notifications** | **BOOLEAN** | Send notifications to customer after order was created | [optional] [default to false]
**send_admin_notifications** | **BOOLEAN** | Notify admin when new order was created. | [optional] [default to false]
**customer_email** | **String** | Defines the customer specified by email for whom order has to be created | 
**bill_first_name** | **String** | Specifies billing first name | 
**bill_last_name** | **String** | Specifies billing last name | 
**bill_address_1** | **String** | Specifies first billing address | 
**bill_city** | **String** | Specifies billing city | 
**bill_postcode** | **String** | Specifies billing postcode | 
**bill_state** | **String** | Specifies billing state code | 
**bill_country** | **String** | Specifies billing country code | 
**shipp_first_name** | **String** | Specifies shipping first name | [optional] 
**shipp_last_name** | **String** | Specifies shipping last name | [optional] 
**shipp_address_1** | **String** | Specifies first shipping address | [optional] 
**shipp_city** | **String** | Specifies shipping city | [optional] 
**shipp_postcode** | **String** | Specifies shipping postcode | [optional] 
**shipp_state** | **String** | Specifies shipping state code | [optional] 
**shipp_country** | **String** | Specifies shipping country code | [optional] 
**total_price** | **Float** | Defines order&#39;s total price | [optional] 
**date** | **String** | Specifies an order creation date in format Y-m-d H:i:s | [optional] 
**order_payment_method** | **String** | Defines order payment method.&lt;br/&gt;Setting order_payment_method on Shopify will also change financial_status field value to &#39;paid&#39; | [optional] 
**order_shipping_method** | **String** | Defines order shipping method | [optional] 
**currency** | **String** | Currency code of order | [optional] 
**bill_address_2** | **String** | Specifies second billing address | [optional] 
**bill_company** | **String** | Specifies billing company | [optional] 
**bill_phone** | **String** | Specifies billing phone | [optional] 
**bill_fax** | **String** | Specifies billing fax | [optional] 
**comment** | **String** | Specifies order comment | [optional] 
**admin_comment** | **String** | Specifies admin&#39;s order comment | [optional] 
**admin_private_comment** | **String** | Specifies private admin&#39;s order comment | [optional] 
**customer_first_name** | **String** | Specifies customer&#39;s first name | [optional] 
**customer_last_name** | **String** | Specifies customer’s last name | [optional] 
**customer_birthday** | **String** | Specifies customer’s birthday | [optional] 
**customer_fax** | **String** | Specifies customer’s fax | [optional] 
**customer_phone** | **String** | Specifies customer’s phone | [optional] 
**shipp_address_2** | **String** | Specifies second address line of a shipping street address | [optional] 
**shipp_company** | **String** | Specifies shipping company | [optional] 
**shipp_phone** | **String** | Specifies shipping phone | [optional] 
**shipp_fax** | **String** | Specifies shipping fax | [optional] 
**date_modified** | **String** | Specifies order&#39;s  modification date | [optional] 
**date_finished** | **String** | Specifies order&#39;s  finished date | [optional] 
**subtotal_price** | **Float** | Total price of all ordered products multiplied by their number, excluding tax, shipping price and discounts | [optional] 
**tax_price** | **Float** | The value of tax cost for order | [optional] 
**shipping_price** | **Float** | Specifies order&#39;s shipping price | [optional] 
**shipping_tax** | **Float** | Specifies order&#39;s shipping price tax | [optional] 
**discount** | **Float** | Specifies order&#39;s discount | [optional] 
**coupon_discount** | **Float** | Specifies order&#39;s coupon discount | [optional] 
**gift_certificate_discount** | **Float** | Discounts for order with gift certificates | [optional] 
**fulfillment_status** | **String** | Create order with fulfillment status | [optional] 
**financial_status** | **String** | Create order with financial status | [optional] 
**total_paid** | **Float** | Defines total paid amount for the order | [optional] 
**external_source** | **String** | Identifying the system used to generate the order | [optional] 
**tags** | **String** | Order tags | [optional] 
**inventory_behaviour** | **String** | The behaviour to use when updating inventory.&lt;hr&gt;&lt;div style&#x3D;\&quot;font-style:normal\&quot;&gt;Values description:&lt;div style&#x3D;\&quot;margin-left: 2%; padding-top: 2%\&quot;&gt;&lt;div style&#x3D;\&quot;font-size:85%\&quot;&gt;&lt;b&gt;bypass&lt;/b&gt; &#x3D; Do not claim inventory &lt;/br&gt;&lt;/br&gt;&lt;b&gt;decrement_ignoring_policy&lt;/b&gt; &#x3D; Ignore the product&#39;s &lt;/br&gt; inventory policy and claim amounts&lt;/br&gt;&lt;/br&gt;&lt;b&gt;decrement_obeying_policy&lt;/b&gt; &#x3D;  Obey the product&#39;s &lt;/br&gt; inventory policy.&lt;/br&gt;&lt;/br&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt; | [optional] [default to &#39;bypass&#39;]
**create_invoice** | **BOOLEAN** | Defines whether the invoice is created automatically along with the order | [optional] [default to false]
**note_attributes** | [**Array&lt;OrderAddNoteAttributes&gt;**](OrderAddNoteAttributes.md) | Defines note attributes | [optional] 
**order_item** | [**Array&lt;OrderAddOrderItem&gt;**](OrderAddOrderItem.md) |  | 


