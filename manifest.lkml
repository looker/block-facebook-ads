project_name: "block-facebook-ads"


# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "d0405a8ef76925449d722b11103f419b3d40e37b"
}

# LookML to map the ETL and data warehouse for Google Ads
remote_dependency: app-marketing-facebook-ads-adapter {
  url: "git://github.com/looker/app-marketing-facebook-ads-fivetran-bigquery"
  ref: "697e29f6554e6124509ce43a89ab580c993049ac"
}

remote_dependency: app-marketing-facebook-ads {
  url: "git://github.com/looker/app-marketing-facebook-ads"
  ref: "ec5f6e1211e810aba4a100867907766b1d732f60"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
  override_constant: FACEBOOK_SCHEMA {
    value: "@{FACEBOOK_SCHEMA}"
  }
}

constant: CONFIG_PROJECT_NAME {
  value: "block-facebook-ads-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "looker_app_2"
  export: override_required
}

constant: FACEBOOK_SCHEMA {
  value: "facebook_ads_generated"
  export: override_required
}
