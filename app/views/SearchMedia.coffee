application = require 'application'

SearchMediaView = Marionette.ItemView.extend
  template: require('templates')(Handlebars)['app/templates/searchMedia.hbs']

  className: 'search-media-view'

  ui:
    input: 'input[type="search"]'
    form: 'form'

  events:
    'submit @ui.form': 'onFormSubmit'

  onFormSubmit: ($event) ->
    $event.preventDefault()

    query = @ui.input.val()

    application.vent.trigger 'search:all', {query}

module.exports = SearchMediaView
