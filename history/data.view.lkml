include: "../views/v_data.view"

view: april_30_2021_data {
  extends: [v_data]
  sql_table_name: `shoot-your-shot-313802.underscores_allowed.the_data_2021_04_30`
    ;;

  dimension: a30_m07_check {
    view_label: " Comparison Filters"
    type: yesno
    sql: (${april_30_2021_data.vaers_id} > 0) AND ( ${may_07_2021_data.vaers_id} IS NULL) ;;
  }

  measure: week_1_not_in_2 {
    type: count
    filters: [a30_m07_check: "Yes"]
    drill_fields: [drill_set*]
  }

  measure: week_1_not_in_2_deaths {
    type: count
    filters: [a30_m07_check: "Yes", died: "Yes"]
    drill_fields: [drill_set*]
    html: {{ april_30_2021_data.week_1_not_in_2._rendered_value }} rows missing since previous week, including {{rendered_value}} deaths ;;
  }
}

view: may_07_2021_data {
  extends: [v_data]
  sql_table_name: `shoot-your-shot-313802.underscores_allowed.the_data_2021_05_07`
    ;;

  dimension: m07_m14_check {
    view_label: " Comparison Filters"
    type: yesno
    sql: (${may_07_2021_data.vaers_id} > 0) AND ( ${may_14_2021_data.vaers_id} IS NULL) ;;
  }

  measure: week_2_not_in_3 {
    type: count
    filters: [m07_m14_check: "Yes"]
    drill_fields: [drill_set*]
  }

  measure: week_2_not_in_3_deaths {
    type: count
    filters: [m07_m14_check: "Yes", died: "Yes"]
    drill_fields: [drill_set*]
    html: {{ may_07_2021_data.week_2_not_in_3._rendered_value }} rows missing since previous week, including {{rendered_value}} deaths ;;
  }
}

view: may_14_2021_data {
  extends: [v_data]
  sql_table_name: `shoot-your-shot-313802.underscores_allowed.the_data_2021_05_14`
    ;;

  dimension: m14_m21_check {
    view_label: " Comparison Filters"
    type: yesno
    sql: (${may_14_2021_data.vaers_id} > 0) AND ( ${may_21_2021_data.vaers_id} IS NULL) ;;
  }

  measure: week_3_not_in_4 {
    type: count
    filters: [m14_m21_check: "Yes"]
    drill_fields: [drill_set*]
  }

  measure: week_3_not_in_4_deaths {
    type: count
    filters: [m14_m21_check: "Yes", died: "Yes"]
    drill_fields: [drill_set*]
    html: {{ may_14_2021_data.week_3_not_in_4._rendered_value }} rows missing since previous week, including {{rendered_value}} deaths ;;
  }
}

view: may_21_2021_data {
  extends: [v_data]
  sql_table_name: `shoot-your-shot-313802.underscores_allowed.the_data_2021_05_21`
    ;;

  dimension: m21_m28_check {
    view_label: " Comparison Filters"
    type: yesno
    sql: (${may_21_2021_data.vaers_id} > 0) AND ( ${may_28_2021_data.vaers_id} IS NULL) ;;
  }

  measure: week_4_not_in_5 {
    type: count
    filters: [m21_m28_check: "Yes"]
    drill_fields: [drill_set*]
  }

  measure: week_4_not_in_5_deaths {
    type: count
    filters: [m21_m28_check: "Yes", died: "Yes"]
    drill_fields: [drill_set*]
    html: {{ may_21_2021_data.week_4_not_in_5._rendered_value }} rows missing since previous week, including {{rendered_value}} deaths ;;
  }
}

view: may_28_2021_data {
  extends: [v_data]
  sql_table_name: `shoot-your-shot-313802.underscores_allowed.the_data_2021_05_28`
    ;;

  dimension: m28_ju04_check {
    view_label: " Comparison Filters"
    type: yesno
    sql: (${may_28_2021_data.vaers_id} > 0) AND ( ${june_04_2021_data.vaers_id} IS NULL) ;;
  }

  measure: week_5_not_in_6 {
    type: count
    filters: [m28_ju04_check: "Yes"]
    drill_fields: [drill_set*]
  }

  measure: week_5_not_in_6_deaths {
    type: count
    filters: [m28_ju04_check: "Yes", died: "Yes"]
    drill_fields: [drill_set*]
    html: {{ may_28_2021_data.week_5_not_in_6._rendered_value }} rows missing since previous week, including {{rendered_value}} deaths ;;
  }
}

view: june_04_2021_data {
  extends: [v_data]
  sql_table_name: `shoot-your-shot-313802.underscores_allowed.the_data_2021_06_04`
    ;;
  }
