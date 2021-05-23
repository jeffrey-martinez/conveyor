view: april_30_2021_symptoms {
  sql_table_name: `tres.2021_04_30_symptoms`
    ;;

  dimension: symptom1 {
    type: string
    sql: ${TABLE}.SYMPTOM1 ;;
  }

  dimension: symptom2 {
    type: string
    sql: ${TABLE}.SYMPTOM2 ;;
  }

  dimension: symptom3 {
    type: string
    sql: ${TABLE}.SYMPTOM3 ;;
  }

  dimension: symptom4 {
    type: string
    sql: ${TABLE}.SYMPTOM4 ;;
  }

  dimension: symptom5 {
    type: string
    sql: ${TABLE}.SYMPTOM5 ;;
  }

  dimension: symptomversion1 {
    type: number
    sql: ${TABLE}.SYMPTOMVERSION1 ;;
  }

  dimension: symptomversion2 {
    type: number
    sql: ${TABLE}.SYMPTOMVERSION2 ;;
  }

  dimension: symptomversion3 {
    type: number
    sql: ${TABLE}.SYMPTOMVERSION3 ;;
  }

  dimension: symptomversion4 {
    type: number
    sql: ${TABLE}.SYMPTOMVERSION4 ;;
  }

  dimension: symptomversion5 {
    type: number
    sql: ${TABLE}.SYMPTOMVERSION5 ;;
  }

  dimension: vaers_id {
    type: number
    sql: ${TABLE}.VAERS_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
