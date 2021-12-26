view: items_auth {
  label: "Item Detail"
  sql_table_name: `focal-equinox-318517.skupos_s3_transfer_test.items_auth`
    ;;

  dimension: description {
    type: string
    label: "Description"
    sql: ${TABLE}.description ;;
  }

  dimension: item_id {
    label: "Item ID"
    type: string
    sql: ${TABLE}.item_id ;;
  }

  #dimension: nonscan_category {
    #label: "NonScan Category"
    #type: string
   # sql: ${TABLE}.nonscan_category ;;
  #}

  #dimension: nonscan_detail {
   # label: "NonScan Detail"
    #type: string
   # sql: ${TABLE}.nonscan_detail ;;
 # }

  #dimension: nonscan_subcategory {
    #type: string
    #sql: ${TABLE}.nonscan_subcategory ;;
  #}

  dimension: quantity {
    type: string
    label: "Quantity"
    sql: ${TABLE}.quantity ;;
  }

  #dimension: scan_type {
    #type: string
    #sql: ${TABLE}.scan_type ;;
 # }

  dimension: transaction_id {
    type: string
    label: "Transaction ID"
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: unit_price {
    type: string
    label: "Unit Price"
    sql: ${TABLE}.unit_price ;;
  }

  dimension: upc {
    label: "UPC"
    type: string
    sql: ${TABLE}.upc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
