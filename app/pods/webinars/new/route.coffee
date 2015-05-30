`import Ember from 'ember'`

WebinarsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'webinar'
  actions:
    save: ->
      @controller.get('model').save().then =>
        @transitionTo 'webinars'
      return

`export default WebinarsNewRoute`
