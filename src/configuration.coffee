app.configure ->
  app.use express.bodyParser()
  app.use express.methodOverride()
  app.use express.cookieParser()
  app.use express.session(secret: 'dlk3jrlkwjro38rj23098rj23089fj9f832jf9834f')
  app.use app.router
  app.use express.static(__dirname + '../public')
  app.use express.errorHandler(dumpExceptions: true, showStack: true)
  app.set 'views', "#{__dirname}/views"
  app.set 'view engine', 'ejs'
