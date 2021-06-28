view: symptoms {
  sql_table_name: `tres.symptoms`
    ;;

  dimension: symptom1 {
    group_label: "Symptoms"
    type: string
    sql: ${TABLE}.SYMPTOM1 ;;
  }

  dimension: symptom2 {
    group_label: "Symptoms"
    type: string
    sql: ${TABLE}.SYMPTOM2 ;;
  }

  dimension: symptom3 {
    group_label: "Symptoms"
    type: string
    sql: ${TABLE}.SYMPTOM3 ;;
  }

  dimension: symptom4 {
    group_label: "Symptoms"
    type: string
    sql: ${TABLE}.SYMPTOM4 ;;
  }

  dimension: symptom5 {
    group_label: "Symptoms"
    type: string
    sql: ${TABLE}.SYMPTOM5 ;;
  }

  dimension: symptom_concat {
    type: string
    sql: CONCAT(${symptom1}, ", ", ${symptom2}, ", ", ${symptom3}, ", ", ${symptom4}, ", ", ${symptom5}) ;;
  }

  dimension: symptomversion1 {
    group_label: "Symptom Version"
    type: number
    sql: ${TABLE}.SYMPTOMVERSION1 ;;
  }

  dimension: symptomversion2 {
    group_label: "Symptom Version"
    type: number
    sql: ${TABLE}.SYMPTOMVERSION2 ;;
  }

  dimension: symptomversion3 {
    group_label: "Symptom Version"
    type: number
    sql: ${TABLE}.SYMPTOMVERSION3 ;;
  }

  dimension: symptomversion4 {
    group_label: "Symptom Version"
    type: number
    sql: ${TABLE}.SYMPTOMVERSION4 ;;
  }

  dimension: symptomversion5 {
    group_label: "Symptom Version"
    type: number
    sql: ${TABLE}.SYMPTOMVERSION5 ;;
  }

  dimension: symptom_version_concat {
    type: string
    sql: CONCAT(${symptomversion1}, ", ", ${symptomversion2}, ", ", ${symptomversion3}, ", ", ${symptomversion4}, ", ", ${symptomversion5}) ;;
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
