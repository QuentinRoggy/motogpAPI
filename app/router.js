const express = require("express");
const router = express.Router();
const teamsController = require("./controllers/teamsController");

router.get("/teams", teamsController.getAllTeams);

module.exports = router;
