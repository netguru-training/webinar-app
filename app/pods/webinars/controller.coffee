`import Ember from 'ember'`

WebinarsController = Ember.Controller.extend
  proxyWebinars: Ember.computed "model.[]", ->
    @get("model").map (item) =>
      subscribed = @get('currentProperties').filterBy('webinar.id', item.get('id'))
      Ember.Object.create
        content: item
        subscribed: subscribed

`export default WebinarsController`
