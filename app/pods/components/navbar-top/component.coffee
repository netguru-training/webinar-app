`import Ember from 'ember';`

Navbar = Ember.Component.extend
  actions:
    logout: ->
      @sendAction "logout"
      return

`export default Navbar`
