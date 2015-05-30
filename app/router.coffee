`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @route 'login'
  @route 'sign-up'

  @route "webinars", path: "/", ->
    @route "index", path: "/"

  @route "webinar", path: ":webinar_id", ->
    @route "show", path: ""
    @route "opinions"
    @route "subscriptions"

  @route "categories", ->
    @route "category", path: ":category_id", ->
      @route "webinars"
  @route 'webinars/new'

`export default Router;`
