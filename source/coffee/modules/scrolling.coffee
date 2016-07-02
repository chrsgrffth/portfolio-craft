$ = require('jquery')
ScrollMagic = require('scrollmagic')
animation = require('scrollmagic/scrollmagic/uncompressed/plugins/animation.gsap')
TweenMax = require('gsap/src/uncompressed/TweenMax')

module.exports =
  controller: null
  init: ->
    @controller = new ScrollMagic.Controller()

    headerTween = TweenMax.to('#global-header', 1, {y: '-100%', scale: 0.9, opacity: 0})
    sceneTween = TweenMax.to('#masthead', 1, {y: '-150%'})

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

    # Do this with Vue dummy.
    $(document).on 'mouseenter', '.panel-link', ->
      index = $(this).index()+1
      TweenMax.to(".panel-link .panel-cover > div", 0.2, {y: '0%'}) # :nth-child(#{index})
      TweenMax.staggerTo(".panel-link h1, .panel-link h2, .panel-link p", 0.2, {y: -30}, 0.025)
      TweenMax.to(".panel-link h1", 0.2, {color: '#fff'})

    $(document).on 'mouseleave', '.panel-link', =>
      TweenMax.to(".panel-link .panel-cover > div", 0.2, {y: '100%'}) # :nth-child(#{index})
      TweenMax.staggerTo(".panel-link h1, .panel-link h2, .panel-link p", 0.2, {y: 0}, 0.025)
      TweenMax.to(".panel-link h1", 0.2, {color: ''})