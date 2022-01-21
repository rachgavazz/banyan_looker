connection: "bigquery_product_metrics"

include: "/product_metrics/views/receipt.view.lkml"

explore: receipt_metrics {
  hidden: yes

  join: receipt__metadata {
    view_label: "Receipt: Metadata"
    sql: LEFT JOIN UNNEST(${receipt_metrics.metadata}) as receipt__metadata ;;
    relationship: one_to_many
  }
}
