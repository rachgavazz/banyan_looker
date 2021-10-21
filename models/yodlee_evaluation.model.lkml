connection: "bigquery_focal_equinox_318517"

# include all the views
include: "/views/**/*.view"


explore: combined_deduped_panels_table{
label: "Transaction Data"
access_filter: {
    field: count
    user_attribute: row_count_100
  }
}
