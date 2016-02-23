- connection: redshift_schema_updated

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: sb_donation
  joins:
    - join: sb_contact
      type: left_outer
      relationship: many_to_one
      sql_on: ${sb_donation.sb_contact} = ${sb_contact.id}
      
    - join: sb_form
      type: left_outer
      relationship: many_to_one
      sql_on: ${sb_donation.sb_form} = ${sb_form.id}