view: storeid_card {
  sql_table_name: `yodlee_evaluation.storeid_card`
    ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: chain_name {
    type: string
    sql: ${TABLE}.chain_name ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: fax_number {
    type: string
    sql: ${TABLE}.fax_number ;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.longitude ;;
  }

  dimension: panel_file_created_date {
    type: string
    sql: ${TABLE}.panel_file_created_date ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
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

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}.street ;;
  }

  dimension: unique_card_account_id {
    type: string
    sql: ${TABLE}.unique_card_account_id ;;
  }

  dimension: unique_card_transaction_id {
    type: string
    sql: ${TABLE}.unique_card_transaction_id ;;
  }

  dimension: unique_mem_id {
    type: string
    sql: ${TABLE}.unique_mem_id ;;
  }

  dimension: update_type {
    type: string
    sql: ${TABLE}.update_type ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
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
    drill_fields: [secondary_merchant_name, primary_merchant_name, chain_name]
  }
}
