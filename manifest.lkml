project_name: "block-facebook-ads"


# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "d0405a8ef76925449d722b11103f419b3d40e37b"
}

# LookML to map the ETL and data warehouse for Google Ads
remote_dependency: app-marketing-facebook-ads-adapter {
  url: "git://github.com/looker/app-marketing-facebook-ads-fivetran-bigquery"
  ref: "5bd84861f92a6cfad230cfbc9c12d2af928d597d"
}

remote_dependency: app-marketing-facebook-ads {
  url: "git://github.com/looker/app-marketing-facebook-ads"
  ref: "d2fa65f40a588111a03c9fde5ed0412913cabcb8"
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
