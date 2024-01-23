const express = require("express");
const cors = require("cors");
const path = require('path');

const app = express();

app.use(cors());
app.use(express.json());

// view engine setup
app.set('views', path.join(__dirname, './views'));
app.set('view engine', 'twig');


app.get("/", (req, res) => {
  res.render("index", {
    message: "Hello i am in main route",
  });
});

app.get("/check", (req, res) => {
  res.render("check", {
    message: "Hello i am in check route",
  });
});

app.listen(8000, () => {
  console.log("Server is running on port 8000");
});

