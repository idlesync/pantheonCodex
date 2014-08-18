application = require 'application'

ListItemView = Marionette.ItemView.extend
  template: require('templates')(Handlebars)['app/templates/listItem.hbs']

  className: 'col-lg-2 col-md-3 col-xs-6'

  events:
    'click a': 'onClick'

  onClick: ($event) ->
    $event.preventDefault()

    href = $($event.currentTarget).attr 'href'

    application.vent.trigger 'navigate:link', {href}

module.exports = ListItemView
