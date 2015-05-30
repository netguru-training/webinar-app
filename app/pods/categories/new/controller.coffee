`import Ember from 'ember';`

CategoryController = Ember.Controller.extend
  actions:
    save: ->
      @get("model").save().then =>
        @transitionToRoute("categories.index")

`export default CategoryController`
