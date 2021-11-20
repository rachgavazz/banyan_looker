connection: "bigquery_focal_equinox_318517"

include: "/views/k_transaction_data/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
 explore: sample_data_v1_111221 {
  sql_always_having: count(distinct(${userid}))>=100  ;;
  label: "Klover Transactions"

  join: where_else_derived_table_klover {
     relationship: many_to_one
     type: inner
     sql_on: ${sample_data_v1_111221.userid} = ${where_else_derived_table_klover.userid} ;;
  }
 }
