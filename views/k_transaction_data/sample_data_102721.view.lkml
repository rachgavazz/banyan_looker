view: sample_data_102721 {
  sql_table_name: `focal-equinox-318517.klover.sample_data_102721`
    ;;
    view_label: "k_transactions"

  measure: amount {
    type: sum
    value_format: "$#,##0.00"
    description: "Amount"
    label: "Amount"
    sql: ${TABLE}.amount ;;
  }

  dimension: lastfour {
    description: "last four digits on credit card"
    label: "Last4"
    type: string
    sql: ${TABLE}.lastfour ;;
  }

  dimension: merchantaddress {
    type: string
    label: "Address"
    sql: ${TABLE}.merchantaddress ;;
  }

  dimension: merchantcity {
    type: string
    label: "City"
    sql: ${TABLE}.merchantcity ;;
  }

  dimension: merchantname {
    type: string
    label: "Merchant Name"
    sql: ${TABLE}.merchantname ;;
  }

  dimension: merchantstate {
    type: string
    label: "State"
    sql: ${TABLE}.merchantstate ;;
  }

  dimension: network {
    type: string
    label: "Scheme"
    sql: ${TABLE}.network ;;
  }

  dimension_group: transactiondate {
    type: time
    label: "Date"
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
    label: "Zip Code"
    sql: ${TABLE}.zipcode ;;
  }

  measure: count {
    type: count
    label: "Count"
    drill_fields: [merchantname]
  }
}
