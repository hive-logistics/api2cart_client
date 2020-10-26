# SwaggerClient::CustomerAdd

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Defines customer&#39;s email | 
**first_name** | **String** | Defines customer&#39;s first name | 
**last_name** | **String** | Defines customer&#39;s last name | 
**password** | **String** | Defines customer&#39;s unique password | [optional] 
**group** | **String** | Defines the group where the customer | [optional] 
**created_time** | **String** | Entity&#39;s date creation | [optional] 
**modified_time** | **String** | Entity&#39;s date modification | [optional] 
**login** | **String** | Specifies customer&#39;s login name | [optional] 
**last_login** | **String** | Defines customer&#39;s last login time | [optional] 
**birth_day** | **String** | Defines customer&#39;s birthday | [optional] 
**status** | **String** | Defines customer&#39;s status | [optional] [default to &#39;enabled&#39;]
**news_letter_subscription** | **BOOLEAN** | Defines whether the newsletter subscription is available for the user | [optional] [default to false]
**gender** | **String** | Defines customer&#39;s gender | [optional] 
**website** | **String** | Link to customer website | [optional] 
**fax** | **String** | Defines customer&#39;s fax | [optional] 
**company** | **String** | Defines customer&#39;s company | [optional] 
**phone** | **String** | Defines customer&#39;s phone number | [optional] 
**address** | [**Array&lt;CustomerAddAddress&gt;**](CustomerAddAddress.md) |  | [optional] 


