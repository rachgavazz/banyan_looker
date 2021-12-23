connection: "bigquery_production_deploy_env"

include: "/product_data/views/match.view"
include: "/product_data/views/consumer_transactions.view"

explore: consumer_transactions {
  join: match {
    relationship: one_to_one
    sql_on:  ${consumer_transactions.id} = ${match.transaction_id} ;;
  }
}
