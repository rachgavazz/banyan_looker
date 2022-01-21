connection: "bigquery_production_deploy_env"

include: "/product_data/views_012122/match.view"
include: "/product_data/views_012122/consumer_transactions.view"

explore: consumer_transactions {
  join: match {
    relationship: one_to_one
    sql_on:  ${consumer_transactions.id} = ${match.byn_transaction_id} ;;
  }
}
