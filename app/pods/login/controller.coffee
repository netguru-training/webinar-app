`import Ember from 'ember'`

LoginController = Ember.Controller.extend
  actions:
    login: ->
      @get('session').authenticate('authenticator:firebase',
        'email': @get('email')
        'password': @get('password')
      ).then (result) =>
        @transitionToRoute 'webinars'
        return
      return

    logout: ->
      @get('session').invalidate().then (->
        @transitionToRoute 'login'
        return
      ).bind(this)
      return

    cancel: ->
      @transitionTo('application')

`export default LoginController`
