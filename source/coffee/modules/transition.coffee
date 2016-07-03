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

