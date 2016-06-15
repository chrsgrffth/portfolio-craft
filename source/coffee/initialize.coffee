jQuery = require('jquery')

app = require('./app')
scrolling = require('./scrolling')

(($) ->

  app.init()
  scrolling.init()

) jQuery