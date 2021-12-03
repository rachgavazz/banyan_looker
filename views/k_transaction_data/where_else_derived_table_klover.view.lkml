
view: where_else_derived_table_klover {
  label: "Overlap Analysis: Merchant Filter"



  derived_table: {
     sql: SELECT
         userid as userid,
         sum(amount) as purchase_amount
       FROM `focal-equinox-318517.klover.sample_data_v1_111221`
       WHERE {% condition base_merchant %} merchantname {% endcondition %}
       GROUP BY userid
       Having sum(amount)>100
       ;;
   }

  filter: base_merchant{
    type: string
  }

   dimension: userid {
    type: string
     sql: ${TABLE}.userid ;;
   }


   measure: amount {
     type: sum
     sql: ${TABLE}.amount ;;
  }
 }
