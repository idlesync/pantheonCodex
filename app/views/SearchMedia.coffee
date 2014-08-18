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

    href = "#/?q=#{query}"

    application.vent.trigger 'navigate:link', {href}

module.exports = SearchMediaView
