view: where_else_derived_table_klover {
  label: "Klover Merchant Name"


  derived_table: {
     sql: SELECT
         userid as user_id
         , sum(amount) as amount
       FROM sample_data_v1_111221
       WHERE {% condition base_merchant %} sample_data_v1_111221.merchantname {% endcondition %}
       GROUP BY userid
       Having sum(amount)>100
       ;;
   }

  filter: base_merchant{
    type: string
  }

   dimension: userid {
     description: "Unique ID for each user that has ordered"
     type: string
     sql: ${TABLE}.userid ;;
   }


   measure: amount {
     type: sum
     sql: ${TABLE}.amount ;;
  }
 }
