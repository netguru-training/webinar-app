`import Ember from 'ember'`

SignUpController = Ember.Controller.extend
  actions:
    signUp: ->
      if @get('password') == @get('confirmedPassword')

        ref = new Firebase('https://webinar-app.firebaseio.com/')

        ref.createUser {
          email: @get('email')
          password: @get('password')
        }, (error, userData) =>
          if error
            console.log 'Error creating user:', error
          else
            id = userData.uid.split(":")[1]
            @store.createRecord('user', { firebaseId: id }).save().then (user) =>
              @login()
        return

    cancel: ->
      @transitionToRoute('login')

  login: ->
    @get('session').authenticate('authenticator:firebase',
      'email': @get('email')
      'password': @get('password')
    ).then (result) =>
      @transitionToRoute 'webinars'
    return


`export default SignUpController`
