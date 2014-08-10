application = require 'application'

ListItemView = Marionette.ItemView.extend
  template: require('templates')(Handlebars)['app/templates/listItem.hbs']

  tagName: 'li'

module.exports = ListItemView
