`import Ember from 'ember'`

SignUpController = Ember.Controller.extend
  actions:
    signUp: ->
      if @get('password') == @get('confirmedPassword')

        ref = new Firebase('https://webinar-app.firebaseio.com/')

        ref.createUser {
          email: @get('email')
          password: @get('password')
        }, (error, userData) ->
          if error
            console.log 'Error creating user:', error
          else
            console.log 'Successfully created user account with uid:', userData.uid

    cancel: ->
      @transitionTo('application')

`export default SignUpController`
