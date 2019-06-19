# Facebook Ads Block

This repository contains views and explores used for the Facebook Ads Block dashboards. There are 5 dashboards that come with this block: Facebook Adwords Overview, Facebook Adwords - Clicks, Facebook Adwords - Conversions, Facebook Adwords - Impressions and Facebook Adwords - Spend. Each of the dashboards provides in-depth analysis of ad/campaign performance over a given timeframe.

This project is remotely included through the Facebook Ads Block Config project. 
To pull updates from this project, update the `ref:` parameter in the manifest file. It should point to the latest commit in [block-facebook-ads](https://github.com/looker/block-facebook-ads/commits/master).

The LookML constants are used to specify the name of the schema and connection. They are defined in the Facebook Ads Block Config project.
#### Account Structure

ad.view:
 - ad_adapter
   - external_customer_id
   - campaign_id
   - ad_group_id
   - creative_id
   - creative
   - status_active

ad_group.view:
 - ad_group_adapter
   - external_customer_id
   - campaign_id
   - ad_group_id
   - ad_group_name
   - status_active

campaign.view:
 - campaign_adapter
   - external_customer_id
   - campaign_id
   - campaign_name
   - status_active
   - budget_id
   - amount

customer.view:
 - customer_adapter
   - external_customer_id

#### Targeting Criteria
geo.view
 - geotargeting
   - state
   - country_code
   - name
   - postal_code

keyword.view
 - keyword_adapter
   - external_customer_id
   - campaign_id
   - ad_group_id
   - criterion_id
   - criteria
   - status_active
   - bidding_strategy_type

#### Reports

ad_impressions.view
 - _date
 - ad_network_type
 - device_type
 - cost
 - impressions
 - interactions
 - clicks
 - conversions
 - conversionvalue
 - averageposition

Account Stats
 - ad_impressions_adapter
 - ad_impressions_hour_adapter
   - hour_of_day

Campaign Stats
 - ad_impressions_campaign_adapter
 - ad_impressions_campaign_hour_adapter
   - hour_of_day

Ad Group Stats
 - ad_impressions_ad_group_adapter
 - ad_impressions_ad_group_hour_adapter
   - hour_of_day

Keyword Stats
 - ad_impressions_keyword_adapter

Ad Stats
 - ad_impressions_ad_adapter

Targeting Reports
 - ad_impressions * [age_range, audience, gender, geo, parental_status, video]


### Block Info

This Block is modeled on the schema from Fivetrans's [Facebook Ads ETL](https://fivetran.com/directory/facebook-ads-insights).

The schema documentation for Facebook Ads can be found in [Facebook's docs](https://developers.facebook.com/docs/marketing-api/insights/breakdowns).
