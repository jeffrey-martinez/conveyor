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
    label: "April 30 vs. May 07"
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
    label: "May 07 vs May 14"
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
    label: "May 14 vs. May 21"
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
    label: "May 21 vs. May 28"
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
    label: "May 28 vs. June 04"
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

  dimension: ju04_ju11_check {
    view_label: " Comparison Filters"
    type: yesno
    sql: (${june_04_2021_data.vaers_id} > 0) AND ( ${june_11_2021_data.vaers_id} IS NULL) ;;
  }

  measure: week_6_not_in_7 {
    type: count
    filters: [ju04_ju11_check: "Yes"]
    drill_fields: [drill_set*]
  }

  measure: week_6_not_in_7_deaths {
    label: "June 04 vs. June 11"
    type: count
    filters: [ju04_ju11_check: "Yes", died: "Yes"]
    drill_fields: [drill_set*]
    html: {{ june_04_2021_data.week_6_not_in_7._rendered_value }} rows missing since previous week, including {{rendered_value}} deaths ;;
  }
}

view: june_11_2021_data {
  extends: [v_data]
  sql_table_name: `shoot-your-shot-313802.underscores_allowed.the_data_2021_06_11`
    ;;

  dimension: ju11_ju18_check {
    view_label: " Comparison Filters"
    type: yesno
    sql: (${june_11_2021_data.vaers_id} > 0) AND ( ${june_18_2021_data.vaers_id} IS NULL) ;;
  }

  measure: week_7_not_in_8 {
    type: count
    filters: [ju11_ju18_check: "Yes"]
    drill_fields: [drill_set*]
  }

  measure: week_7_not_in_8_deaths {
    label: "June 11 vs. June 18"
    type: count
    filters: [ju11_ju18_check: "Yes", died: "Yes"]
    drill_fields: [drill_set*]
    html: {{ june_11_2021_data.week_7_not_in_8._rendered_value }} rows missing since previous week, including {{rendered_value}} deaths ;;
  }
}

view: june_18_2021_data {
  extends: [v_data]
  sql_table_name: `shoot-your-shot-313802.underscores_allowed.the_data_2021_06_18`
    ;;
}

view: st {
  derived_table: {
    sql: SELECT vaers_id, CASE WHEN (REGEXP_EXTRACT(element, r"^[a-zA-Z0-9_]*$")) NOT IN ("i", " ", "me", "my", "myself", "we", "our", "ours", "ourselves", "you", "your", "yours", "yourself", "yourselves", "he", "him", "his", "himself", "she", "her", "hers", "herself", "it", "its", "itself", "they", "them", "their", "theirs", "themselves", "what", "which", "who", "whom", "this", "that", "these", "those", "am", "is", "are", "was", "were", "be", "been", "being", "have", "has", "had", "having", "do", "does", "did", "doing", "a", "an", "the", "and", "but", "if", "or", "because", "as", "until", "while", "of", "at", "by", "for", "with", "about", "against", "between", "into", "through", "during", "before", "after", "above", "below", "to", "from", "up", "down", "in", "out", "on", "off", "over", "under", "again", "further", "then", "once", "here", "there", "when", "where", "why", "how", "all", "any", "both", "each", "few", "more", "most", "other", "some", "such", "no", "nor", "not", "only", "own", "same", "so", "than", "too", "very", "s", "t", "can", "will", "just", "don", "should", "now") THEN (REGEXP_EXTRACT(element, r"^[a-zA-Z0-9_]*$")) ELSE NULL END element, offset
      FROM tres.v_data, UNNEST(SPLIT(LOWER(symptom_text), " "))
        AS element
      WITH OFFSET AS offset
       ;;
    persist_for: "168 hours"
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: pk_01 {
    hidden: yes
    sql: CONCAT(${vaers_id}, COALESCE(${TABLE}.element, "x"), ${TABLE}.offset) ;;
    primary_key: yes
  }

  dimension: vaers_id {
    type: number
    sql: ${TABLE}.vaers_id ;;
  }

  dimension: element {
    type: string
    sql: ${TABLE}.element ;;
  }

  dimension: offset {
    type: number
    sql: ${TABLE}.offset ;;
  }

  set: detail {
    fields: [vaers_id, element, offset]
  }
}

# view: st {
#   sql_table_name: UNNEST(SPLIT(UPPER(symptom_text), " ")) ;;

#   dimension: string {
#     type: string
#     sql: CASE WHEN LOWER(${reg_string}) NOT IN ("i", " ", "me", "my", "myself", "we", "our", "ours", "ourselves", "you", "your", "yours", "yourself", "yourselves", "he", "him", "his", "himself", "she", "her", "hers", "herself", "it", "its", "itself", "they", "them", "their", "theirs", "themselves", "what", "which", "who", "whom", "this", "that", "these", "those", "am", "is", "are", "was", "were", "be", "been", "being", "have", "has", "had", "having", "do", "does", "did", "doing", "a", "an", "the", "and", "but", "if", "or", "because", "as", "until", "while", "of", "at", "by", "for", "with", "about", "against", "between", "into", "through", "during", "before", "after", "above", "below", "to", "from", "up", "down", "in", "out", "on", "off", "over", "under", "again", "further", "then", "once", "here", "there", "when", "where", "why", "how", "all", "any", "both", "each", "few", "more", "most", "other", "some", "such", "no", "nor", "not", "only", "own", "same", "so", "than", "too", "very", "s", "t", "can", "will", "just", "don", "should", "now") THEN ${reg_string} ELSE NULL END ;;
#   }

#   dimension: reg_string {
#     hidden: yes
#     type: string
#     sql: REGEXP_EXTRACT(${TABLE}, r"^[a-zA-Z0-9_]*$") ;;
#   }

#   measure: count {
#     type:
#   }
# }
