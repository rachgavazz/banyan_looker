view: panels_user_demographics_v20210222_geo_monthly {
  sql_table_name: `yodlee_evaluation.panels_user_demographics_v20210222_geo_monthly`
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: cobrand_id {
    type: string
    sql: ${TABLE}.cobrand_id ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
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

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: unique_mem_id {
    type: string
    sql: ${TABLE}.unique_mem_id ;;
  }

  dimension: unique_mem_id_hash {
    type: string
    sql: ${TABLE}.unique_mem_id_hash ;;
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
