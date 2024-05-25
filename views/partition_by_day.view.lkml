view: partition_by_day {
  sql_table_name: `data-workshops.ecommerce.partition_by_day` ;;

  dimension_group: date_formatted {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_formatted ;;
  }
  dimension: fullvisitor_id {
    type: string
    sql: ${TABLE}.fullvisitorId ;;
  }
  measure: count {
    type: count
  }
}
