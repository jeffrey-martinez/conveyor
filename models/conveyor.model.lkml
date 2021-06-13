connection: "home_bq"

# include all the views
include: "/views/**/*.view"
include: "/history/*.view"

datagroup: conveyor_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: conveyor_default_datagroup

explore: april_30_2021_data {
  label: "Vaers Comparison"
  join: may_07_2021_data {
    type: full_outer
    relationship: one_to_one
    sql_on: ${april_30_2021_data.vaers_id} = ${may_07_2021_data.vaers_id} ;;
  }
  join: may_14_2021_data {
    type: full_outer
    relationship: one_to_one
    sql_on: ${may_07_2021_data.vaers_id} = ${may_14_2021_data.vaers_id} ;;
  }
  join: may_21_2021_data {
    type: full_outer
    relationship: one_to_one
    sql_on: ${may_14_2021_data.vaers_id} = ${may_21_2021_data.vaers_id} ;;
  }
  join: may_28_2021_data {
    type: full_outer
    relationship: one_to_one
    sql_on: ${may_21_2021_data.vaers_id} = ${may_28_2021_data.vaers_id} ;;
  }
  join: june_04_2021_data {
    type: full_outer
    relationship: one_to_one
    sql_on: ${may_28_2021_data.vaers_id} = ${june_04_2021_data.vaers_id} ;;
  }
}

explore: v_data {
  view_label: "Adverse Event Reports"
  label: "Full Data"
  join: symptoms {
    sql_on: ${v_data.vaers_id} = ${symptoms.vaers_id} ;;
    relationship: many_to_one
  }
  join: vax {
    relationship: many_to_one
    sql_on: ${v_data.vaers_id} = ${vax.vaers_id} ;;
  }
}
