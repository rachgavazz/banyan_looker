connection: "bigquery_production_deploy_env"

include: "/product_data/views_012122/match.view"
include: "/product_data/views_012122/transaction.view"

explore: transaction {
  join: match {
    relationship: one_to_one
    sql_on:  ${transaction.id} = ${match.byn_transaction_id} ;;
  }
}
