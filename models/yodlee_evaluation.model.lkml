connection: "bigquery_focal_equinox_318517"

# include all the views
include: "/views/**/*.view"

datagroup: yodlee_evaluation_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: yodlee_evaluation_default_datagroup

explore: panels_user_demographics_v20210222_geo_household {}

explore: panels_card {}

explore: panels_dup_mapping_v3_incremental_bank {}

explore: panels_user_demographics_v20210222_income {}

explore: panels_dup_mapping_v3_incremental_card {}

explore: panels_user_demographics_v20210222_geo_monthly {}

explore: panels_bank {}

explore: storeid_bank {}

explore: storeid_card {}
