const { Teams } = require("../models");

const teamsController = {
  async getAllTeams(_, response) {
    try {
      const teamsList = await Teams.findAll({
        include: ["competitorsList", "manufacturer", "championship"]
      });
      response.json(teamsList);
    } catch (error) {
      console.log(error);
    }
  },

  async getOneTeambyId(req, res) {
    const teamId = parseInt(req.params.id);

    try {
      const teamInstance = await Teams.findByPk(teamId);

      res.json(teamInstance);
    } catch (error) {
      console.log(error);
    }
  }
};

module.exports = teamsController;
