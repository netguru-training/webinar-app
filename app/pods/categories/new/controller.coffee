`import Ember from 'ember';`

CategoryController = Ember.Controller.extend
  actions:
    save: ->
      @get("model").save().then (category) =>
        @transitionToRoute("categories.show", category)

`export default CategoryController`
