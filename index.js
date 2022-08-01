// Load environment variables
const dotenv = require("dotenv");
const path = require("path");
const envFilePath = path.join(__dirname, ".env");
dotenv.config({ path: envFilePath });


// Load app modules
const express = require("express");
const router = require("./app/router");
const bodyParser = require("body-parser");

// Create app
const app = express();

// Define public assets
const publicFolderPath = path.join(__dirname, "./public");
app.use(express.static(publicFolderPath));

// Define body parser for POST Method
app.use(bodyParser.urlencoded({ extended: false }));

app.use(bodyParser.json());

// Set view engine
app.set("view engine", "ejs");
const viewsFolderPath = path.join(__dirname, "./app/views");
app.set("views", viewsFolderPath);

app.use(express.urlencoded({ extended: true }));

// Add router
app.use(router);

// Middleware pour les page Not Found
app.use((req, res) => { // app.use, toutes les requêtes sont concernés
  res.render("404"); // On renvoie la page 404
});

// Define app port
const port = process.env.APP_PORT || 3000;

// Start app
app.listen(port, () => {
  console.log(`Listening at http://localhost:${port}`);
});
