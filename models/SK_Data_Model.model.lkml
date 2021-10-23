connection: "bigquery_focal_equinox_318517"

include: "/views/Supply_Data/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
 explore: evaluation_dataset {
 label: "Supply Exploration"
 }
#   join: stores {
#     relationship: many_to_one
#     sql_on: ${supply_data.id} = ${order_items.order_id} ;;

#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
