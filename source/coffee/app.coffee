Vue = require('vue')

module.exports =
  app: null

  init: ->
    @app = new Vue({
      el: 'body',
      components:
        panelLink: require('./components/panel-link')
    })

  destroy: ->
    @app.$destroy()