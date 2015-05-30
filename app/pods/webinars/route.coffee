`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

WebinarsRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    @store.findAll 'webinar'

`export default WebinarsRoute`
