connection: "bigquery_product_metrics"

include: "/product_metrics/views/match.view.lkml"

explore: match_metrics {

  join: match__metadata {
    view_label: "Match: Metadata"
    sql: LEFT JOIN UNNEST(${match_metrics.metadata}) as match__metadata ;;
    relationship: one_to_many
  }
}
