module.exports =
  paths:
    watched: ['source']

  files:
    javascripts:
      joinTo: 'js/main.js'
    stylesheets:
      sourceFiles: ['init.scss']
      joinTo: 'css/main.css'

  plugins:
    postcss:
      processors: [
        require('autoprefixer')(['last 8 versions'])
      ]
    sass:
      mode: ''
    coffeescript:
      bare: true