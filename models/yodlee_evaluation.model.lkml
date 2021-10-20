connection: "bigquery_focal_equinox_318517"

# include all the views
include: "/views/**/*.view"


explore: combined_deduped_panels_table{
view_label: "Transaction Data"

}
