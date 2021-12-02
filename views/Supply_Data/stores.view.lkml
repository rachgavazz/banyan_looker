view: stores {
  sql_table_name: `focal-equinox-318517.skupos_s3_transfer_test.stores`
    ;;
  drill_fields: [store_id]

  dimension: store_id {
    primary_key: yes
    type: number
    description: "Store ID"
    sql: ${TABLE}.store_id ;;
  }

  dimension: city {
    type: string
    label: "City"
    sql: ${TABLE}.city ;;
  }

  dimension: merchant_name {
    type: string
    label: "Merchant Name"
    sql: ${TABLE}.merchant_name ;;
  }

  dimension: phone_number {
    type: string
    label: "Phone Number"
    sql: ${TABLE}.phone_number ;;
  }

  dimension: state {
    label: "State"
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.state ;;
  }

  dimension: store_name {
    type: string
    label: "Store Name"
    sql: ${TABLE}.store_name ;;
  }

  dimension: street_address {
    type: string
    label: "Street Address"
    sql: ${TABLE}.street_address ;;
  }

  #dimension: unix_updated_at {
    #type: number
    #sql: ${TABLE}.unix_updated_at ;;
  #}

  dimension: zip_code {
    type: zipcode
    label: "Zip Code"
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
    drill_fields: [store_id, merchant_name, store_name]
  }
}
