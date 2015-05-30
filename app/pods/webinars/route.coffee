`import Ember from 'ember'`
`import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'`

WebinarsRoute = Ember.Route.extend AuthenticatedRouteMixin,
  actions:
    toggleSubscription: (webinar, subscribed) ->
      if subscribed
        @controller.set("subscriptionsLoaded", false)
        subs = @controller.get("currentSubscriptions").filterBy("webinar.id", webinar.get("id"))
        destroyPromises = subs.map (sub) =>
          sub.destroyRecord()
        Ember.RSVP.all(destroyPromises).then =>
          @controller.set("subscriptionsLoaded", true)
      else
        @store.createRecord("subscription",
          webinar: webinar
          user: @controller.get("currentUser")
        ).save().then =>
          @controller.set("subscriptionsLoaded", true)
      return

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
