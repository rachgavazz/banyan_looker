connection: "bigquery_production_deploy_env"

include: "/product_data/views/match.view"
include: "/product_data/views/transaction.view"

explore: transaction {
  join: match {
    relationship: one_to_one
    sql_on:  ${transaction.id} = ${match.transaction_id} ;;
  }
}
