view: facebook_ad_conversions_purchase_roas {

  sql_table_name: @{FACEBOOK_SCHEMA}."AD_CONVERSIONS_PURCHASE_ROAS"
    ;;

  dimension: _1_d_view {
    type: number
    sql: ${TABLE}."_1_D_VIEW" ;;
  }



  measure: total__1_d_view {
    type: sum
    sql: ${_1_d_view} ;;
  }

  measure: average__1_d_view {
    type: average
    sql: ${_1_d_view} ;;
  }

  dimension: _7_d_click {
    type: number
    sql: ${TABLE}."_7_D_CLICK" ;;
  }

  dimension: _file {
    type: string
    sql: ${TABLE}."_FILE" ;;
  }

  dimension: _fivetran_id {
    type: string
    sql: ${TABLE}."_FIVETRAN_ID" ;;
  }

  dimension: _fivetran_synced {
    type: string
    sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
  }

  dimension: _line {
    type: number
    sql: ${TABLE}."_LINE" ;;
  }

  dimension: action_type {
    type: string
    sql: ${TABLE}."ACTION_TYPE" ;;
  }

  dimension: ad_id {
    type: number
    sql: ${TABLE}."AD_ID" ;;
  }


  dimension_group: date {
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

  dimension: index {
    type: number
    sql: ${TABLE}."INDEX" ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}."VALUE" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
