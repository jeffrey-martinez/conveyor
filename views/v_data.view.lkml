view: v_data {
  sql_table_name: `tres.v_data`
    ;;

  dimension: age_yrs {
    type: number
    sql: ${TABLE}.AGE_YRS ;;
  }

  dimension: age_tiers {
    type: tier
    style: integer
    tiers: [0,10,20,30,40,50,60,70,80]
    sql: ${age_yrs} ;;
  }

  dimension: allergies {
    type: string
    sql: ${TABLE}.ALLERGIES ;;
  }

  dimension: birth_defect {
    type: string
    sql: ${TABLE}.BIRTH_DEFECT ;;
  }

  dimension: cage_mo {
    hidden: yes
    type: number
    sql: ${TABLE}.CAGE_MO ;;
  }

  dimension: cage_yr {
    label: "Current Age"
    type: number
    sql: ${TABLE}.CAGE_YR ;;
  }

  dimension: cur_ill {
    label: "Current Illness"
    type: string
    sql: ${TABLE}.CUR_ILL ;;
  }

  dimension_group: datedied {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATEDIED ;;
  }

  dimension_group: vaccinated_to_died {
    type: duration
    sql_start: ${TABLE}.VAX_DATE ;;
    sql_end: ${TABLE}.DATEDIED ;;
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension: died {
    type: yesno
    sql: ${TABLE}.DIED ;;
  }

  dimension: disable {
    description: "Is the patient disabled?"
    type: yesno
    sql: ${TABLE}.DISABLE ;;
  }

  dimension: er_ed_visit {
    type: string
    sql: ${TABLE}.ER_ED_VISIT ;;
  }

  dimension: er_visit {
    type: yesno
    sql: ${TABLE}.ER_VISIT ;;
  }

  dimension: form_vers {
    hidden: yes
    type: number
    sql: ${TABLE}.FORM_VERS ;;
  }

  dimension: history {
    label: "Medical History"
    type: string
    sql: ${TABLE}.HISTORY ;;
  }

  dimension: hospdays {
    label: "Days spent in hospital"
    type: number
    sql: ${TABLE}.HOSPDAYS ;;
  }

  dimension: hospital {
    label: "Required hospitalization?"
    type: yesno
    sql: ${TABLE}.HOSPITAL ;;
  }

  dimension: l_threat {
    label: "Life threatening?"
    type: yesno
    sql: ${TABLE}.L_THREAT ;;
  }

  dimension: lab_data {
    type: string
    sql: ${TABLE}.LAB_DATA ;;
  }

  dimension: numdays {
    label: "Days from vaccination to onset"
    type: number
    sql: ${TABLE}.NUMDAYS ;;
  }

  dimension: ofc_visit {
    type: string
    sql: ${TABLE}.OFC_VISIT ;;
  }

  dimension_group: vaccinated_to_onset {
    type: duration
    sql_start: ${TABLE}.VAX_DATE ;;
    sql_end: ${TABLE}.ONSET_DATE ;;
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
  }

  dimension_group: onset {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ONSET_DATE ;;
  }

  dimension: other_meds {
    type: string
    sql: ${TABLE}.OTHER_MEDS ;;
  }

  dimension: prior_vax {
    type: string
    sql: ${TABLE}.PRIOR_VAX ;;
  }

  dimension: recovd {
    label: "Is recovered?"
    type: string
    sql: ${TABLE}.RECOVD ;;
  }

  dimension_group: recvdate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.RECVDATE ;;
  }

  dimension_group: rpt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.RPT_DATE ;;
  }

  dimension: sex {
    type: string
    sql: ${TABLE}.SEX ;;
  }

  dimension: splttype {
    type: string
    sql: ${TABLE}.SPLTTYPE ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
  }

  dimension: symptom_text {
    type: string
    sql: ${TABLE}.SYMPTOM_TEXT ;;
  }

  dimension: todays_date {
    type: string
    sql: ${TABLE}.TODAYS_DATE ;;
  }

  dimension: v_adminby {
    type: string
    sql: ${TABLE}.V_ADMINBY ;;
  }

  dimension: v_fundby {
    type: string
    sql: ${TABLE}.V_FUNDBY ;;
  }

  dimension: vaers_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.VAERS_ID ;;
  }

  dimension_group: vax {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.VAX_DATE ;;
  }

  dimension: x_stay {
    type: yesno
    sql: ${TABLE}.X_STAY ;;
  }

  measure: max_id {
    type: max
    sql: ${vaers_id} ;;
  }

  measure: count {
    type: count
    filters: [vaers_id: "NOT NULL"]
    drill_fields: [drill_set*]
  }

  set: drill_set {
    fields: [vaers_id, sex, age_yrs, vax_date, onset_date, v_adminby, allergies, symptom_text, died, datedied_date]
  }
}
