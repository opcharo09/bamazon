require('dotenv').config();
const mysql = require("mysql");
const inquirer = require ("inquirer");



const connection = mysql.createConnection({
  host: process.env.DB_HOST,

  // Your port; if not 3306
  port: 3306,

  // Your username
  user:process.env.DB_USER ,

  // Your password
  password:process.env.DB_PASS,
  database: "bamazonDB"
});

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  hello();
  connection.end();
});

function hello(){ 
    inquirer
      .prompt([{
              type: "list",
              message: "Hello, how can I help you?",
              choices: ["List Products", "Purchase Product by ID"],
              name: "action"
          }
      ])
      .then(function (response) {
          if (response.action === "List Products") {
              productList();
          } else if (response.action === "Purchase Product by ID") {
              productBuy(response.action);
          }
      });
  };