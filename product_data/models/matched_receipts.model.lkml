connection: "bigquery_production_deploy_env"

include: "/product_data/views_012122/match.view"
include: "/product_data/views_012122/receipt.view"

explore: receipt {
  join: match {
    relationship: one_to_one
    sql_on:  ${receipt.id} = ${match.byn_receipt_id} ;;
  }
}
