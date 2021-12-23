connection: "bigquery_focal_equinox_318517"

include: "/views/Supply_Data/*.view.lkml"              # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
 explore: transactions {
   join : items {
     relationship: one_to_many
     sql_on: ${transactions.transaction_id} = ${items.transaction_id} ;;
   }
  }
