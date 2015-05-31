`import Ember from 'ember';`

WebinarRow = Ember.Component.extend
  tagName: 'li'
  classNames: ['list-group-item', 'styled-item']

  actions:
    toggle: ->
      @sendAction "toggle", @get('webinar.content'), @get('webinar.subscribed')

`export default WebinarRow`
