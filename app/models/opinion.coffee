`import DS from 'ember-data'`

Opinion = DS.Model.extend
  rating: DS.attr 'number'
  content: DS.attr 'string'
  user: DS.belongsTo 'user', async: true
  webinar: DS.belongsTo 'webinar', async: true

`export default Opinion`
