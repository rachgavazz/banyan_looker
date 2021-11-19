view: where_else_derived_table_k {
    label: "Merchant Filter"
    derived_table: {
      sql: SELECT
         userid as user_id,
         SUM(amount) as amount
       FROM sample_data_v1_111221
       WHERE {% condition base_merchant %} combined_deduped_panels_table.merchant_name {% endcondition %}
       GROUP BY user_id
       HAVING amount >100
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


    measure: amount {
      description: "Amount Purchased"
      type: sum
      sql: ${TABLE}.amount ;;
    }
  }
