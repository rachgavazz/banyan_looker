
view: where_else_derived_table {
   derived_table: {
     sql: SELECT
         unique_mem_id as user_id,
         primary_merchant_name as merchant_name,
         SUM(amount_charged) as amount_charged
       FROM combined_deduped_panels_table
       GROUP BY user_id, merchant_name
       ;;
   }
#
#  Define your dimensions and measures here, like this:
  dimension: user_id {
    description: "Unique ID for each user"
    type: string
    sql: ${TABLE}.user_id ;;
   }

  dimension: merchant_name {
     type: string
     sql: ${TABLE}.merchant_name ;;
   }

  measure: amount_charged {
     description: "amount purchased"
     type: sum
     sql: ${amount_charged} ;;
   }
 }
