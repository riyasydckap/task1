const { environment } = require('@rails/webpacker')
import {ProvidePlugin}  from 'webpack'
environment.plugins.prepend('Provide',
  new ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    Popper: ['popper.js','default']
  })

export default environment
