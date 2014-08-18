BaseRouter = require 'routers/Base'

require 'controllers/character'

CharacterRouter = BaseRouter.extend
  controller: require 'controllers/character'
  appRoutes:
    'characters/:id/': 'viewCharacterRoute'

module.exports = new CharacterRouter
