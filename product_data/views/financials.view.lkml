view: financials {
  sql_table_name: `focal-equinox-318517.banyan_kpi.financials`
    ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: metric_scope {
    type: string
    sql: ${TABLE}.metric_scope ;;
  }

  dimension: metric_type {
    type: string
    sql: ${TABLE}.metric_type ;;
  }

  dimension_group: month {
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
    sql: ${TABLE}.month ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: sum_amount {
    type: sum
    sql:  ${TABLE}.amount ;;
  }
}
