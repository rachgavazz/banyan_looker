connection: "bigquery_focal_equinox_318517"

# include all the views
include: "/views/**/*.view"


explore: combined_deduped_panels_table{
label: "Transaction Data"
sql_always_having: count(distinct ${unique_mem_id}) >= 100;;

}
