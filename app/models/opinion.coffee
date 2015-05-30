`import DS from 'ember-data'`

Opinion = DS.Model.extend
  rating: DS.attr 'number'
  content: DS.attr 'string'
  user: DS.belongsTo 'user'
  webinar: DS.belongsTo 'webinar'

`export default Opinion`
