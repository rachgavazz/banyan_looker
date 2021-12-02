connection: "bigquery_focal_equinox_318517"

include: "/views/Supply_Data/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
 explore: transactions {
   label: "Transaction Level"
   join: stores {
     relationship: many_to_one
     sql_on: ${transactions.store_id} = ${stores.store_id} ;;
   }
   join: zip_to_dma {
     relationship: many_to_one
     sql_on: ${stores.zip_code} = ${zip_to_dma.zip_co};;
   }
}
  explore: evaluation_dataset {
    label: "Item Level"

  }
