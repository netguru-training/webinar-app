`import Ember from 'ember'`

WebinarsController = Ember.Controller.extend
  proxyWebinars: Ember.computed "model.[]", ->
    currentSubscriptions = @get('currentSubscriptions')
    webinars = @get('model')
    webinars.map (webinar) ->
      subscribed = currentSubscriptions.filterBy('webinar.id', webinar.get('id')).length
      Ember.Object.create
        content: webinar
        subscribed: subscribed

`export default WebinarsController`
