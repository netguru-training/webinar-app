`import DS from 'ember-data'`

User = DS.Model.extend
  subscriptions: DS.hasMany 'subscriptions'

`export default User`
