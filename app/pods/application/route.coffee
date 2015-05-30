`import Ember from 'ember'`
`import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'`

ApplicationRoute = Ember.Route.extend ApplicationRouteMixin,
  actions:
    sessionInvalidationSucceeded: ->
      @transitionTo("login")
      return
    logout: ->
      @get('session').invalidate().then =>
        @transitionTo 'login'
      return

`export default ApplicationRoute`

