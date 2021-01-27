project_name: "block-facebook-ads"


# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "d0405a8ef76925449d722b11103f419b3d40e37b"
}

# LookML to map the ETL and data warehouse for Google Ads
remote_dependency: app-marketing-facebook-ads-adapter {
  url: "git://github.com/looker/app-marketing-facebook-ads-fivetran-bigquery"
  ref: "6c90f79e394553f917dc59aa89cc1cd0f9725e23"
}

remote_dependency: app-marketing-facebook-ads {
  url: "git://github.com/looker/app-marketing-facebook-ads"
  ref: "e1d97c7e8c170a4039f09bccf2c08215af6f6c49"
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
