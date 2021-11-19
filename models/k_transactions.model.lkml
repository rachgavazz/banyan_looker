connection: "bigquery_focal_equinox_318517"

#include: "/views/k_transaction_data/*.view.lkml"
#include: # include all views in the views/ folder in this project
include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
 explore:  sample_data_v1_111221 {
   label: "Sample Transaction Data"
  sql_always_having: count(distinct ${userid}) >= 100;;

  join: where_else_derived_table_k {
    relationship: many_to_one
    type: inner
    sql_on: ${where_else_derived_table_k.user_id} = ${sample_data_v1_111221.userid} ;;
  }

 }

#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
