- view: sb_action
  sql_table_name: jacksonriver.sb_action
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: extra_props
    type: string
    sql: ${TABLE}.extra_props

  - dimension: sb_contact
    type: string
    sql: ${TABLE}.sb_contact

  - dimension: sb_form
    type: string
    sql: ${TABLE}.sb_form

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id]

