`import DS from 'ember-data'`

Category = DS.Model.extend
  name: DS.attr 'string'
  webinars: DS.hasMany 'webinars', async: true

`export default Category`
