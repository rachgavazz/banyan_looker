view: panels_bank {
  sql_table_name: `yodlee_evaluation.panels_bank`
    ;;

  dimension: account_score {
    type: number
    sql: ${TABLE}.account_score ;;
  }

  dimension: account_source_type {
    type: string
    sql: ${TABLE}.account_source_type ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}.account_type ;;
  }

  measure: amount {
    type: sum
    value_format_name: decimal_2
    sql: ${TABLE}.amount ;;
  }

  dimension: change_source {
    type: string
    sql: ${TABLE}.change_source ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: factual_category {
    type: string
    sql: ${TABLE}.factual_category ;;
  }

  dimension: factual_id {
    type: string
    sql: ${TABLE}.factual_id ;;
  }

  dimension: is_outlier {
    type: string
    sql: ${TABLE}.is_outlier ;;
  }

  dimension: lag {
    type: number
    sql: ${TABLE}.lag ;;
  }

  dimension: mcc_inferred {
    type: string
    sql: ${TABLE}.mcc_inferred ;;
  }

  dimension: mcc_raw {
    type: string
    sql: ${TABLE}.mcc_raw ;;
  }

  dimension: optimized_transaction_date {
    type: string
    sql: ${TABLE}.optimized_transaction_date ;;
  }

  dimension: panel_file_created_date {
    type: string
    sql: ${TABLE}.panel_file_created_date ;;
  }

  dimension: placeholder_column_1 {
    type: string
    sql: ${TABLE}.placeholder_column_1 ;;
  }

  dimension: placeholder_column_10 {
    type: string
    sql: ${TABLE}.placeholder_column_10 ;;
  }

  dimension: placeholder_column_2 {
    type: string
    sql: ${TABLE}.placeholder_column_2 ;;
  }

  dimension: placeholder_column_3 {
    type: string
    sql: ${TABLE}.placeholder_column_3 ;;
  }

  dimension: placeholder_column_4 {
    type: string
    sql: ${TABLE}.placeholder_column_4 ;;
  }

  dimension: placeholder_column_5 {
    type: string
    sql: ${TABLE}.placeholder_column_5 ;;
  }

  dimension: placeholder_column_6 {
    type: string
    sql: ${TABLE}.placeholder_column_6 ;;
  }

  dimension: placeholder_column_7 {
    type: string
    sql: ${TABLE}.placeholder_column_7 ;;
  }

  dimension: placeholder_column_8 {
    type: string
    sql: ${TABLE}.placeholder_column_8 ;;
  }

  dimension: placeholder_column_9 {
    type: string
    sql: ${TABLE}.placeholder_column_9 ;;
  }

  dimension: post_date {
    type: string
    sql: ${TABLE}.post_date ;;
  }

  dimension: primary_merchant_name {
    type: string
    sql: ${TABLE}.primary_merchant_name ;;
  }

  dimension: secondary_merchant_name {
    type: string
    sql: ${TABLE}.secondary_merchant_name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: swipe_date {
    type: string
    sql: ${TABLE}.swipe_date ;;
  }

  dimension: transaction_base_type {
    type: string
    sql: ${TABLE}.transaction_base_type ;;
  }

  dimension: transaction_category_name {
    type: string
    sql: ${TABLE}.transaction_category_name ;;
  }

  dimension: transaction_date {
    type: string
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: transaction_origin {
    type: string
    sql: ${TABLE}.transaction_origin ;;
  }

  dimension: unique_bank_account_id {
    type: string
    sql: ${TABLE}.unique_bank_account_id ;;
  }

  dimension: unique_bank_transaction_id {
    type: string
    sql: ${TABLE}.unique_bank_transaction_id ;;
  }

  dimension: unique_mem_id {
    type: string
    sql: ${TABLE}.unique_mem_id ;;
  }

  dimension: update_type {
    type: string
    sql: ${TABLE}.update_type ;;
  }

  dimension: user_score {
    type: number
    sql: ${TABLE}.user_score ;;
  }

  dimension: yodlee_transaction_status {
    type: string
    sql: ${TABLE}.yodlee_transaction_status ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
    drill_fields: [transaction_category_name, secondary_merchant_name, primary_merchant_name]
  }
}
