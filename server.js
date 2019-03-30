var express = require('express');
var exphbs = require('express-handlebars');
var app = express();
var PORT = process.env.PORT || 3000;
var db = require('./models');

app.engine('handlebars', exphbs({ defaultLayout: 'main' }));
app.set('view engine', 'handlebars');

app.use(express.static('./public'));

require('./controllers/burgers_controllers.js')(app);

db.sequelize.sync().then(function(){
  // Initiate the listener.
  app.listen(PORT, function(){
    console.log('Listening on port %s ', PORT);
  });
});