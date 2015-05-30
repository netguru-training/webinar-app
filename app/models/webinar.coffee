`import DS from 'ember-data'`

Webinar = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  state: DS.attr 'string',
    defaultValue: 'new'
  user: DS.belongsTo 'user'
  subscriptions: DS.hasMany 'subscriptions'

`export default Webinar`
