`import Ember from 'ember'`

WebinarsNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'webinar'
  actions:
    save: ->
      model = @controller.get('model')
      @get('session.currentUser').then( (users) =>
        user = users.toArray()[0]
        model.set('user', user)
        model.save()
      ).then =>
        @transitionTo 'webinars'
      return

`export default WebinarsNewRoute`
