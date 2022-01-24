# Facebook Ads Block
This block contains views and explores used for bringing Facebook Ads data to your Looker instance.
The provided dashboard template provides an overview analysis of ad/campaign performance over a given timeframe.

This Block is modeled on the schema from Fivetrans's [Facebook Ads ETL](https://fivetran.com/directory/facebook-ads-insights).
The schema documentation for Facebook Ads can be found in [Facebook's docs](https://developers.facebook.com/docs/marketing-api/insights/breakdowns).

## Installation ##
This block is installed via the Looker Marketplace. For more information about the Looker Marketplace, please visit this [link](https://docs.looker.com/data-modeling/marketplace).

#### Constants ####
During installation you will provide two values to populate the following constants:
* Connection Name - the Looker connection with access to and permission to retrieve data from your Facebook Ads tables.
* Facebook Schema - the schema name for your Facebook Ads data.

#### Customization ####
- This block uses Refinements to allow for modification or extension of the LookML content. For more information on using refinements to customize marketplace blocks, please see [this documentation](https://docs.looker.com/data-modeling/marketplace/customize-blocks).
