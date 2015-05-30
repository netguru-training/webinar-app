`import DS from 'ember-data'`

Subscription = DS.Model.extend
  user: DS.belongsTo 'user'
  user: DS.belongsTo 'webinar'

`export default Subscription`
