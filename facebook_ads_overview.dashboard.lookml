- dashboard: facebook_ads_overview
  title: Facebook Ads - Overview
  extends: block_facebook_ads_base
  elements:
  - title: Click Rate
    name: Click Rate
    model: block_facebook_ads
    explore: fb_period_fact
    type: single_value
    fields:
    - fact.date_period
    - fact.average_click_rate
    - last_fact.average_click_rate
    sorts:
    - fact.date_period
    limit: 1
    column_limit: 50
    dynamic_fields:
    - table_calculation: click_through_rate_percent_change
      label: Click Through Rate Percent Change
      expression: "(${fact.average_click_rate} - ${last_fact.average_click_rate})\
        \ / ${last_fact.average_click_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - last_fact.average_click_rate
    series_types: {}
    colors:
    - "#4bb86a"
    - "#8fe4a7"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#7869df"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    single_value_title: Click Rate
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 13
    col: 9
    width: 6
    height: 3
  - title: Cost Per Click
    name: Cost Per Click
    model: block_facebook_ads
    explore: fb_period_fact
    type: single_value
    fields:
    - fact.date_period
    - fact.average_cost_per_click
    - last_fact.average_cost_per_click
    sorts:
    - fact.date_period
    limit: 1
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_per_click_percent_change
      label: Cost Per Click Percent Change
      expression: "(${fact.average_cost_per_click} - ${last_fact.average_cost_per_click})\
        \ / ${last_fact.average_cost_per_click}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - last_fact.average_cost_per_click
    series_types: {}
    colors:
    - "#4bb86a"
    - "#8fe4a7"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#7869df"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    single_value_title: Per Click
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 16
    col: 9
    width: 6
    height: 3
  - title: Click Trend
    name: Click Trend
    model: block_facebook_ads
    explore: fb_period_fact
    type: looker_column
    fields:
    - fact.date_date
    - fact.average_cost_per_click
    - fact.average_click_rate
    fill_fields:
    - fact.date_date
    sorts:
    - fact.date_date desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: time
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    hidden_fields: []
    series_types:
      fact.average_cost_per_click: line
      fact.average_click_rate: line
      fact.average_conversion_rate: line
      fact.average_cost_per_conversion: line
      fact.total_conversions: line
    colors:
    - "#d06180"
    - "#dc9d4f"
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    hidden_series:
    - fact.average_click_rate
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 1283
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 1271
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 1302
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 1290
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        axisId: fact.average_cost_per_conversion
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 1321
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 1309
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 1340
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 1328
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 1359
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 1347
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 13
    col: 15
    width: 9
    height: 6
  - title: Campaigns
    name: Campaigns
    model: block_facebook_ads
    explore: fb_period_fact
    type: table
    fields:
    - fact.total_cost
    - fact.total_conversions
    - fact.average_cost_per_conversion
    - fact.average_conversion_rate
    - campaign.name
    - fact.average_cost_per_click
    - fact.average_click_rate
    sorts:
    - fact.total_cost desc
    limit: 10
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    hidden_fields: []
    series_types: {}
    colors:
    - "#d06180"
    - "#a4a6a9"
    - "#7869df"
    - "#6e98f9"
    - "#dc9d4f"
    - "#4bb86a"
    - "#8ac8ca"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    hidden_series: []
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 922
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 910
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 941
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 929
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        axisId: fact.average_cost_per_conversion
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 960
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 948
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 979
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 967
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 998
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 986
    column_spacing_ratio:
    column_group_spacing_ratio:
    show_dropoff: true
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 19
    col: 0
    width: 24
    height: 6
  - title: Spend
    name: Spend
    model: block_facebook_ads
    explore: fb_period_fact
    type: single_value
    fields:
    - fact.total_cost
    - last_fact.total_cost
    - fact.date_period
    sorts:
    - fact.date_period
    limit: 1
    column_limit: 50
    dynamic_fields:
    - table_calculation: total_cost_change
      label: Total Cost Change
      expression: "${fact.total_cost} - ${last_fact.total_cost}"
      value_format:
      value_format_name: usd_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - last_fact.total_cost
    series_types: {}
    colors:
    - "#4bb86a"
    - "#8fe4a7"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#7869df"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 0
    width: 9
    height: 3
  - title: Conversions
    name: Conversions
    model: block_facebook_ads
    explore: fb_period_fact
    type: single_value
    fields:
    - fact.date_period
    - fact.total_conversions
    - last_fact.total_conversions
    sorts:
    - fact.date_period
    limit: 1
    column_limit: 50
    dynamic_fields:
    - table_calculation: total_conversions_change
      label: Total Conversions Change
      expression: "${fact.total_conversions} - ${last_fact.total_conversions}"
      value_format:
      value_format_name: decimal_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - last_fact.total_conversions
    series_types: {}
    colors:
    - "#4bb86a"
    - "#8fe4a7"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#7869df"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 9
    width: 5
    height: 3
  - title: Cost Per Conversion
    name: Cost Per Conversion
    model: block_facebook_ads
    explore: fb_period_fact
    type: single_value
    fields:
    - fact.date_period
    - fact.average_cost_per_conversion
    - last_fact.average_cost_per_conversion
    sorts:
    - fact.date_period
    limit: 1
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_per_conversion_percent_change
      label: Cost Per Conversion Percent Change
      expression: "(${fact.average_cost_per_conversion} - ${last_fact.average_cost_per_conversion})\
        \ / ${last_fact.average_cost_per_conversion}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - last_fact.average_cost_per_conversion
    series_types: {}
    colors:
    - "#4bb86a"
    - "#8fe4a7"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#7869df"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    single_value_title: Per Conversion
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 14
    width: 5
    height: 3
  - title: Conversion Rate
    name: Conversion Rate
    model: block_facebook_ads
    explore: fb_period_fact
    type: single_value
    fields:
    - fact.date_period
    - fact.average_conversion_rate
    - last_fact.average_conversion_rate
    sorts:
    - fact.date_period
    limit: 1
    column_limit: 50
    dynamic_fields:
    - table_calculation: conversion_rate_percent_change
      label: Conversion Rate Percent Change
      expression: "(${fact.average_conversion_rate} - ${last_fact.average_conversion_rate})\
        \ / ${last_fact.average_conversion_rate}"
      value_format:
      value_format_name: percent_0
      _kind_hint: measure
      _type_hint: number
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - last_fact.average_conversion_rate
    series_types: {}
    colors:
    - "#4bb86a"
    - "#8fe4a7"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#7869df"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    single_value_title: Conversion Rate
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 0
    col: 19
    width: 5
    height: 3
  - title: Conversion Trend
    name: Conversion Trend
    model: block_facebook_ads
    explore: fb_period_fact
    type: looker_column
    fields:
    - fact.date_date
    - fact.average_cost_per_conversion
    - fact.total_conversions
    - fact.average_conversion_rate
    fill_fields:
    - fact.date_date
    sorts:
    - fact.date_date desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: time
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    hidden_fields: []
    series_types:
      fact.average_cost_per_click: line
      fact.average_click_rate: line
      fact.average_conversion_rate: line
      fact.average_cost_per_conversion: line
      fact.total_conversions: line
    colors:
    - "#7869df"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#4bb86a"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    hidden_series:
    - fact.total_conversions
    - fact.average_conversion_rate
    - fact.average_cost_per_click
    - fact.average_click_rate
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_click
        name: Cost per Click
        axisId: fact.average_cost_per_click
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 1107
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 1095
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 1126
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 1114
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_cost_per_conversion
        name: Cost per Conversion
        axisId: fact.average_cost_per_conversion
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 1145
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 1133
    - label:
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_conversion_rate
        name: Conversion Rate
        axisId: fact.average_conversion_rate
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 1164
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 1152
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: fact.average_click_rate
        name: Click Through Rate
        axisId: fact.average_click_rate
        __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
        __LINE_NUM: 1183
      __FILE: app_marketing_analytics/fb_overview.dashboard.lookml
      __LINE_NUM: 1171
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 3
    col: 9
    width: 15
    height: 10
  - title: Spend To Date
    name: Spend To Date
    model: block_facebook_ads
    explore: fb_period_fact
    type: looker_area
    fields:
    - fact.date_day_of_period
    - fact.total_cost
    - fact.cumulative_spend
    - last_fact.total_cost
    - last_fact.cumulative_spend
    sorts:
    - fact.date_day_of_period
    limit: 500
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - fact.total_cost
    - last_fact.total_cost
    series_types: {}
    colors:
    - "#4bb86a"
    - "#8fe4a7"
    - "#6e98f9"
    - "#8ac8ca"
    - "#d06180"
    - "#dc9d4f"
    - "#7869df"
    - "#a4a6a9"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 3
    col: 0
    width: 9
    height: 10
  - title: Funnel
    name: Funnel
    model: block_facebook_ads
    explore: fb_period_fact
    type: looker_column
    fields:
    - fact.total_impressions
    - fact.total_clicks
    - fact.total_conversions
    limit: 1
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    query_timezone: America/Los_Angeles
    show_null_points: true
    point_style: none
    interpolation: linear
    hidden_fields: []
    series_types: {}
    colors:
    - "#d06180"
    - "#a4a6a9"
    - "#7869df"
    - "#6e98f9"
    - "#dc9d4f"
    - "#4bb86a"
    - "#8ac8ca"
    - "#a6b7ff"
    - "#afe8fd"
    - "#ea9895"
    - "#f1e582"
    series_colors: {}
    series_labels:
      fact.cumulative_spend: This Period
      last_fact.cumulative_spend: Prior Period
    hidden_series: []
    y_axes:
    - label:
      orientation: left
      series:
      - id: fact.total_conversions
        name: Conversions
        axisId: fact.total_conversions
      - id: fact.total_impressions
        name: Impressions
        axisId: fact.total_impressions
      - id: fact.total_clicks
        name: Clicks
        axisId: fact.total_clicks
      showLabels: true
      showValues: true
      maxValue:
      minValue:
      valueFormat:
      unpinAxis: false
      tickDensity: default
      tickDensityCustom: 5
      type: log
    column_spacing_ratio:
    column_group_spacing_ratio:
    show_dropoff: true
    listen:
      Account: account.name
      Campaign: campaign.name
      Adset: adset.name
      Period: fact.period
      Period Latest: fact.date_period_latest
    row: 13
    col: 0
    width: 9
    height: 6
