view: transactions {
  sql_table_name: `focal-equinox-318517.skupos_s3_transfer_test.transactions`
    ;;
    view_label: "Transactions_SK"


  dimension: transaction_id {
    primary_key: yes
    type: number
    label: "Transaction ID"
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: acquirer_reference_number {
    type: string
    label: "ARN"
    sql: ${TABLE}.acquirer_reference_number ;;
  }

  measure: amount_charged {
    label: "Amount"
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}.amount_charged ;;
  }

  #measure: grand_total_amount {
    #label: "Total Amount"
    #type: sum
    #value_format: "$#,##0.00"
    #sql: ${TABLE}.grand_total_amount ;;
  #}

  dimension: payment_last_four {
    label: "Last 4"
    type: string
    sql: ${TABLE}.payment_last_four ;;
  }

  dimension: payment_scheme {
    type: string
    label: "Payment Scheme"
    sql: ${TABLE}.payment_scheme ;;
  }

  dimension: payment_type {
    type: string
    label: "Payment Type"
    sql: ${TABLE}.payment_type ;;
  }

  dimension: store_id {
    label: "Store ID"
    type: number
    sql: ${TABLE}.store_id ;;
  }

  #dimension: subtotal_amount {
    #type: number
    #sql: ${TABLE}.subtotal_amount ;;
  #}

  #dimension: tax_amount {
    #type: number
    #sql: ${TABLE}.tax_amount ;;
  #}

dimension_group:transaction_date_time {
    type: time
    timeframes: [date,month, day_of_month]
    label: "Transaction Date"
    sql: ${TABLE}.transaction_date_time ;;
  }

  #dimension: unix_updated_at {
    #type: number
    #sql: ${TABLE}.unix_updated_at ;;
  #}

  measure: count {
    type: count
    drill_fields: [transaction_id]
  }
}
