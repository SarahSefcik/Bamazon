var inquirer = require("inquirer");
var mysql = require("mysql");
var cTable = require("console.table")
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "root",
  database: "bamazon_DB"
});

connection.connect(function (error) {
  if (error) throw error;
  console.log("connected as ID " + connection.threadId);
  console.log("--Bamazon Prime--");
});

function displayTable() {
  connection.query("SELECT * FROM products", function (err, results) {
    if (err) throw err;
    console.table(results);
    buy();
  });
};

function buy() {
  connection.query("SELECT * FROM products", function (err, results) {
    inquirer
      .prompt([
        {
          name: "item",
          type: "input",
          message: "What is the id number of the item you would like to purchase?",
          validate: function (value) {
            if (isNaN(value) === false) {
              return true;
            }
            return false;
          }
        },
        {
          name: "amount",
          type: "input",
          message: "How many units would you like to purchase at this time?",
          validate: function (value) {
            if (isNaN(value) === false) {
              return true;
            }
            return false;
          }
        }]).then(function (answer) {
          for (var i = 0; i < results.length; i++) {
            if (results[i].id == answer.item) {
              var productSelected = results[i];
            }
          }
          if (productSelected.stock >= parseInt(answer.amount)) {
            connection.query(
              "UPDATE products SET ? WHERE ? ",
              [
                {
                  stock: productSelected.stock - answer.amount
                },
                {
                  id: productSelected.id
                }
              ],
              function (error) {
                if (error) throw error;
                console.log("Your purchase has been made for " + (answer.amount) + " of the " + (productSelected.product_name) + "(s) at a total of " + (productSelected.price * answer.amount) + ". Thank you for shopping Bamazon Prime!\n");
                play();
              });
          } else {
            console.log("Unfortunately, we only have " + productSelected.stock + " of the " + (productSelected.product_name) + "(s) at this time. Please purchase less at this time, our shipment is to arrive in 3 days and we will have more ready for you at that time.\n")
            play();
          }
        })
  });
};

function play() {
  displayTable();
};

play();