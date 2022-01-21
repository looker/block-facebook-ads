view: facebook_ad_metrics_base {
extension: required
dimension: average_position {
  type: number
  hidden: yes
  sql: 0 ;;
}

dimension: conversionvalue {
  type: number
  hidden: yes

  sql: ${TABLE}.total_conversions_value_in_micro_dollar / 1000000;;
}

dimension: cost {
  hidden: yes
    type: number
  sql:  ${TABLE}."SPEND";;
}


dimension: clicks{
  type: number
  sql: ${TABLE}."INLINE_LINK_CLICKS"  ;;
  hidden: yes
}

dimension: conversions {
  type: number
  sql: ${cost}*1.0/nullif(${cost_per_click},0);;
  hidden: yes
}

dimension: impressions {
  type: number
  sql: ${TABLE}."IMPRESSIONS" ;;
  hidden: yes
}


dimension: weighted_average_position {
  type: number
  sql: 0 ;;
  hidden: yes
}

dimension: click_rate {
  hidden: yes
  label: "Click Through Rate"
  description: "Percent of people that click on an ad."
  type: number
  sql: ${TABLE}."CTR";;
  value_format_name: percent_2
}

dimension: cost_per_conversion {
  hidden: yes
  label: "Cost per Conversion"
  description: "Cost per conversion."
  type: number
  sql: ${TABLE}."COST_PER_CONVERSION" ;;
  value_format_name: usd
}



dimension: cost_per_click {
  hidden: yes
  label: "Cost per Click"
  description: "Average cost per ad click."
  type: number
  sql: ${TABLE}."CPC" ;;
  value_format_name: usd
}


dimension: cost_per_impression {
  hidden: yes
  label: "CPM"
  description: "Average cost per 1000 ad impressions."
  type: number
  sql: ${cost}*1.0 / NULLIF(${impressions},0) * 1000.0 ;;
  value_format_name: usd
}




dimension: conversion_rate {
  hidden: yes
  label: "Conversion Rate"
  description: "Percent of people that convert after they interact with an ad."
  type: number
  sql: ${conversions}*1.0 / NULLIF(${clicks},0) ;;
  value_format_name: percent_2
}


measure: average_click_rate {
  label: "Click Through Rate"
  description: "Percent of people that click on an ad."
  type: number
  sql: ${total_clicks}*1.0/nullif(${total_impressions},0) ;;
  value_format_name: percent_2
  drill_fields: [fact.date_date, campaign.name, average_click_rate]
}

measure: average_cost_per_conversion {
  label: "Cost per Conversion"
  description: "Cost per conversion."
  type: number
  sql: ${total_cost}*1.0 / NULLIF(${total_conversions},0) ;;
  value_format_name: usd
  drill_fields: [fact.date_date, campaign.name, fact.total_conversions, fact.total_cost, fact.average_cost_per_conversion]
}




measure: average_cost_per_click {
  label: "Cost per Click"
  description: "Average cost per ad click."
  type: number
  sql: ${total_cost}*1.0 / NULLIF(${total_clicks},0) ;;
  value_format_name: usd
  drill_fields: [fact.date_date, campaign.name, average_cost_per_click]
}



measure: average_cost_per_impression {
  label: "CPM"
  description: "Average cost per ad impression viewed."
  type: number
  sql: ${total_cost}*1.0 / NULLIF(${total_impressions},0) * 1000.0 ;;
  value_format_name: usd
}




measure: average_conversion_rate {
  label: "Conversion Rate"
  description: "Percent of people that convert after they interact with an ad."
  type: number
  sql: ${total_conversions}*1.0 / NULLIF(${total_clicks},0) ;;
  value_format_name: percent_2
  drill_fields: [fact.date_date, campaign.name, average_conversion_rate]
}

measure: cumulative_spend {
  type: running_total
  sql: ${total_cost} ;;
  drill_fields: [fact.date_date, campaign.name, fact.total_cost]
  value_format_name: usd_0
  direction: "column"
}

measure: cumulative_conversions {
  type: running_total
  sql: ${total_conversions} ;;
  drill_fields: [fact.date_date, campaign.name, fact.total_conversions]
  value_format_name: decimal_0
  direction: "column"
}

measure: total_clicks {
  label: "Clicks"
  description: "Total ad clicks."
  type: sum
  sql: ${clicks} ;;
  value_format_name: decimal_0
  drill_fields: [fact.date_date, campaign.name, total_clicks]
}

measure: total_conversions {
  label: "Conversions"
  description: "Total conversions."
  type: sum
  sql: ${conversions} ;;
  value_format_name: decimal_0
  drill_fields: [fact.date_date, campaign.name, total_conversions]
}



measure: total_cost {
  label: "Cost"
  description: "Total cost."
  type: sum
  sql: ${cost} ;;
  value_format_name: usd_0
  drill_fields: [fact.date_date, campaign.name, total_cost]
}

measure: total_impressions {
  label: "Impressions"
  description: "Total ad impressions."
  type:  sum
  sql:  ${impressions} ;;
  value_format_name: decimal_0
}

set: ad_metrics_set {
  fields: [
    cost,
    impressions,
    clicks,
    conversions,
    conversionvalue,
    click_rate,
    conversion_rate,
    cost_per_impression,
    cost_per_click,
    cost_per_conversion,
    total_cost,
    total_impressions,
    total_clicks,
    total_conversions,
    average_click_rate,
    average_conversion_rate,
    average_cost_per_impression,
    average_cost_per_click,
    average_cost_per_conversion,
    cumulative_conversions,
    cumulative_spend
  ]
}}
