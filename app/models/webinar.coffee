`import DS from 'ember-data'`

Webinar = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  state: DS.attr 'string',
    defaultValue: 'new'
  user: DS.belongsTo 'user', async: true
  category: DS.hasMany 'category', async: true
  subscriptions: DS.hasMany 'subscriptions', async: true
  youtubeUrl: DS.attr 'string'

`export default Webinar`
