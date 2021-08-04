const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send(
    "<strong>AUTO-SCALING APP AWS</strong><br><br>Small but region proof user!<br>Hello World!<br><br>Version 7"
  );
});

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`);
});
