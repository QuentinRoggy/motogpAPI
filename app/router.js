const express = require("express");
const competitorsController = require("./controllers/competitorsController");
const router = express.Router();
const teamsController = require("./controllers/teamsController");

// Competitors routes
router.get("/riders", competitorsController.getAllCompetitors);

// Teams routes
router.get("/teams", teamsController.getAllTeams);
router.get("/teams/:id", teamsController.getOneTeambyId);

module.exports = router;
