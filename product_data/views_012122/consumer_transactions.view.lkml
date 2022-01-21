view: consumer_transactions {
  derived_table: {
    sql:
      SELECT DISTINCT
        id,
        finx_consumer_token
      FROM transaction
    ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: finx_consumer_token {
    type: string
    sql: ${TABLE}.finx_consumer_token ;;
  }

  measure: number_of_unique_consumers {
    type: count_distinct
    sql:  ${TABLE}.finx_consumer_token ;;
  }
}
