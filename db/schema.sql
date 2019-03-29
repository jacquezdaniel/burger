-- Set up locally

CREATE DATABASE burgers_db;

` sequelize db:migrate `
` sequelize db:seed:all `

--- Set Up Sequelize index.js and config/config.json
` sequelize init `

--- Create Burgers.js model and Migrations
` sequelize model:create --name Burgers --attributes "burger_name:string devoured:boolean" `

--- Creates Menus.js model and Migrations
` sequelize model:create --name Menus --attributes "item:string entree:boolean" `

--- Run migration to get it into MySQL database
` sequelize db:migrate `

--- Create a seed file for burgers and menus 
` sequelize seed:create --name burgers-seed `
` sequelize seed:create --name menus-seed `

--- Run the Database seeder files
` sequelize db:seed:all `