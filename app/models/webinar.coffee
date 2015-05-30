`import DS from 'ember-data'`

Webinar = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  state: DS.attr 'string',
    defaultValue: 'new'
  user: DS.belongsTo 'user', async: true
  category: DS.belongsTo 'category', async: true
  subscriptions: DS.hasMany 'subscriptions', async: true

`export default Webinar`
