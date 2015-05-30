`import DS from 'ember-data'`

Webinar = DS.Model.extend {
  name: DS.attr('string')
  description: DS.attr('string'),
  state: DS.attr('string', {
    defaultValue: 'borrowed'
  }),
  user: DS.belongsTo('user')
}

`export default Webinar`
