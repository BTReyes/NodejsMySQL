var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "Mrbitey1!",
  database: "bamazon"
});

//return all productsB

connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId + "\n");
  readProducts();
});

function readProducts() {
  connection.query("SELECT * FROM products", function (err, res) {
    for (var i = 0; i < res.length; i++) {
      console.log(
        res[i].item_id + " | " +
        res[i].product_name + " | " +
        res[i].price);
    }
    console.log("-----------------------------------");
    purchase();
  });
}

//inquirer function for purchase product & quantity

function purchase() {
  inquirer
    .prompt([

      {
        type: "input",
        message: "\nWhat product ID would you like to purchase?\n",
        name: "product"
      },

      {
        type: "input",
        message: "\nHow many would you like to purchase?\n",
        name: "quantity"
      }

    ])

    .then(function (answer) {
      //confirmation of purchase request
      console.log("\nYou want to buy " +
        answer.quantity + " of " + answer.product + ".\n");

      // return info on desired product
      var query = "SELECT * FROM products WHERE ?";
      connection.query(query, {
        products: answer.product
      }, function (err, res) {
        for (var i = 0; i < res.length; i++) {
          console.log(
            "\nProduct ID: " + res[i].product_ID + "\n" +
            "\nProduct Name: " + res[i].product_name + "\n" +
            "\nInventory Available: " + res[i].stock_quantity + "\n" +
            "\nUnit Price: " + res[i].price + "\n"
          );

          // start over --    purchase();

        };
      });
    });
}