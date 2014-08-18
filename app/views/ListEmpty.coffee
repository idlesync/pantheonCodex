application = require 'application'

ListEmptyView = Marionette.ItemView.extend
  template: require('templates')(Handlebars)['app/templates/listEmpty.hbs']

module.exports = ListEmptyView
