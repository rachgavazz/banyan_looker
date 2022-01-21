# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: receipt {
  hidden: yes

  join: receipt__metadata {
    view_label: "Receipt: Metadata"
    sql: LEFT JOIN UNNEST(${receipt.metadata}) as receipt__metadata ;;
    relationship: one_to_many
  }
}

view: receipt {
  sql_table_name: `production-deploy-env.product_metrics.receipt`
    ;;
  drill_fields: [byn_receipt_id]

  dimension: byn_receipt_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.byn_receipt_id ;;
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

  dimension: byn_partner_id {
    type: number
    sql: ${TABLE}.byn_partner_id ;;
  }

  dimension_group: event_ts {
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
    sql: ${TABLE}.event_ts ;;
  }

  dimension: metadata {
    hidden: yes
    sql: ${TABLE}.metadata ;;
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

  dimension: schema {
    type: string
    sql: ${TABLE}.schema ;;
  }

  measure: count {
    type: count
    drill_fields: [byn_receipt_id]
  }
}

view: receipt__metadata {
  dimension: key {
    type: string
    sql: key ;;
  }

  dimension: receipt__metadata {
    type: string
    hidden: yes
    sql: receipt__metadata ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}
