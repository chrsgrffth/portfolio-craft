module.exports =
  paths:
    watched: ['source', 'craft/templates']

  files:
    javascripts:
      joinTo: 'js/main.js'
    stylesheets:
      sourceFiles: ['init.scss']
      joinTo: 'css/main.css'

  npm:
    globals:
      jQuery: 'jquery'

  plugins:
    postcss:
      processors: [
        require('autoprefixer')(['last 8 versions'])
      ]
    sass:
      mode: ''
    coffeescript:
      bare: true