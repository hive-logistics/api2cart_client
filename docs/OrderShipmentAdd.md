# SwaggerClient::OrderShipmentAdd

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **String** | Defines the order for which the shipment will be created | [optional] 
**store_id** | **String** | Store Id | [optional] 
**warehouse_id** | **String** | This parameter is used for selecting a warehouse where you need to set/modify a product quantity. | [optional] 
**shipment_provider** | **String** | Defines company name that provide tracking of shipment | [optional] 
**items** | [**Array&lt;OrderShipmentAddItems&gt;**](OrderShipmentAddItems.md) | Defines items in the order that will be shipped | [optional] 
**send_notifications** | **BOOLEAN** | Send notifications to customer after shipment was created | [optional] [default to false]
**tracking_numbers** | [**Array&lt;OrderShipmentAddTrackingNumbers&gt;**](OrderShipmentAddTrackingNumbers.md) | Defines shipment&#39;s tracking numbers that have to be added&lt;/br&gt; How set tracking numbers to appropriate carrier:&lt;ul&gt;&lt;li&gt;tracking_numbers[]&#x3D;a2c.demo1,a2c.demo2 - set default carrier&lt;/li&gt;&lt;li&gt;tracking_numbers[&lt;b&gt;carrier_id&lt;/b&gt;]&#x3D;a2c.demo - set appropriate carrier&lt;/li&gt;&lt;/ul&gt;To get the list of carriers IDs that are available in your store, use the &lt;a href &#x3D; \&quot;http://docs.api2cart.com/cart-info\&quot;&gt;cart.info&lt;/a &gt; method | [optional] 
**adjust_stock** | **BOOLEAN** | This parameter is used for adjust stock. | [optional] [default to false]
**enable_cache** | **BOOLEAN** | If the value is &#39;true&#39; and order exist in our cache, we will use order.info from cache to prepare shipment items. | [optional] [default to false]
**tracking_link** | **String** | Defines custom tracking link | [optional] 


