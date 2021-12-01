view: sample_data_v1_111221 {
  sql_table_name: `focal-equinox-318517.klover.sample_data_v1_111221`
    ;;
    label: "All Merchant Transactions"

  #dimension: accountid {
   # type: string
   # sql: ${TABLE}.accountid ;;

  #}

  measure: amount {
    type: sum
    sql: ${TABLE}.amount ;;
    label: "Purchase Amount"
  }

  dimension: cardlastfour {
    type: string
    sql: ${TABLE}.cardlastfour ;;
    label: "Last4"
    description: "Last4 digits of credit or debit card"
  }

  dimension: cardnetwork {
    type: string
    sql: ${TABLE}.cardnetwork ;;
    label: "Card Network"
  }

  dimension: categoryone {
    type: string
    sql: ${TABLE}.categoryone ;;
    label: "Merchant Category Level 1"
  }

  dimension: categorythree {
    type: string
    sql: ${TABLE}.categorythree ;;
    label: "Merchant Category Level 3"
  }

  dimension: categorytwo {
    type: string
    sql: ${TABLE}.categorytwo ;;
    label: "Merchant Category Level 2"
  }

  dimension: merchantaddress {
    type: string
    sql: ${TABLE}.merchantaddress ;;
    label: "Store Address"
  }

  dimension: merchantcity {
    type: string
    sql: ${TABLE}.merchantcity ;;
    label: "City"
  }

  dimension: merchantname {
    type: string
    sql: ${TABLE}.merchantname ;;
    label: "Merchant Name"
  }

  dimension: merchantstate {
    type: string
    sql: ${TABLE}.merchantstate ;;
    label: "State"
  }

  dimension: merchantzip {
    type: string
    sql: ${TABLE}.merchantzip ;;
    label: "Zip Code"
  }

  dimension: storenumber {
    type: string
    sql: ${TABLE}.storenumber ;;
    label: "Store Number"
    description: "Sourced From Transaction Details"
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

  dimension: transactionid {
    type: string
    sql: ${TABLE}.transactionid ;;
    label: "Transaction ID"
  }

  dimension: transactionname {
    type: string
    sql: ${TABLE}.transactionname ;;
    label: "Transaction Description"
  }

  dimension: userid {
    type: string
    sql: ${TABLE}.userid ;;
    label: "Customer ID"
  }

  measure: count {
    type: count
    drill_fields: [merchantname, transactionname]
  }
}
