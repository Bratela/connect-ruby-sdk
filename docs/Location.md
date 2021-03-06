# SquareConnect::Location

### Description

Represents one of a business's locations.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The location&#39;s unique ID. | [optional] 
**name** | **String** | The location&#39;s name. Location names are set by the location owner and displayed in the dashboard as the location&#39;s nickname | [optional] 
**address** | [**Address**](Address.md) | The location&#39;s physical address. | [optional] 
**timezone** | **String** | The [IANA Timezone Database](https://www.iana.org/time-zones) identifier for the location&#39;s timezone. | [optional] 
**capabilities** | **Array&lt;String&gt;** | Indicates which Square features are enabled for the location.  See [LocationCapability](#type-locationcapability) for possible values. | [optional] 
**status** | **String** | The location&#39;s status  See [LocationStatus](#type-locationstatus) for possible values. | [optional] 
**created_at** | **String** | The time when the location was created, in RFC 3339 format. | [optional] 
**merchant_id** | **String** | The identifier of the merchant that owns the location. | [optional] 
**country** | **String** | The location&#39;s country, in ISO 3166-1-alpha-2 format.  See [Country](#type-country) for possible values. | [optional] 
**language_code** | **String** | The language associated with the location in [BCP 47 format](https://tools.ietf.org/html/bcp47#appendix-A). | [optional] 
**currency** | **String** | The currency used for all transactions at this location, specified in __ISO 4217 format__. For example, the currency for a location processing transactions in the United States is &#39;USD&#39;.  See [Currency](#type-currency) for possible values. | [optional] 
**phone_number** | **String** | The location&#39;s phone_number. | [optional] 
**business_name** | **String** | The location&#39;s business_name which is shown to its customers. For example, this is the name printed on its customer&#39;s receipts. | [optional] 


