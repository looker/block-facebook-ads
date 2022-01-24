view: facebook_ad_details {
derived_table: {sql:SELECT AD_ID,AD_NAME,ADSET_NAME,CAMPAIGN_NAME FROM @{FACEBOOK_SCHEMA}."AD_INSIGHTS"
           GROUP BY 1,2,3,4;; }

dimension: ad_id {}
dimension:ad_name {}
dimension:adset_name{}
dimension:campaign_name{}

}
