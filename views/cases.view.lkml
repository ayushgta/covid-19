view: cases {
  sql_table_name: covid.cases ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: confirmed {
    type: number
    sql: ${TABLE}.confirmed ;;
  }

  dimension: confirmed_to_date {
    type: number
    sql: ${TABLE}.confirmedToDate ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}.deaths ;;
  }

  dimension: deaths_to_date {
    type: number
    sql: ${TABLE}.deathsToDate ;;
  }

  dimension: province {
    type: string
    sql: ${TABLE}.province ;;
  }

  dimension: recovered {
    type: number
    sql: ${TABLE}.recovered ;;
  }

  dimension: recovered_to_date {
    type: number
    sql: ${TABLE}.recoveredToDate ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
