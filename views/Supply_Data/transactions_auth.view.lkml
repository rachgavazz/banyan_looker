view: transactions_auth {
  label: "Payment Detail"
  sql_table_name: `focal-equinox-318517.skupos_s3_transfer_test.transactions_auth`
    ;;

  dimension: acquirer_reference_number {
    type: string
    label: "Aquirere Reference Number"
    sql: ${TABLE}.acquirer_reference_number ;;
  }

  measure: amount_charged {
    type: sum_distinct
    value_format: "$#,##0.00"
    label: "Amount Charged"
    sql: ${TABLE}.amount_charged ;;
  }

  dimension: card_auth_code {
    label: "Authorization Code"
    type: string
    sql: ${TABLE}.card_auth_code ;;
  }

  measure: grand_total_amount {
    label: "Grand Total Amount"
    type: sum_distinct
    value_format: "$#,##0.00"
    sql: ${TABLE}.grand_total_amount ;;
  }

  dimension: merchant_id {
    label: "Merchant ID"
    type: string
    sql: ${TABLE}.merchant_id ;;
  }

  dimension: payment_last_four {
    label: "Card Last Four"
    type: string
    sql: ${TABLE}.payment_last_four ;;
  }

  dimension: payment_scheme {
    label: "Payment Scheme"
    type: string
    sql: ${TABLE}.payment_scheme ;;
  }

  dimension: payment_type {
    label: "Payment Type"
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: store_id {
    label: "Store ID"
    type: number
    sql: ${TABLE}.store_id ;;
  }

  measure: subtotal_amount {
    label: "Subtotal Amount"
    type: sum_distinct
    value_format: "$#,##0.00"
    sql: ${TABLE}.subtotal_amount ;;
  }

  measure: tax_amount {
    type: number
    label: "Tax"
    value_format: "$#,##0.00"
    sql: ${TABLE}.tax_amount ;;
  }

  dimension_group: transaction_date_time {
    type: time
    sql: TIMESTAMP(${TABLE}.transaction_date_time) ;;
  }

  dimension: transaction_id {
    type: string
    primary_key: yes
    label: "Transaction ID"
    sql: ${TABLE}.transaction_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
