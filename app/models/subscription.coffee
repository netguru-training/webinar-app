`import DS from 'ember-data'`

Subscription = DS.Model.extend
  user: DS.belongsTo 'user', async: true
  user: DS.belongsTo 'webinar', async: true

`export default Subscription`
