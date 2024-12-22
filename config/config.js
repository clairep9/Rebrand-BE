const pgp = require('pg-promise')();
require('dotenv').config();

const db = pgp(process.env.DATABASE_URL); // Use DATABASE_URL from .env

db.connect()
  .then(obj => {
    obj.done(); // success, release the connection;
    console.log('PostgreSQL connected');
  })
  .catch(error => {
    console.log('ERROR:', error.message || error);
  });

module.exports = db;