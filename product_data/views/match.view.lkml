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

  dimension: confidence_interval {
    type: number
    sql: ${TABLE}.confidence_interval ;;
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

  dimension: receipt_id {
    type: string
    sql: ${TABLE}.receipt_id ;;
  }

  dimension: receipt_source_id {
    type: number
    sql: ${TABLE}.receipt_source_id ;;
  }

  dimension: source_consumer_token {
    type: string
    sql: ${TABLE}.source_consumer_token ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: transaction_source_id {
    type: number
    sql: ${TABLE}.transaction_source_id ;;
  }

  dimension: match_status {
    sql:  CASE
    WHEN ${TABLE}.id IS NOT NULL THEN 'Matched'
    ELSE 'Unmatched'
    END;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
