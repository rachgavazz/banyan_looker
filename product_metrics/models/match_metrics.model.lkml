connection: "bigquery_product_metrics"

include: "/product_metrics/views/match_metrics.view"

explore: match_metrics {}
