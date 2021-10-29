view: sample_data_102721 {
  sql_table_name: `focal-equinox-318517.klover.sample_data_102721`
    ;;
    view_label: "k_transactions"

  measure: amount {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}.amount ;;
  }

  dimension: lastfour {
    type: string
    sql: ${TABLE}.lastfour ;;
  }

  dimension: merchantaddress {
    type: string
    sql: ${TABLE}.merchantaddress ;;
  }

  dimension: merchantcity {
    type: string
    sql: ${TABLE}.merchantcity ;;
  }

  dimension: merchantname {
    type: string
    sql: ${TABLE}.merchantname ;;
  }

  dimension: merchantstate {
    type: string
    sql: ${TABLE}.merchantstate ;;
  }

  dimension: network {
    type: string
    sql: ${TABLE}.network ;;
  }

  dimension_group: transactiondate {
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
    sql: ${TABLE}.transactiondate ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    drill_fields: [merchantname]
  }
}
