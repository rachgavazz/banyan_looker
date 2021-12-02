view: combined_deduped_panels_table {
  sql_table_name: `focal-equinox-318517.yodlee_evaluation.combined_deduped_panels_table`
    ;;
  view_label:"Transactions"



  ##dimension: account_source_type {
    ##type: string
    ##sql: ${TABLE}.account_source_type ;;
  ##}

  measure: amount_charged {
    type: sum
    label: "Amount Charged"
    value_format: "$#,##0.00"
    sql: ${TABLE}.amount_charged ;;
  }

  ##dimension: change_source {
    ##type: string
    ##sql: ${TABLE}.change_source ;;
  ##}

  dimension: city {
    type: string
    label: "Store City"
    sql: ${TABLE}.city ;;
  }

  dimension: currency {
    type: string
    label: "Currency Code"
    sql: ${TABLE}.currency ;;
  }

  dimension: description {
    type: string
    label: "Transaction Description"
    sql: ${TABLE}.description ;;
  }

  dimension: factual_category {
    type: string
    label: "Merchant Category (Factual)"
    description: "Sourced from 3rd party- Factual"
    sql: ${TABLE}.factual_category ;;
  }

  ##dimension: factual_id {
    ##type: string
    ##sql: ${TABLE}.factual_id ;;
  ##}

  dimension: is_outlier {
    type: string
    label: "Is Outlier"
    description: "Indicates if the transaction is potentially an outlier in which case the flag will be set as 1"
    sql: ${TABLE}.is_outlier ;;
  }

  dimension: lag {
    type: number
    label: "Lag"
    description: "The delta between when the transaction was received and the date the transaction happened"
    sql: ${TABLE}.lag ;;
  }

  dimension: mcc_inferred {
    type: string
    label: "MCC Modeled"
    description: "MCC wasn't received directly from the financial institution but other data can be used ot infer it"
    sql: ${TABLE}.mcc_inferred ;;
  }

  dimension: mcc_raw {
    type: string
    label: "MCC Raw"
    description: "MCC code directly from the financial institution"
    sql: ${TABLE}.mcc_raw ;;
  }

  ##dimension: optimized_transaction_date {
    ##type: date
    ##datatype: date
    ##label: "Optimized Transaction Date"
    ##description: "A computed date (YYYY-MM-DD format) field. By default, the field contains Transaction Date and if the Transaction Date is null or erroneous then it contains the post date. If both transaction date and post date are null or erroneous, then it contains the file processing date"
    ##sql: CAST(${TABLE}.optimized_transaction_date AS DATE) ;;
  ##}


  dimension_group: optimized_transaction_date_2 {
    type: time
    label: "Optimized Transaction"
    description: "A computed date (YYYY-MM-DD format) field. By default, the field contains Transaction Date and if the Transaction Date is null or erroneous then it contains the post date. If both transaction date and post date are null or erroneous, then it contains the file processing date"
    timeframes: [date, week, month, year, raw]
    sql: case when ${TABLE}.optimized_transaction_date = '' then '1900-01-01' else cast(${TABLE}.optimized_transaction_date AS DATE) end ;;

  }

  dimension: panel_file_created_date {
    type: date
    datatype: date
    label: "File Created Date"
    sql: CAST(${TABLE}.panel_file_created_date AS DATE) ;;
  }

  dimension: post_date {
    type: date
    datatype: date
    label: "Post Date"
    description: "The date (YYYY-MM-DD format) on which the transaction is posted at the financial institution."
    sql: CAST(${TABLE}.post_date AS DATE) ;;
  }

  dimension: primary_merchant_name {
    type: string
    label: "Primary Merchant Name"
    description: "The name of the business that the user is directly transacting with"
    sql: ${TABLE}.primary_merchant_name ;;
  }

  dimension: secondary_merchant_name {
    type: string
    label: "Secondary Merchant Name"
    description: "The name of the business that is providing service for the transaction done with the primary merchant"
    sql: ${TABLE}.secondary_merchant_name ;;
  }
  dimension: state {
    label: "Store State"
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: swipe_date {
    type: string
    label: "Swipe Date"
    description: "The date (YYYY-MM-DD format) on which the card is swiped or the transaction took place as inferred"
    sql: ${TABLE}.swipe_date ;;
  }

  dimension: transaction_base_type {
    type: string
    label: "Transaction Type"
    description: "Debit or Credit"
    sql: ${TABLE}.transaction_base_type ;;
  }

  dimension: transaction_category_name {
    type: string
    label: "Merchant Category Name"
    sql: ${TABLE}.transaction_category_name ;;
  }

  dimension: transaction_date {
    type: date
    datatype: date
    label: "Transaction Date"
    sql: CAST(${TABLE}.transaction_date AS DATE) ;;
  }


  dimension: transaction_origin {
    type: string
    label: "Transaction Origin"
    description: "Classification of the origin of the transaction: online, point of sale, ATM withdrawal, card transaction, and unresolved"
    sql: ${TABLE}.transaction_origin ;;
  }

  dimension: unique_account_id {
    type: string
    label: "Unique Account ID"
    sql: ${TABLE}.unique_account_id ;;
  }

  dimension: unique_mem_id {
    type: string
    label: "Member ID"
    sql: ${TABLE}.unique_mem_id ;;
  }

  dimension: unique_transaction_id {
    type: string
    label: "Transaction ID"
    sql: ${TABLE}.unique_transaction_id ;;
  }

  ##dimension: update_type {
    ##type: string
    ##label: "Update Type"
    ##description: ""
    ##sql: ${TABLE}.update_type ;;
  ##}

  ##dimension: user_score {
    ##type: number
    ##sql: ${TABLE}.user_score ;;
  ##}

  dimension: yodlee_transaction_status {
    type: string
    label: "Transaction Status"
    description: "U=Updated D=Deleted N=New"
    sql: ${TABLE}.yodlee_transaction_status ;;
  }

  dimension: zip_code {
    type: zipcode
    label: "Store Zip Code"
    sql: ${TABLE}.zip_code ;;
  }

  measure: count {
    type: count
    drill_fields: [transaction_category_name, secondary_merchant_name, primary_merchant_name]
  }


 # parameter: select_merchant {
  #  type: string
   # label: "Starting Merchant"
    #suggest_dimension: primary_merchant_name
 # }

  #parameter: enter_min_amount_spent {
   # label: "Minimum Amount To Qualify"
  #  type: number
  #  default_value: "10"
  #}

  #dimension: is_user_in_list_merchant {
   # label: "Where Else Shoppers Merchant"
    #type: yesno
    #sql: ${unique_mem_id} IN (SELECT unique_mem_id FROM combined_deduped_panels_table
     # WHERE merchant = {% parameter ${primary_merchant_name} %});;
#  }

  #measure: is_user_in_list_amount {
  #  label: "Where Else Shoppers Amount"
  #  type: yesno
  #  sql: ${unique_mem_id} IN (SELECT unique_mem_id FROM combined_deduped_panels_table
  #    WHERE ${amount_charged} >= {% parameter enter_min_amount_spent %} ;;
  #}

}
