var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
  host: "localhost",

  port: 3306,

  // username
  user: "root",

  // password
  password: "password",
  database: "bamazon_db"
});
function runSearch(){

    connection.query("SELECT * from products", function(err,result){
       if (err){

        console.log("AHHHH")
       }
       console.log(result);
       inquirer
       .prompt([{
           name: "ID",
           type: "input",
           message: "What is the ID of the product you would like to buy?",
            validate: function (answer) {
                    if (/^\d+$/.test(answer)){
                        return true;
                    }
                    else {
                        return false;
                    }

            }
        },
          {  name: "amount",
            type: "input",
            messages: "Enter the amount you'd like to buy."

    }]
        )
         .then(function(answer){
             
               var itemnumber= answer.ID;
               var amountnumber= answer.amount;

               console.log(itemnumber);
               console.log(amountnumber);

               if (amountnumber <= res[itemnumber - 1].stock_quanity) {
                connection.query("UPDATE products SET ? WHERE ?", [{
                    stock_quantity: res[itemnumber -1].stock_quanity - amountnumber
                
                },
                // id: res[prodcu]
            ])

               }
            
         });

        
        
    });

   
}



connection.connect(function(err) {
    if (err) throw err;
    runSearch();
  });

  


  