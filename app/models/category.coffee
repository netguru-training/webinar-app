`import DS from 'ember-data'`

Category = DS.Model.extend
  name: DS.attr 'string'
  webinars: DS.hasMany 'webinar', async: true

`export default Category`
