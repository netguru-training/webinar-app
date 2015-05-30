`import Ember from 'ember';`

CategoryRoute = Ember.Route.extend
  model: ->
    @store.createRecord("category")

`export default CategoryRoute;`
