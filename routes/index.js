var express = require("express");
var router = express.Router();
const mysql = require("mysql2");

/* GET home page. */
router.get("/", function (req, res, next) {
  // get the client

  // create the connection to database
  const connection = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    database: process.env.DB_NAME,
    password: process.env.DB_PASSWORD,
  });
  const q = "SELECT * FROM dog";
  console.log(q);
  // simple query
  connection.query(q, function (err, results, fields) {
    console.log(results); // results contains rows returned by server
    //console.log(fields); // fields contains extra meta data about results, if available
    res.render("index", { title: "Express", results: results });
  });
});

module.exports = router;
