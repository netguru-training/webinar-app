`import Ember from 'ember'`

WebinarsController = Ember.Controller.extend
  proxyWebinars: Ember.computed "model.[]", "subscriptions.[]", "subscriptionsLoaded", ->
    @get("model").map (item) =>
      subscribed = @get("currentSubscriptions").filterBy("webinar.id", item.get("id")).length
      Ember.Object.create
        content: item
        subscribed: subscribed

`export default WebinarsController`
