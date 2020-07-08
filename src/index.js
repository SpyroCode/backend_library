require("dotenv").config();
import express from "express";
import cors from "cors";
import bodyParser from "body-parser";
import logger from "./logger";
import user from "./routes/user";
import book from "./routes/book";
import order from "./routes/order";
import authentication from "./routes/authentication";
import createStore from "./persistence/connection";

const port = 3500;
const app = express();
const store = createStore();

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.set("store", store);

app.get("/", function (req, res) {
  logger.info(req);
  res.send("Express REST API v1");
});


app.use("/login", authentication);
app.use("/user", user);
app.use("/book", book);
app.use("/orders", order);

app.listen(port, () => {
  console.log(`Server running on Port:${port}`);
});
