
view: where_else_derived_table {
   label: "Merchant Filter"
   derived_table: {
     sql: SELECT
         unique_mem_id as user_id,
         SUM(amount_charged) as amount_charged
       FROM combined_deduped_panels_table
       WHERE {% condition base_merchant %} combined_deduped_panels_table.primary_merchant_name {% endcondition %}
       GROUP BY user_id
       HAVING amount_charged >100
       ;;
   }
  filter: base_merchant {
    type: string
    description: "Use this filter to see where else your base merchant shoppers are shopping"
  }

  dimension: user_id {
    description: "Unique ID for each user"
    type: string
    sql: ${TABLE}.user_id ;;
   }


  measure: amount_charged {
     description: "amount purchased"
     type: sum
     sql: ${TABLE}.amount_charged ;;
   }

 }
