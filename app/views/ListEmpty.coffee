application = require 'application'

ListEmptyView = Marionette.ItemView.extend
  template: require('templates')(Handlebars)['app/templates/listEmpty.hbs']

  tagName: 'li'

module.exports = ListEmptyView
