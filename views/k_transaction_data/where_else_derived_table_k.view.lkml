view: where_else_derived_table_k {
    label: "Merchant Filter"
    derived_table: {
      sql: SELECT
         userid as userid,
         SUM(amount) as amount
       FROM focal-equinox-318517.klover.sample_data_v1_111221
       WHERE {% condition base_merchant %} sample_data_v1_111221.merchantname {% endcondition %}
       GROUP BY userid
       HAVING amount >100
       ;;
    }
    filter: base_merchant {
      type: string
      description: "Use this filter to see where else your base merchant shoppers are shopping"
    }

    dimension: userid {
      description: "Unique ID for each user"
      type: string
      sql: sample_data_v1_111221.user_id ;;
    }


    measure: amount {
      description: "Amount Purchased"
      type: sum
      sql: sample_data_v1_111221.amount ;;
    }
  }
