const { Competitors } = require("../models");

const competitorsController = {
  async getAllCompetitors(_, res) {
    try {
      const competitorsList = await Competitors.findAll();
      res.json(competitorsList);
    } catch (error) {
      console.log(error);
    }
  }
};

module.exports = competitorsController;
