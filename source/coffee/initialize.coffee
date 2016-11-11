smoothstate = require('smoothstate')
transition = require('./modules/transition')

# Defaults.
pageTransitionOut = 'upOut'
pageTransitionIn = 'upIn'

(($) ->

  # Globals.
  $main = $('#smoothstate')

  $.ajaxPrefilter ( options, originalOptions, jqXHR ) ->
    options.async = true

  smoothstate = $main.smoothState
    debug: true
    scroll: false
    loadingClass: 'is-loading' # Show loader when is loading.
    blacklist: '.blacklist' # Use this class on elements to prevent using smoothstate.
    cacheLength: 2

    onStart:
      duration: 510
      render: () ->
        transition.page(pageTransitionOut, 500)

    onReady:
      duration: 510 # Duration of the in animation.

      render: ($main, $newContent) ->
        # Load the new content to the container.
        $main.html($newContent)
        transition.page(pageTransitionIn, 500)

    onAfter: ->
      if ga?
        ga('set', 'page', window.location.pathname)
        ga('send', 'pageview')
      else
        return


  # Header links.
  $(document).on 'click', '#global-header a', (e) ->
    $this = $(this)

    if $this.attr('class').indexOf('blacklist') == -1
      e.preventDefault()

      smoothstate = $('#smoothstate').smoothState().data('smoothState')
      linkTo = $this.attr('href')
      smoothstate.load(linkTo) 


  # Mouseover events.
  $(document).on 'mouseover', 'article', ->
    transition.article(@, 'focusIn')

  $(document).on 'mouseout', 'article', ->
    transition.article(@, 'focusOut')


) jQuery
