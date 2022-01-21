connection: "bigquery_product_metrics"

include: "/product_metrics/views/transaction.view.lkml"

explore: transaction_metrics {
  hidden: yes

  join: transaction__metadata {
    view_label: "Transaction: Metadata"
    sql: LEFT JOIN UNNEST(${transaction_metrics.metadata}) as transaction__metadata ;;
    relationship: one_to_many
  }
}
