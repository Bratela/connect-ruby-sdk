# SquareConnect::V1PageCell

### Description

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page_id** | **String** | The unique identifier of the page the cell is included on. | [optional] 
**row** | **Integer** | The row of the cell. Always an integer between 0 and 4, inclusive. | [optional] 
**column** | **Integer** | The column of the cell. Always an integer between 0 and 4, inclusive. | [optional] 
**object_type** | **Array&lt;String&gt;** | The type of entity represented in the cell (ITEM, DISCOUNT, CATEGORY, or PLACEHOLDER). | [optional] 
**object_id** | **String** | The unique identifier of the entity represented in the cell. Not present for cells with an object_type of PLACEHOLDER. | [optional] 
**placeholder_type** | **Array&lt;String&gt;** | For a cell with an object_type of PLACEHOLDER, this value indicates the cell&#39;s special behavior. | [optional] 


