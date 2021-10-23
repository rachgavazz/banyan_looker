view: evaluation_dataset {
  sql_table_name: `focal-equinox-318517.skupos_s3_transfer_test.evaluation_dataset`
    ;;

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: hashed_merchant_id {
    type: string
    sql: ${TABLE}.hashed_merchant_id ;;
  }

  dimension: hashed_receipt_id {
    type: string
    sql: ${TABLE}.hashed_receipt_id ;;
  }

  dimension: hashed_store_id {
    type: string
    sql: ${TABLE}.hashed_store_id ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: nonscan_category {
    type: string
    sql: ${TABLE}.nonscan_category ;;
  }

  dimension: nonscan_detail {
    type: string
    sql: ${TABLE}.nonscan_detail ;;
  }

  dimension: nonscan_subcategory {
    type: string
    sql: ${TABLE}.nonscan_subcategory ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: purchase_ts {
    type: string
    sql: ${TABLE}.purchase_ts ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: scan_type {
    type: string
    sql: ${TABLE}.scan_type ;;
  }

  dimension: subtotal_amount {
    type: number
    sql: ${TABLE}.subtotal_amount ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
  }

  dimension: tip_amount {
    type: number
    sql: ${TABLE}.tip_amount ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}.total_amount ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.upc ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
