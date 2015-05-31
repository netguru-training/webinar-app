`import Ember from 'ember'`

WebinarsNewRoute = Ember.Route.extend
  model: ->
    Ember.RSVP.hash
      model: @store.createRecord('webinar')
      categories: @store.findAll('category')

  actions:
    save: (choosenCategories) ->
      model = @controller.get('model')

      @get('session.currentUser').then( (users) =>
        user = users.toArray()[0]
        model.set('user', user)
        model.get('categories').pushObjects(choosenCategories)
        model.save()
      ).then =>
        @transitionTo 'webinars'
      return

  setupController: (controller, model) ->
    @_super(controller, model.model)
    controller.set('categories', model.categories)

  deactivate: ->
    model = @controller.get('model')
    model.destroyRecord() if model.get('isNew')

`export default WebinarsNewRoute`
