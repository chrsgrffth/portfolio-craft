$ = require('jquery')
TweenMax = require('gsap/src/uncompressed/TweenMax')
ScrollTo = require('gsap/src/uncompressed/plugins/ScrollToPlugin')

module.exports =
  caseStudy: (direction) ->
    switch direction
      when 'in'
        windowHeight = $(window).height()
        $('.panel-cover').css('height', windowHeight)
        TweenMax.to('main', 0.5, {y: -windowHeight, opacity: 0})
        TweenMax.to('.panel-cover', 0.5, {y: -windowHeight})
        break


  page: (direction, duration) ->
    switch direction
      when 'up' then TweenMax.staggerFromTo('article', 0.5, {y: 50, opacity: 0}, {y: 0, opacity: 1}, 0.15)
      when 'down' then TweenMax.staggerFromTo('article', 0.5, {y: 0, opacity: 1}, {y: 50, opacity: 0, reverse: true}, 0.05)
      when 'leftOut' then TweenMax.staggerFromTo('article', 0.5, {x: 0, opacity: 1}, {x: -50, opacity: 0}, 0.05)
      when 'leftIn' then TweenMax.staggerFromTo('article', 0.5, {x: 50, opacity: 0}, {x: 0, opacity: 1}, 0.05)

  article: (el, interaction) ->
    switch interaction

      when 'focusIn' then TweenMax.staggerTo($('.animate', el), 0.5, {x: 50}, 0.025)
      when 'focusOut' then TweenMax.staggerTo($('.animate', el), 0.5, {x: 0}, 0.025)