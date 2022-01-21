# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
# explore: match_metrics {
#   hidden: yes

#   join: match__metadata {
#     view_label: "Match: Metadata"
#     sql: LEFT JOIN UNNEST(${match_metrics.metadata}) as match__metadata ;;
#     relationship: one_to_many
#   }
# }

view: match_metrics {
  sql_table_name: `production-deploy-env.product_metrics.match`
    ;;
  drill_fields: [match_id]

  dimension: match_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.match_id ;;
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

  dimension: metadata {
    hidden: yes
    sql: ${TABLE}.metadata ;;
  }

  dimension: schema {
    type: string
    sql: ${TABLE}.schema ;;
  }

  measure: count {
    type: count
    drill_fields: [match_id]
  }
}

view: match__metadata {
  dimension: key {
    type: string
    sql: key ;;
  }

  dimension: match__metadata {
    type: string
    hidden: yes
    sql: match__metadata ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}
