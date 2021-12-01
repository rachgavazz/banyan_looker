view: zip_to_dma {
  sql_table_name: `focal-equinox-318517.geo_mappings.zip_to_dma`
    ;;


  dimension: dma_code {
    type: number
    sql: ${TABLE}.dma_code ;;
  }

  dimension: dma_name {
    type: string
    sql: ${TABLE}.dma_name ;;
  }

  dimension: zip_co {
    type: string
    primary_key: yes
    sql: CAST(${TABLE}.zip_co AS STRING) ;;
  }

  measure: count {
    type: count
    drill_fields: [dma_name]
  }
}
