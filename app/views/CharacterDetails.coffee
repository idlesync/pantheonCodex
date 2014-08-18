application = require 'application'

require 'helpers/mediaItem'

CharacterDetailsView = Marionette.ItemView.extend
  template: require('templates')(Handlebars)['app/templates/characterDetails.hbs']

module.exports = CharacterDetailsView
