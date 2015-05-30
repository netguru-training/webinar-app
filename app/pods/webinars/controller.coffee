`import Ember from 'ember'`

WebinarsController = Ember.Controller.extend
  proxyWebinars: Ember.computed "model.[]", "subscriptions.[]", "subscriptionsLoaded", ->
    @get("model").map (item) =>
      subscribed = @get("session.currentUser").then( (users) =>
        currentUser = users.toArray()[0]
        currentUser.get("subscriptions")
      ).then( (subscriptions) =>
        subscriptions.toArray().filterBy("webinar", item).toArray().length
      )
      Ember.Object.create
        content: item
        subscribed: subscribed

`export default WebinarsController`
