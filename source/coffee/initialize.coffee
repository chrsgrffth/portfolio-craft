smoothstate = require('smoothstate')

app = require('./app')
transition = require('./modules/transition')
scrolling = require('./modules/scrolling')

pageTransitionOut = 'upOut'
pageTransitionIn = 'upIn'

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
    cacheLength: 2

    onStart:
      duration: 550
      render: () ->
        transition.page(pageTransitionOut, 500)

    onReady:
      duration: 550 # Duration of the in animation.

      render: ($main, $newContent) ->
        # Load the new content to the container.
        $main.html($newContent)
        transition.page(pageTransitionIn, 500)

    # onAfter: ($main) ->
    #   scrolling.init()


  if $('#reading-indicator').length > 0
    length = $(document).height()-$(window).height()

    $(window).on 'scroll', ->
      $('#reading-indicator span').text (($(this).scrollTop()/length)*100).toFixed(0)


  $(document).on 'click', '#global-header a', (e) ->
    $this = $(this)

    if $this.attr('class').indexOf('blacklist') == -1
      e.preventDefault()

      smoothstate = $('#smoothstate').smoothState().data('smoothState')
      linkTo = $this.attr('href')
      smoothstate.load(linkTo) 


  # Events.
  $(document).on 'mouseover', 'article', ->
    transition.article(@, 'focusIn')

  $(document).on 'mouseout', 'article', ->
    transition.article(@, 'focusOut')


) jQuery