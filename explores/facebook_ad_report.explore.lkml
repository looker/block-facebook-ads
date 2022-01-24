include: "/views/*.view.lkml"
include: "/views/*/*.view.lkml"

explore: facebook_ad_report {
  from:  facebook_insights
  view_name: fact
  view_label: "Ad This Period"

  join: last_fact {
    from: facebook_insights
    view_label: "Ad Prior Period"
    relationship: many_to_one
    sql_on: ${fact.ad_id}=${last_fact.ad_id} AND
            ${fact.date_last_period}=${last_fact.date_period} AND
            ${fact.date_day_of_period} = ${last_fact.date_day_of_period};;
  }



  }
