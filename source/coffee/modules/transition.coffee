$ = require('jquery')
TweenMax = require('gsap/src/uncompressed/TweenMax')
ScrollTo = require('gsap/src/uncompressed/plugins/ScrollToPlugin')

module.exports =

  page: (direction, duration) ->
    switch direction
      when 'up' then TweenMax.staggerFromTo('article, main', 0.5, {y: 50, opacity: 0}, {y: 0, opacity: 1}, 0.15)
      when 'down' then TweenMax.staggerFromTo('article, main', 0.5, {y: 0}, {y: 50, opacity: 0, reverse: true}, 0.05)
      when 'leftOut' then TweenMax.staggerFromTo('article, main', 0.5, {x: 0}, {x: -50, opacity: 0}, 0.05)
      when 'leftIn' then TweenMax.staggerFromTo('article, main', 0.5, {x: 50, opacity: 0}, {x: 0, opacity: 1}, 0.05)
      when 'upOut' then TweenMax.staggerFromTo('article, main', 0.5, {y: 0}, {display: 'none', y: -50, opacity: 0}, 0.05)
      when 'upIn' then TweenMax.staggerFromTo('article, main', 0.5, {display: 'none', y: 50, opacity: 0}, {display: '', y: 0, opacity: 1, delay: 0.1}, 0.05)

    if $(window).scrollTop() > $('#global-header').outerHeight()
      TweenMax.fromTo('#global-header', 0.5, {opacity: 0}, {opacity: 1, delay: 0.5})

  article: (el, interaction) ->
    switch interaction
      when 'focusIn' 
        TweenMax.staggerTo($('.animate', el), 0.5, {y: -15}, 0.025)
        TweenMax.to($('article, main').not(el), 0.25, {opacity: 0.25})
      when 'focusOut' 
        TweenMax.staggerTo($('.animate', el), 0.5, {y: 0}, 0.025)
        TweenMax.to($('article, main').not(el), 0.25, {opacity: 1})
