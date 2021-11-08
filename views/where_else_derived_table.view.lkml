
view: where_else_derived_table {
   derived_table: {
     sql: SELECT
         unique_mem_id as user_id,
         primary_merchant_name as primary_merchant_name,
         SUM(amount_charged) as amount_charged
       FROM combined_deduped_panels_table
       WHERE {% condition base_merchant %} combined_deduped_panels_table.primary_merchant_name {% endcondition %}
       GROUP BY user_id, merchant_name
       HAVING sum(amount_charged)>100
       ;;
   }
  filter: base_merchant {
    type: string
  }

  dimension: user_id {
    description: "Unique ID for each user"
    type: string
    sql: ${TABLE}.user_id ;;
   }

  dimension: primary_merchant_name {
    label: "Merchant Name"
    type: string
     sql: ${TABLE}.merchant_name ;;
   }

  measure: amount_charged {
     description: "amount purchased"
     type: sum
     sql: ${TABLE}.amount_charged ;;
   }

 }
