`import Ember from 'ember'`

WebinarsRoute = Ember.Route.extend
  model: ->
    @store.findAll 'webinar'

`export default WebinarsRoute`
