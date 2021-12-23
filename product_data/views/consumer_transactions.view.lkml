view: consumer_transactions {
  derived_table: {
    sql:
      SELECT DISTINCT
        id,
        source_consumer_token
      FROM transaction
    ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: source_consumer_token {
    type: string
    sql: ${TABLE}.source_consumer_token ;;
  }

  measure: number_of_unique_consumers {
    type: count_distinct
    sql:  ${TABLE}.source_consumer_token ;;
  }
}
