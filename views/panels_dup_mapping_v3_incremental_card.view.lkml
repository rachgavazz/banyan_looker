view: panels_dup_mapping_v3_incremental_card {
  sql_table_name: `yodlee_evaluation.panels_dup_mapping_v3_incremental_card`
    ;;

  dimension: dedupe_status {
    type: string
    sql: ${TABLE}.dedupe_status ;;
  }

  dimension: file_created_date {
    type: string
    sql: ${TABLE}.file_created_date ;;
  }

  dimension: is_duplicate_of_account_id {
    type: string
    sql: ${TABLE}.is_duplicate_of_account_id ;;
  }

  dimension: is_duplicate_of_transaction_id {
    type: string
    sql: ${TABLE}.is_duplicate_of_transaction_id ;;
  }

  dimension: panel_file_created_date {
    type: string
    sql: ${TABLE}.panel_file_created_date ;;
  }

  dimension: post_date {
    type: string
    sql: ${TABLE}.post_date ;;
  }

  dimension: transaction_date {
    type: string
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: unique_account_id {
    type: string
    sql: ${TABLE}.unique_account_id ;;
  }

  dimension: unique_transaction_id {
    type: string
    sql: ${TABLE}.unique_transaction_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
