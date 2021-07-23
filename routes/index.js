var express = require("express");
var router = express.Router();
var con = require("../config/dbConfig");
function generate() {
  var key = "";
  const chars = "ABCDEFGHIJKLMNPOPQRSTUVWXYZ0123456789";
  for (let i = 0; i < 10; i++) {
    let r = Math.floor(Math.random() * 37);
    key = key.concat(chars[r]);
  }
  return key;
}
router.post("/certificats", async function (req, res, next) {
  var sql;
  var sqll;
  var b = false;
  var key;
  while (true) {
    b = false;
    key = generate();
    sql = `select * from certificat where id ='${key}'`;
    let result = await con.promise().query(sql);
    if (result[0].length == 0) {
      sqll = `insert into certificat values("${key}","${req.body.datedeb}","${req.body.dateexp}","${req.body.domaine}","${req.body.nom}","${req.body.prenom}","${req.body.dob}")`;
      con.query(sqll, function (err, result) {
        if (err) {
          console.log(err);
          res.send(false);
        } else {
          res.send(key);
        }
      });
      b = true;
    } else {
      console.log("error");
    }
    if (b) {
      break;
    }
  }
});
router.get("/certificats", function (req, res, next) {
  const sql = `select * from certificat where id ='${req.query.key}'`;
  con.query(sql, function (err, result) {
    if (err) {
      console.log(err);
      res.json({ err: err });
    }
    res.send(result[0]);
  });
});

module.exports = router;
