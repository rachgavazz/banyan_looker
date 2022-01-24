view: items {
  sql_table_name: `focal-equinox-318517.skupos_s3_transfer_test.items`
    ;;
  view_label: "Item Level"
  drill_fields: [item_id]

  dimension: item_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.item_id ;;
  }

  dimension: description {
    type: string
    label: "Description"
    sql: ${TABLE}.description ;;
  }

  dimension: nonscan_category {
    type: string
    label: "Non-Scan Category"
    sql: ${TABLE}.nonscan_category ;;
  }

  dimension: nonscan_detail {
    type: string
    label: "Non-Scan Detail"
    sql: ${TABLE}.nonscan_detail ;;
  }

  dimension: nonscan_subcategory {
    type: string
    label: "Non-Scan Subcategory"
    sql: ${TABLE}.nonscan_subcategory ;;
  }

  dimension: quantity {
    type: string
    label: "Quantity"
    sql: ${TABLE}.quantity ;;
  }

  dimension: scan_type {
    type: string
    label: "Scan Type"
    sql: ${TABLE}.scan_type ;;
  }

  dimension: transaction_id {
    type: number
    label: "Transaction ID"
    sql: ${TABLE}.transaction_id ;;
  }

  measure: unit_price {
    type: sum
    label: "Unit Price"
    sql: ${TABLE}.unit_price ;;
  }

  dimension: unix_updated_at {
    type: string
    label: "Updated At Timestamp"
    sql: ${TABLE}.unix_updated_at ;;
  }

  dimension: upc {
    type: string
    label: "UPC"
    sql: ${TABLE}.upc ;;
  }

  measure: count {
    type: count
    drill_fields: [item_id]
  }
}
