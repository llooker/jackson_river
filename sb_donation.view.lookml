- view: sb_donation
  sql_table_name: jacksonriver.sb_donation
  fields:

  - dimension: id
    primary_key: true
    type: string
    sql: ${TABLE}.id

  - dimension: amount
    type: string
    sql: ${TABLE}.amount
    value_format_name: usd

  - dimension: cid
    type: string
    sql: ${TABLE}.cid

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: currency
    type: string
    sql: ${TABLE}.currency

  - dimension: device_browser
    type: string
    sql: ${TABLE}.device_browser

  - dimension: device_name
    type: string
    sql: ${TABLE}.device_name

  - dimension: device_os
    type: string
    sql: ${TABLE}.device_os

  - dimension: device_type
    type: string
    sql: ${TABLE}.device_type

  - dimension: extra_props
    type: string
    sql: ${TABLE}.extra_props

  - dimension: initial_referrer
    type: string
    sql: ${TABLE}.initial_referrer

  - dimension: ms
    type: string
    sql: ${TABLE}.ms

  - dimension: recurring
    type: string
    sql: ${TABLE}.recurring

  - dimension: referrer
    type: string
    sql: ${TABLE}.referrer

  - dimension: sb_contact
    type: string
    sql: ${TABLE}.sb_contact

  - dimension: sb_form
    type: string
    sql: ${TABLE}.sb_form

  - dimension: sb_opportunity_id
    type: string
    sql: ${TABLE}.sb_opportunity_id

  - dimension: search_engine
    type: string
    sql: ${TABLE}.search_engine

  - dimension: search_string
    type: string
    sql: ${TABLE}.search_string

  - dimension: status
    type: string
    sql: ${TABLE}.status

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_agent
    type: string
    sql: ${TABLE}.user_agent

  - measure: count
    type: count
    drill_fields: [id, device_name]
    
  - measure: total_dollar_amount
    type: sum
    sql: ${amount}
    value_format_name: usd
  
  
  - measure: average_dollar_amount
    type: average
    sql: ${amount}
    value_format_name: usd
  
  
  
  
  
  
  
  
  
  
  

