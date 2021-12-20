view: receipt {
  sql_table_name: `production-deploy-env.core_platform.receipt`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: _partitiondate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: arn {
    type: string
    sql: ${TABLE}.arn ;;
  }

  dimension: authorization_code {
    type: string
    sql: ${TABLE}.authorization_code ;;
  }

  dimension: card_last_four {
    type: string
    sql: ${TABLE}.card_last_four ;;
  }

  dimension: change_due_amount {
    type: number
    sql: ${TABLE}.change_due_amount ;;
  }

  dimension: charged_amount {
    type: number
    sql: ${TABLE}.charged_amount ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: custom_fields {
    type: string
    description: "this is a key value map stored as a string, using & and = to separate pairs and key/values, just like a URL. See https://aride.medium.com/approaches-to-store-key-value-pairs-in-google-bigquery-6840d036bc10"
    sql: ${TABLE}.custom_fields ;;
  }

  dimension: item_count {
    type: number
    sql: ${TABLE}.item_count ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.location_id ;;
  }

  dimension: location_type {
    type: string
    sql: ${TABLE}.location_type ;;
  }

  dimension: merchant_id {
    type: number
    sql: ${TABLE}.merchant_id ;;
  }

  dimension: merchant_source_transaction_id {
    type: string
    sql: ${TABLE}.merchant_source_transaction_id ;;
  }

  dimension: payment_scheme {
    type: string
    sql: ${TABLE}.payment_scheme ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension_group: purchase_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.purchase_ts ;;
  }

  dimension_group: received_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.received_ts ;;
  }

  dimension: source_consumer_token {
    type: string
    sql: ${TABLE}.source_consumer_token ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.source_id ;;
  }

  dimension: source_receipt_id {
    type: string
    sql: ${TABLE}.source_receipt_id ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
