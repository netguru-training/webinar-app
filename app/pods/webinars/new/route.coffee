`import Ember from 'ember'`

WebinarsNewRoute = Ember.Route.extend
  model: ->
    Ember.RSVP.hash
      model: @store.createRecord('webinar')
      categories: @store.findAll('category')

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

  setupController: (controller, model) ->
    @_super(controller, model.model)
    controller.set('categories', model.categories)

`export default WebinarsNewRoute`
