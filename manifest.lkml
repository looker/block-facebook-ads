project_name: "block-facebook-ads"


# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "3d8fe8aa069aecfb55b245599cf2f7a9ed1b8f36"
}

# LookML to map the ETL and data warehouse for Google Ads
remote_dependency: app-marketing-facebook-ads-adapter {
  url: "git://github.com/looker/app-marketing-facebook-ads-fivetran-bigquery"
  ref: "2d5530473840c9c52056c83871b0149b716fd0f3"
}

remote_dependency: app-marketing-facebook-ads {
  url: "git://github.com/looker/app-marketing-facebook-ads"
  ref: "f1d8d0bdf8cba99c852fae5db029d9dd242556b5"
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
  value: "looker_application"
  export: override_required
}

constant: FACEBOOK_SCHEMA {
  value: "facebook_ads_for_looker"
  export: override_required
}
