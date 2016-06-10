$ = require('jquery')
ScrollMagic = require('scrollmagic')
animation = require('scrollmagic/scrollmagic/uncompressed/plugins/animation.gsap')
gsap = require('gsap')

module.exports =
  controller: null
  init: ->
    @controller = new ScrollMagic.Controller()

    headerTween = TweenLite.to('#global-header', 1, {y: '-100%'})
    sceneTween = TweenLite.to('#masthead', 1, {y: '-130%'})

    new ScrollMagic.Scene({
      duration: $(window).height()
      triggerHook: 0
    })
    .setTween(headerTween)
    .addTo(@controller)

    new ScrollMagic.Scene({
      duration: $(document).height()
      triggerHook: 0
    })
    .setTween(sceneTween)
    .addTo(@controller)