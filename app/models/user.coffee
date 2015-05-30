`import DS from 'ember-data'`

User = DS.Model.extend
  subscriptions: DS.hasMany 'subscriptions', async: true
  firebaseId: DS.attr('string')
  email: DS.attr('email')

`export default User`
