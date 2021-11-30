view: evaluation_dataset {
  sql_table_name: `focal-equinox-318517.skupos_s3_transfer_test.evaluation_dataset`
    ;;
  view_label: "Supply Data"

  dimension: currency {
    type: string
    label: "Currency"
    sql: ${TABLE}.currency ;;
  }

  dimension: description {
    type: string
    label: "Description"
    sql: ${TABLE}.description ;;
  }

  dimension: hashed_merchant_id {
    type: string
    label: "Hashed Merchant ID"
    sql: ${TABLE}.hashed_merchant_id ;;
  }

  dimension: hashed_receipt_id {
    label: "Hashed Receipt ID"
    type: string
    sql: ${TABLE}.hashed_receipt_id ;;
  }

  dimension: hashed_store_id {
    label: "Hashed Store ID"
    type: string
    sql: ${TABLE}.hashed_store_id ;;
  }

  dimension: location_type {
    label: "Location Type"
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: nonscan_category {
    label: "Category"
    type: string
    drill_fields: [nonscan_subcategory,nonscan_detail]
    sql: ${TABLE}.nonscan_category ;;
  }

  dimension: nonscan_detail {
    label: "Detail"
    type: string
    sql: ${TABLE}.nonscan_detail ;;
  }

  dimension: nonscan_subcategory {
    label: "Sub Category"
    type: string
    drill_fields: [nonscan_detail]
    sql: ${TABLE}.nonscan_subcategory ;;
  }

  dimension: payment_type {
    label: "Payment Type"
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: price {
    label: "Unit Price"
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.price ;;
  }

  dimension_group: purchase_ts {
    type: time
    label: "Purchase Timestamp"
    sql: TIMESTAMP(${TABLE}.purchase_ts) ;;
  }

  dimension: quantity {
    type: number
    label: "Quantity"
    sql: ${TABLE}.quantity ;;
  }

  dimension: scan_type {
    type: string
    label: "Scan Type"
    sql: ${TABLE}.scan_type ;;
  }

  measure: subtotal_amount {
    type: sum
    label: "Subtotal"
    value_format: "$#,##0.00"
    sql: ${TABLE}.subtotal_amount ;;
  }

  measure: tax_amount {
    type: sum
    label: "Tax Amount"
    value_format: "$#,##0.00"
    sql: ${TABLE}.tax_amount ;;
  }

  measure: tip_amount {
    type: sum
    label: "Tip Amount"
    value_format: "$#,##0.00"
    sql: ${TABLE}.tip_amount ;;
  }

  measure: total_amount {
    type: sum
    label: "Total Amount"
    value_format: "$#,##0.00"
    sql: ${TABLE}.total_amount ;;
  }

  dimension: upc {
    type: string
    label: "UPC"
    sql: ${TABLE}.upc ;;
  }

  dimension: zip_code {
    type: zipcode
    label: "Zip Code"
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
