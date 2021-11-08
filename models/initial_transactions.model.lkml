connection: "bigquery_focal_equinox_318517"

# include all the views
include: "/views/combined_deduped_panels_table.view"
include: "/views/where_else_derived_table.view"


explore: combined_deduped_panels_table{
label: "Transaction Data"
sql_always_having: count(distinct ${unique_mem_id}) >= 100;;



#explore:  combined_deduped_panels_table {
#label: "Where Else Shoppers"

join: where_else_derived_table {
  relationship: many_to_many
  sql_on: ${where_else_derived_table.user_id} = ${combined_deduped_panels_table.unique_mem_id} ;;
}
}

#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
## for a given user show me a breakdown of merchants by month
## for users that spend at target, show me their spend at their other top 50 stores
