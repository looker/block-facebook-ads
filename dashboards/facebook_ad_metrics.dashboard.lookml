- dashboard: facebook_ad_metrics
  title: Facebook Ad Metrics
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Facebook Ad Metrics
    name: Facebook Ad Metrics
    model: block_facebook_ads
    explore: facebook_ad_report
    type: single_value
    fields: [fact.total_impressions, last_fact.total_impressions]
    filters: {}
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${fact.total_impressions}",
        label: Impressions, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: impressions, _type_hint: number},
      {category: table_calculation, expression: "(${fact.total_impressions}/${last_fact.total_impressions})-1",
        label: Change from Previous, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: change_from_previous, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Impressions
    series_types: {}
    defaults_version: 1
    hidden_fields: [last_fact.total_impressions, fact.total_impressions]
    listen:
      Period: fact.period
    row: 0
    col: 0
    width: 4
    height: 4
  - title: CTR
    name: CTR
    model: block_facebook_ads
    explore: facebook_ad_report
    type: single_value
    fields: [fact.average_click_rate, last_fact.average_click_rate]
    filters: {}
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${fact.average_click_rate}",
        label: CTR, value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        table_calculation: ctr, _type_hint: number}, {category: table_calculation,
        expression: "(${fact.average_click_rate}/${last_fact.average_click_rate})-1",
        label: Change from Previous, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: change_from_previous, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: CTR
    series_types: {}
    defaults_version: 1
    hidden_fields: [fact.average_click_rate, last_fact.average_click_rate]
    listen:
      Period: fact.period
    row: 0
    col: 8
    width: 4
    height: 4
  - title: Clicks
    name: Clicks
    model: block_facebook_ads
    explore: facebook_ad_report
    type: single_value
    fields: [fact.total_clicks, last_fact.total_clicks]
    filters: {}
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${fact.total_clicks}",
        label: Clicks, value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        table_calculation: clicks, _type_hint: number}, {category: table_calculation,
        expression: "(${fact.total_clicks}/${last_fact.total_clicks})-1", label: Change
          from Previous, value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        table_calculation: change_from_previous, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Clicks
    series_types: {}
    defaults_version: 1
    hidden_fields: [fact.total_clicks, last_fact.total_clicks]
    listen:
      Period: fact.period
    row: 0
    col: 4
    width: 4
    height: 4
  - title: Cost per Conversion
    name: Cost per Conversion
    model: block_facebook_ads
    explore: facebook_ad_report
    type: single_value
    fields: [fact.average_cost_per_conversion, last_fact.average_cost_per_conversion]
    filters: {}
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${fact.average_cost_per_conversion}",
        label: Cost per Conversion, value_format: !!null '', value_format_name: usd,
        _kind_hint: measure, table_calculation: cost_per_conversion, _type_hint: number},
      {category: table_calculation, expression: "(${fact.average_cost_per_conversion}/${last_fact.average_cost_per_conversion})-1",
        label: Change from Previous, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: change_from_previous, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Cost per Conversion
    series_types: {}
    defaults_version: 1
    hidden_fields: [fact.average_cost_per_conversion, last_fact.average_cost_per_conversion]
    listen:
      Period: fact.period
    row: 4
    col: 8
    width: 4
    height: 4
  - title: Conversions
    name: Conversions
    model: block_facebook_ads
    explore: facebook_ad_report
    type: single_value
    fields: [fact.total_conversions, last_fact.total_conversions]
    filters: {}
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${fact.total_conversions}",
        label: Conversions, value_format: !!null '', value_format_name: decimal_0,
        _kind_hint: measure, table_calculation: conversions, _type_hint: number},
      {category: table_calculation, expression: "(${fact.total_conversions}/${last_fact.total_conversions})-1",
        label: Change from Previous, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: change_from_previous, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Conversions
    series_types: {}
    defaults_version: 1
    hidden_fields: [fact.total_conversions, last_fact.total_conversions]
    listen:
      Period: fact.period
    row: 4
    col: 0
    width: 4
    height: 4
  - title: CPC
    name: CPC
    model: block_facebook_ads
    explore: facebook_ad_report
    type: single_value
    fields: [fact.average_cost_per_click, last_fact.average_cost_per_click]
    filters: {}
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${fact.average_cost_per_click}",
        label: Cost per Click, value_format: !!null '', value_format_name: usd, _kind_hint: measure,
        table_calculation: cost_per_click, _type_hint: number}, {category: table_calculation,
        expression: "(${fact.average_cost_per_click}/${last_fact.average_cost_per_click})-1",
        label: Change from Previous, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: change_from_previous, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Cost per Click
    series_types: {}
    defaults_version: 1
    hidden_fields: [fact.average_cost_per_click, last_fact.average_cost_per_click]
    listen:
      Period: fact.period
    row: 4
    col: 4
    width: 4
    height: 4
  - title: Impressions and Clicks
    name: Impressions and Clicks
    model: block_facebook_ads
    explore: facebook_ad_report
    type: looker_line
    fields: [fact.total_impressions, fact.campaign_date, fact.total_clicks]
    fill_fields: [fact.campaign_date]
    filters: {}
    sorts: [fact.campaign_date desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "(${fact.total_impressions}/${last_fact.total_impressions})-1",
        label: Change from Previous, value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, table_calculation: change_from_previous, _type_hint: number,
        is_disabled: true}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: fact.total_impressions,
            id: fact.total_impressions, name: Impressions}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: fact.total_clicks,
            id: fact.total_clicks, name: Clicks}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Impressions
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields:
    listen:
      Period: fact.period
    row: 0
    col: 12
    width: 12
    height: 8
  - title: Campaign Details
    name: Campaign Details
    model: block_facebook_ads
    explore: facebook_ad_report
    type: looker_grid
    fields: [fact.campaign_name, fact.adset_name, fact.total_impressions, fact.total_clicks,
      fact.average_click_rate, fact.average_conversion_rate, fact.total_conversions,
      fact.cumulative_spend, fact.average_cost_per_click]
    sorts: [fact.total_impressions desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      fact.total_impressions:
        is_active: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: fact.total_impressions,
            id: fact.total_impressions, name: Impressions}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: fact.total_clicks,
            id: fact.total_clicks, name: Clicks}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: Impressions
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    hidden_fields:
    listen:
      Period: fact.period
    row: 8
    col: 0
    width: 24
    height: 9
  filters:
  - name: Period
    title: Period
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: block_facebook_ads
    explore: facebook_ad_report
    listens_to_filters: []
    field: fact.period
