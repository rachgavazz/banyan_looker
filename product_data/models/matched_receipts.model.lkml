connection: "bigquery_production_deploy_env"

include: "/product_data/views/match.view"
include: "/product_data/views/receipt.view"

explore: receipt {
  join: match {
    relationship: one_to_one
    sql_on:  ${receipt.id} = ${match.receipt_id} ;;
  }
}
