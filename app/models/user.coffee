`import DS from 'ember-data'`

User = DS.Model.extend
  subscriptions: DS.hasMany 'subscriptions', async: true
  firebaseId: DS.attr('string')

`export default User`
