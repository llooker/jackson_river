- view: sb_contact
  sql_table_name: jacksonriver.sb_contact
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: address
    type: string
    sql: ${TABLE}.address

  - dimension: address_2
    type: string
    sql: ${TABLE}.address_2

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: country
    type: string
    sql: ${TABLE}.country

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: extra_props
    type: string
    sql: ${TABLE}.extra_props

  - dimension: first_name
    type: string
    sql: ${TABLE}.first_name

  - dimension: last_name
    type: string
    sql: ${TABLE}.last_name

  - dimension: postal_code
    type: string
    sql: ${TABLE}.postal_code

  - dimension: sf_account_id
    type: number
    sql: ${TABLE}.sf_account_id

  - dimension: sf_contact_id
    type: number
    sql: ${TABLE}.sf_contact_id

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    drill_fields: [id, first_name, last_name]

