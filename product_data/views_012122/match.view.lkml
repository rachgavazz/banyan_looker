view: match {
  sql_table_name: `production-deploy-env.core_platform.match`
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

  dimension: byn_receipt_id {
    type: string
    sql: ${TABLE}.byn_receipt_id ;;
  }

  dimension: byn_transaction_id {
    type: string
    sql: ${TABLE}.byn_transaction_id ;;
  }

  dimension: confidence_interval {
    type: number
    sql: ${TABLE}.confidence_interval ;;
  }

  dimension: finx_consumer_token {
    type: string
    sql: ${TABLE}.finx_consumer_token ;;
  }

  dimension: finx_partner_id {
    type: number
    sql: ${TABLE}.finx_partner_id ;;
  }

  dimension_group: match_ts {
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
    sql: ${TABLE}.match_ts ;;
  }

  dimension: merchant_partner_id {
    type: number
    sql: ${TABLE}.merchant_partner_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
