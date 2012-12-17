# Setup Express.js:
global.express = require('express')
global.app = app = global.express()
require("#{__dirname}/src/configuration")

# Set up routing for our homepage:
require("#{__dirname}/src/controllers/home_controller")

# Start server
app.listen(3000)
console.log("Express server listening in %s mode", app.settings.env)
