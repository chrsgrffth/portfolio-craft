smoothstate = require('smoothstate')

app = require('./app')
transition = require('./modules/transition')
scrolling = require('./modules/scrolling')

(($) ->

  app.init()
  # scrolling.init()

  $main = $('#smoothstate')

  $.ajaxPrefilter ( options, originalOptions, jqXHR ) ->
    options.async = true


  smoothstate = $main.smoothState
    debug: true
    loadingClass: 'is-loading' # Show loader when is loading.
    blacklist: '.blacklist' # Use this class on elements to prevent using smoothstate.
    scroll: false

  #   onStart:
  #     duration: 500
  #     render: () ->
  #       transition.caseStudy('in')


    onReady:
      duration: 0 # Duration of the in animation.
      render: ($main, $newContent) ->

        # Load the new content to the container.
        $main.html($newContent)


  #   onAfter: ($main, $newContent) ->
  #     scrolling.init()


) jQuery