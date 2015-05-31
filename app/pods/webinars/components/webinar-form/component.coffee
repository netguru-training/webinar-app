`import Ember from 'ember';`

WebinarForm = Ember.Component.extend
  statuses: ["new", "rejected", "approved", "finished"]
  actions:
    save: ->
      @sendAction 'save', @get('choosenCategories')

`export default WebinarForm`
