`import Session from 'simple-auth/session'`

SessionWithCurrentUser = Session.extend
  currentUser: Ember.computed 'secure.uid', ->
    firebaseId = @get('secure.uid').split(':')[1]
    @container.lookup('store:main').find 'user',
      orderBy: 'firebaseId'
      equalTo: firebaseId


`export default {
  name: 'customize-session',
  initialize: function(container) {
    container.register('session:withCurrentUser', SessionWithCurrentUser);
  }
}`
