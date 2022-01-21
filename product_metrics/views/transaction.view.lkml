# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: transaction {
#   hidden: yes

#   join: transaction__metadata {
#     view_label: "Transaction: Metadata"
#     sql: LEFT JOIN UNNEST(${transaction.metadata}) as transaction__metadata ;;
#     relationship: one_to_many
#   }
# }

view: transaction_metrics {
  sql_table_name: `production-deploy-env.product_metrics.transaction`
    ;;
  drill_fields: [transaction_id]

  dimension: transaction_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.transaction_id ;;
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

  dimension_group: event_ts {
    type: time
    description: "bq-datetime"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_ts ;;
  }

  dimension: metadata {
    hidden: yes
    sql: ${TABLE}.metadata ;;
  }

  dimension_group: purchase_ts {
    type: time
    description: "bq-datetime"
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
    description: "bq-datetime"
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

  dimension: schema {
    type: string
    sql: ${TABLE}.schema ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [transaction_id]
  }
}

view: transaction__metadata {
  dimension: key {
    type: string
    sql: key ;;
  }

  dimension: transaction__metadata {
    type: string
    hidden: yes
    sql: transaction__metadata ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}
