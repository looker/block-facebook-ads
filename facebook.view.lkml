include: "//@{CONFIG_PROJECT_NAME}/*.view"

# Facebook Ads configuration for Facebook Ads Block by Looker

include: "//app-marketing-facebook-ads-adapter/*.view"
include: "//app-marketing-facebook-ads/*.view"
include: "//app-marketing-common/*.view"

# Customize measure definitions in this view. Changes will be reflected across all projects.
view: ad_metrics_base {
  extends: [ad_metrics_base_config]
}

view: fb_adcreative {
  extends: [fb_adcreative_config]
}

view: fb_ad {
  extends: [fb_ad_config]
}

view: fb_adset {
  extends: [fb_adset_config]
}

view: fb_campaign {
  extends: [fb_campaign_config]
}

view: fb_account {
  extends: [fb_account_config]
}

view: fb_ad_metrics_base {
  extends: [fb_ad_metrics_base_config]
}

view: fb_ad_impressions {
  extends: [fb_ad_impressions_config]
}

view: fb_ad_impressions_age_and_gender {
  extends: [fb_ad_impressions_age_and_gender_config]
}

view: fb_ad_impressions_geo {
  extends: [fb_ad_impressions_geo_config]
}

view: fb_ad_impressions_platform_and_device {
  extends: [fb_ad_impressions_platform_and_device_config]
}

view: fb_period_comparison {
  extends: [fb_period_comparison_config]
}
