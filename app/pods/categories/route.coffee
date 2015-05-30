`import Ember from 'ember'`

CategoriesRoute = Ember.Route.extend
  model: ->
    @store.findAll 'category'

`export default CategoriesRoute`
