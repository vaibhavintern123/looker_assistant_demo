# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: classification_model_2_results {
  hidden: yes
    join: classification_model_2_results__predicted_will_buy_on_return_visit_probs {
      view_label: "Classification Model 2 Results: Predicted Will Buy On Return Visit Probs"
      sql: LEFT JOIN UNNEST(${classification_model_2_results.predicted_will_buy_on_return_visit_probs}) as classification_model_2_results__predicted_will_buy_on_return_visit_probs ;;
      relationship: one_to_many
    }
}
view: classification_model_2_results {
  sql_table_name: `data-workshops.ecommerce.classification_model_2_results` ;;

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }
  dimension: channel_grouping {
    type: string
    sql: ${TABLE}.channelGrouping ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: device_category {
    type: string
    sql: ${TABLE}.deviceCategory ;;
  }
  dimension: latest_ecommerce_progress {
    type: number
    sql: ${TABLE}.latest_ecommerce_progress ;;
  }
  dimension: medium {
    type: string
    sql: ${TABLE}.medium ;;
  }
  dimension: pageviews {
    type: number
    sql: ${TABLE}.pageviews ;;
  }
  dimension: predicted_will_buy_on_return_visit {
    type: number
    sql: ${TABLE}.predicted_will_buy_on_return_visit ;;
  }
  dimension: predicted_will_buy_on_return_visit_probs {
    hidden: yes
    sql: ${TABLE}.predicted_will_buy_on_return_visit_probs ;;
  }
  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  dimension: time_on_site {
    type: number
    sql: ${TABLE}.time_on_site ;;
  }
  dimension: unique_session_id {
    type: string
    sql: ${TABLE}.unique_session_id ;;
  }
  dimension: will_buy_on_return_visit {
    type: number
    sql: ${TABLE}.will_buy_on_return_visit ;;
  }
  measure: count {
    type: count
  }
}

view: classification_model_2_results__predicted_will_buy_on_return_visit_probs {

  dimension: classification_model_2_results__predicted_will_buy_on_return_visit_probs {
    type: string
    hidden: yes
    sql: classification_model_2_results__predicted_will_buy_on_return_visit_probs ;;
  }
  dimension: label {
    type: number
    sql: label ;;
  }
  dimension: prob {
    type: number
    sql: prob ;;
  }
}
