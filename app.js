const express = require("express");
const cors = require("cors");
const mysql = require("mysql");

const app = express();

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "MinnieLovesM3",
  database: "team8project"
});
connection.connect(err => {
  if (err) {
    return err;
  }
});
app.use(cors());

let customer = `CREATE TABLE IF NOT EXISTS customer(
  customerID INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  phone BIGINT NOT NULL DEFAULT 0
)`;
let menu = `CREATE TABLE IF NOT EXISTS menu(
  itemID INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  price double not null default 0,
  imageUrl varchar(255),
  inCart INT NOT NULL
)`;
let employee = `CREATE TABLE IF NOT EXISTS employee(
  empID INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  phone BIGINT NOT NULL DEFAULT 0,
  position VARCHAR(255) ,
  password VARCHAR(60) NOT NULL
)`;
let shiftrecord = `CREATE TABLE IF NOT EXISTS shiftrecord(
  shiftID INT PRIMARY KEY AUTO_INCREMENT,
  empID INT NOT NULL,
  starttime TIMESTAMP,
  endtime TIMESTAMP
)`;
let topten = `CREATE TABLE IF NOT EXISTS topten(
  itemID INT PRIMARY KEY ,
  ranking INT
)`;

let orderdetails = `CREATE TABLE IF NOT EXISTS orderdetails(
  detailsID INT PRIMARY KEY AUTO_INCREMENT,
  time TIMESTAMP NOT NULL,
  customerID INT NOT NULL,
  orederstatus INT
)`;

let order = `CREATE TABLE IF NOT EXISTS orders(
  orderID INT PRIMARY KEY AUTO_INCREMENT,
  customerID INT NOT NULL,
  orederstatus INT,
  time TIMESTAMP NOT NULL
)`;

connection.query(order, function(err, results, fields) {
  if (err) {
    console.log(err.message);
  }
  });

connection.query(menu, function(err, results, fields) {
  if (err) {
    console.log(err.message);
  }
  });


connection.query(topten, function(err, results, fields) {
  if (err) {
    console.log(err.message);
  }
  });
  connection.query(shiftrecord, function(err, results, fields) {
    if (err) {
      console.log(err.message);
    }
    });

connection.query(employee, function(err, results, fields) {
    if (err) {
      console.log(err.message);
    }
    });
connection.query(customer, function(err, results, fields) {
if (err) {
  console.log(err.message);
}
});

connection.query(orderdetails, function(err, results, fields) {
if (err) {
  console.log(err.message);
}
});

app.get("/", (req, res) => {
  res.send("connected");
});

// changed to
app.get("/menu", (req, res) => {
  connection.query("SELECT * FROM menu", (err, result) => {
    if (err) {
      return res.send(err);
    } else {
      return res.json({ data: result });
    }
  });
});

app.get("/customerorder", (req, res) => {
  connection.query(
    "SELECT * FROM customer ORDER BY id DESC LIMIT 1",
    (err, result) => {
      if (err) {
        return res.send(err);
      } else {
        return res.json({ data: result });
      }
    }
  );
});

app.get("/employee", (req, res) => {
  connection.query("SELECT * FROM employee", (err, result) => {
    if (err) {
      return res.send(err);
    } else {
      return res.json({ data: result });
    }
  });
});

app.get("/employee/:id", (req, res) => {
  connection.query("SELECT * FROM employee WHERE empID = " + req.params.id, (err, result) => {
    if (err) {
      return res.send(err);
    } else {
      return res.json({ data: result });
    }
  });
});

app.get("/shiftrecord/:id", (req, res) => {
  connection.query("SELECT * FROM shiftrecord WHERE empID = " + req.params.id, (err, result) => {
    if (err) {
      return res.send(err);
    } else {
      return res.json({ data: result });
    }
  });
});

app.get("/addStaff", (req, res) => {
  const { name, phone, position, password } = req.query;
  connection.query(
    `INSERT INTO employee (name,phone,position,password) VALUES ('${name}','${phone}','${position}','${password}' )`,

    (error, results) => {
      if (error) {
        return res.send(error);
      } else {
        return res.json({ data: "SUCCESS" });
      }
    });
});

app.get("/deleteStaff/:id", (req, res) => {
  connection.query(
    "DELETE FROM employee WHERE empID = " + req.params.id,
    (error, results) => {
      if (error) {
        console.log("Delete not successful")
        return res.send(err);
      } else {
        return res.json({ data: "SUCCESS" });
      }
    });
});

//UPDATE employee SET name = "Robo Tom 2.0", phone = 1234567890, position = "Line Cook", password = "ch33$e" WHERE empID = 4
app.get("/editStaff", (req, res) => {
  const { empID, name, phone, position, password } = req.query;
  connection.query(
    `UPDATE employee SET name='${name}', phone=${phone}, position='${position}', password='${password}' WHERE empID=${empID}`,

    (error, results) => {
      if (error) {
        return res.send(error);
      } else {
        return res.json({ data: "SUCCESS" });
      }
    });
});

app.get("/login", (req, res) => {
  const { name, phone } = req.query;
  connection.query(
    `INSERT INTO customer (name,phone) VALUES ('${name}','${phone}' )`,

    (error, results) => {
      if (error) {
        return res.send(err);
      } else {
        return res.json({ data: "SUCCESS"});
      }
    }
  );
});

app.get("/managemenu", (req, res) => {
  const { id, name, price, imageURL, category } = req.query;
  connection.query(
    `INSERT INTO menu (id,name,price,imageURL,category) VALUES ('${id}','${name}','${price}','${imageURL}','${category}' )`,

    (error, results) => {
      if (error) {
        return res.send(err);
      }
    }
  );
});

app.get("/drinks", (req, res) => {
  connection.query("SELECT * FROM drinks", (err, result) => {
    if (err) throw err;
    else {
      return res.json({ data: result });
    }
    res.end(JSON.stringify(results));
  });
});

app.listen(4000, () => {
  console.log("4000");
});
