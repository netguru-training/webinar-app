`import Ember from 'ember';`

WebinarRow = Ember.Component.extend
  tagName: 'li'
  classNames: ['list-group-item']

  actions:
    toggleSub: ->
      @sendAction "toggleSub", @get("webinar.content"), @get("webinar.subscribed")
      return

`export default WebinarRow`
