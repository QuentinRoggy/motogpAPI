const { Teams } = require("../models");

const teamsController = {
  async getAllTeams(_, response) {
    try {
      const teamsList = await Teams.findAll({
        include: ["constructor", "championship"]
      });
      response.json(teamsList);
    } catch (error) {
      console.log(error);
    }
  }
};

module.exports = teamsController;
