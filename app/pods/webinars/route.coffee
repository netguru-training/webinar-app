`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

WebinarsRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    Ember.RSVP.hash
      webinars: @store.findAll('webinar')
      subscriptions: @store.findAll('subscription')
      currentUser: @get('session.currentUser')

  setupController: (controller, model) ->
    @controller.setProperties
      'model': model.webinars
      'subscriptions': model.subscriptions
      'currentUser': model.currentUser.get('firstObject')

    model.currentUser.get('subscriptions').then (subs)=>
      @controller.setProperties
        'currentSubscriptions': subs

`export default WebinarsRoute`
