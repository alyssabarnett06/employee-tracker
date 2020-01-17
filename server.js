var mysql = require("mysql");
var inquirer = require("inquirer");
var table = require('console.table');

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "0332",
  database: "employee_db"
});

connection.connect(function(err) {

    start();
});

