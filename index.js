const express = require("express");
const databaseMysql = require("./mysql");
const app = express();
const port = 3030;

var validator = require("validator");
const { response } = require("express");

// untuk mendapatkan data dari post form html
app.use(express.json()); // for parsing application/json
app.use(express.urlencoded({ extended: true }));

// set view template untuk ejs di express
app.set("view engine", "ejs");
app.use(express.static("public"));

// index list page
app.get("/", function (req, res) {
  let sql = `SELECT id, name FROM keluarga`;

  databaseMysql.query(sql, (error, results, fields) => {
    if (error) {
      console.log(error);
      return res.render("pages/index", {
        error: true,
        messages: "Ada masalah koneksi Nodejs ke Mysql",
      });
    } else {
      // console.log(results);
      return res.render("pages/index", {
        error: false,
        keluargas: results,
      });
    }
  });
});

// Create page
app.get("/create", function (req, res) {
  res.render("pages/keluarga_add");
});

app.get("/parent", function (req, res, next) {
  let sql = `SELECT * FROM keluarga where child = 0 AND grandchild = 0 AND name LIKE '%${search_query}%'`;
  databaseMysql.query(sql, (error, results, fields) => {
    if (error) {
      console.log(error);
    } else {
      res.json(results);
    }
  });
});

app.listen(port, () =>
  console.log(
    `App listening to port ${port}, Running at: ${new Date()
      .toISOString()
      .replace("T", " ")
      .substring(0, 19)}`
  )
);
