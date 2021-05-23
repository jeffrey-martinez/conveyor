view: vax {
  sql_table_name: `tres.vax`
    ;;

  dimension: vaers_id {
    type: number
    sql: ${TABLE}.VAERS_ID ;;
  }

  dimension: vax_dose_series {
    type: string
    sql: ${TABLE}.VAX_DOSE_SERIES ;;
  }

  dimension: vax_lot {
    type: string
    sql: ${TABLE}.VAX_LOT ;;
  }

  dimension: vax_manu {
    type: string
    sql: ${TABLE}.VAX_MANU ;;
  }

  dimension: vax_name {
    type: string
    sql: ${TABLE}.VAX_NAME ;;
  }

  dimension: vax_route {
    type: string
    sql: ${TABLE}.VAX_ROUTE ;;
  }

  dimension: vax_site {
    type: string
    sql: ${TABLE}.VAX_SITE ;;
  }

  dimension: vax_type {
    type: string
    sql: ${TABLE}.VAX_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [vax_name]
  }
}
