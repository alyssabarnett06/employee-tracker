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

// function which prompts the user for what action they should take
function start() {
    inquirer
      .prompt({
        name: "task",
        type: "list",
        message: "Would you like to do?",
        choices: ["view employees", "view managers", "view departments", "view roles", "add employee", "add department", "add role",
                    "update employee roll", "EXIT"]
      })
      .then(function(answer) {
        
        switch (answer.task){
            case "view employees":
                viewEmps();
                break;
            case "view managers":
                viewMan();
                break;
            case "view departments":
                viewDeps();
                break;
            case "view roles":
                viewRoles();
                break;
            case "add employee":
                addEmp();
                break;
            case "add department":
                addDep();
                break;
            case "add role":
                addRole();
                break;
            case "update employee roll":
                updateEmp();
                break;
            case "EXIT":
                connection.end();
                break;
        }
      });
  }

