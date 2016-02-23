- view: sb_message
  sql_table_name: jacksonriver.sb_message
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: body
    type: string
    sql: ${TABLE}.body

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: extra_props
    type: string
    sql: ${TABLE}.extra_props

  - dimension: sb_action
    type: number
    sql: ${TABLE}.sb_action

  - dimension: subject
    type: string
    sql: ${TABLE}.subject

  - dimension: target_district_code
    type: string
    sql: ${TABLE}.target_district_code

  - dimension: target_district_name
    type: string
    sql: ${TABLE}.target_district_name

  - dimension: target_fec_id
    type: string
    sql: ${TABLE}.target_fec_id

  - dimension: target_first_name
    type: string
    sql: ${TABLE}.target_first_name

  - dimension: target_gender
    type: string
    sql: ${TABLE}.target_gender

  - dimension: target_id
    type: number
    sql: ${TABLE}.target_id

  - dimension: target_last_name
    type: string
    sql: ${TABLE}.target_last_name

  - dimension: target_party
    type: string
    sql: ${TABLE}.target_party

  - dimension: target_person_id
    type: number
    sql: ${TABLE}.target_person_id

  - dimension: target_role
    type: string
    sql: ${TABLE}.target_role

  - dimension: target_salutation
    type: string
    sql: ${TABLE}.target_salutation

  - dimension: target_state
    type: string
    sql: ${TABLE}.target_state

  - dimension: target_type
    type: string
    sql: ${TABLE}.target_type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, target_first_name, target_last_name, target_district_name]

