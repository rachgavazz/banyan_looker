connection: "bigquery_product_metrics"

include: "/product_metrics/views/transaction_metrics.view"

explore: transaction_metrics {}
