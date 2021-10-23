connection: "bigquery_focal_equinox_318517"

# include all the views
include: "/views/combined_deduped_panels_table.view"


explore: combined_deduped_panels_table{
label: "Transaction Data"
sql_always_having: count(distinct ${unique_mem_id}) >= 100;;

}
## for a given user show me a breakdown of merchants by month
## for users that spend at target, show me their spend at their other top 50 stores
