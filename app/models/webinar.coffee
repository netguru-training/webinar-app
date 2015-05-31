`import DS from 'ember-data'`

Webinar = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  state: DS.attr 'string',
    defaultValue: 'new'
  user: DS.belongsTo 'user', async: true
  youtubeUrl: DS.attr 'string'
  categories: DS.hasMany 'category', async: true
  subscriptions: DS.hasMany 'subscription', async: true

`export default Webinar`
