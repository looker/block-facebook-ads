# Facebook Ads Block

This repository contains views and explores used for the Facebook Ads Block dashboards. There are 5 dashboards that come with this block: Facebook Overview, Facebook Ads - Clicks, Facebook Ads - Conversions, Facebook Ads - Impressions and Facebook Ads - Spend. Each of the dashboards provides in-depth analysis of ad/campaign performance over a given timeframe.

This project is remotely included through the Facebook Ads Block Config project.
To pull updates from this project, update the `ref:` parameter in the manifest file. It should point to the latest commit in [block-facebook-ads](https://github.com/looker/block-facebook-ads/commits/master).

The LookML constants are used to specify the name of the schema and connection. They are defined in the Facebook Ads Block Config project.


### Block Info

This Block is modeled on the schema from Fivetrans's [Facebook Ads ETL](https://fivetran.com/directory/facebook-ads-insights).

The schema documentation for Facebook Ads can be found in [Facebook's docs](https://developers.facebook.com/docs/marketing-api/insights/breakdowns).
