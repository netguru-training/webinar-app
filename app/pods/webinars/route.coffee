`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

WebinarsRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    webinarData =
      webinars: @store.findAll 'webinar'
      subscriptions: @store.findAll 'subscription'
      currentUser: @get("session.currentUser")
    Ember.RSVP.hash(webinarData)

  setupController: (controller, model) ->
    @controller.setProperties
      "model": model.webinars
      "subscriptions": model.subscriptions
      "currentUser": model.currentUser.get("firstObject")
      "subscriptionsLoaded": false
    model.currentUser.get("firstObject.subscriptions").then (subs) =>
      @controller.setProperties
        "currentSubscriptions": subs
        "subscriptionsLoaded": true

`export default WebinarsRoute`
