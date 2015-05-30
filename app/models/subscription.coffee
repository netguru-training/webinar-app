`import DS from 'ember-data'`

Subscription = DS.Model.extend
  user: DS.belongsTo 'user', async: true
  webinar: DS.belongsTo 'webinar', async: true

`export default Subscription`
