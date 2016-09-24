$ = require('jquery')
ScrollMagic = require('scrollmagic')
animation = require('scrollmagic/scrollmagic/uncompressed/plugins/animation.gsap')
TweenMax = require('gsap/src/uncompressed/TweenMax')

module.exports =
  controller: null
  init: ->
    @controller = new ScrollMagic.Controller()

    headerTween = TweenMax.to('#global-header', 1, {opacity: 0})
    # sceneTween = TweenMax.to('#masthead', 1, {y: '-150%'})

    new ScrollMagic.Scene({
      duration: $(window).height()
      triggerHook: 0
    })
    .setTween(headerTween)
    .addTo(@controller)

    # new ScrollMagic.Scene({
    #   duration: $(document).height()
    #   triggerHook: 0
    # })
    # .setTween(sceneTween)
    # .addTo(@controller)