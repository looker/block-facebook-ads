include: "*/*.view.lkml"

view: facebook_insights {
derived_table:
{sql:
  SELECT
  ai.DATE,
  ai.AD_ID,
  IMPRESSIONS,
  INLINE_LINK_CLICKS,
  CPC,
  CPM,
  CTR,
  SPEND,
  AD_NAME,
  ADSET_NAME,
  CAMPAIGN_NAME,
  SUM(_7_D_CLICK) AS CONVERSIONS
  FROM @{FACEBOOK_SCHEMA}."AD_INSIGHTS" ai
  LEFT JOIN @{FACEBOOK_SCHEMA}."AD_INSIGHTS_ACTIONS" aia
  ON ai.DATE = aia.DATE
  AND ai.AD_ID = aia.AD_ID AND ACTION_TYPE like '%conversions%'
  GROUP BY 1,2,3,4,5,6,7,8,9,10,11
  ;;}
  extends: [date_base,ad_metrics_period_comparison_base,period_base,facebook_ad_metrics_base]

dimension: primary_key {
  sql: ${date_date}||${ad_id} ;;
  primary_key: yes
  hidden: yes
}

  dimension: account_id {
    type: number
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: ad_id {
    type: string
    sql: ${TABLE}."AD_ID" ;;
  }

  dimension: ad_name {
    type: string
    sql: ${TABLE}."AD_NAME" ;;
  }

  dimension: adset_name {
    type: string
    sql: ${TABLE}."ADSET_NAME" ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."CAMPAIGN_NAME" ;;
  }


  dimension_group: campaign {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE" ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}."FREQUENCY" ;;
  }


  measure: count {
    type: count
    drill_fields: [adset_name, ad_name, campaign_name]
  }
}
