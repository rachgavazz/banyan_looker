view: panels_user_demographics_v20210222_income {
  sql_table_name: `yodlee_evaluation.panels_user_demographics_v20210222_income`
    ;;

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }

  dimension: income_class {
    type: number
    sql: ${TABLE}.income_class ;;
  }

  dimension: panel_file_created_date {
    type: string
    sql: ${TABLE}.panel_file_created_date ;;
  }

  dimension: placeholder_column_1 {
    type: string
    sql: ${TABLE}.placeholder_column_1 ;;
  }

  dimension: placeholder_column_2 {
    type: string
    sql: ${TABLE}.placeholder_column_2 ;;
  }

  dimension: placeholder_column_3 {
    type: string
    sql: ${TABLE}.placeholder_column_3 ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }

  dimension: unique_mem_id {
    type: string
    sql: ${TABLE}.unique_mem_id ;;
  }

  dimension: update_type {
    type: string
    sql: ${TABLE}.update_type ;;
  }

  dimension: user_demo_record_status {
    type: string
    sql: ${TABLE}.user_demo_record_status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
