const Teams = require("./teams");
const Championships = require("./championships");
const Manufacturers = require("./manufacturers");
const Competitors = require("./competitors");

Manufacturers.hasMany(Teams, {
  foreignKey: "manufacturerId",
  as: "teamsList"
});
Teams.belongsTo(Manufacturers, {
  foreignKey: "manufacturerId",
  as: "manufacturer"
});

Championships.hasMany(Teams, {
  foreignKey: "championshipId",
  as: "teamsList"
});
Teams.belongsTo(Championships, {
  foreignKey: "championshipId",
  as: "championship"
});

Teams.hasMany(Competitors, {
  foreignKey: "teamId",
  as: "competitorsList"
});

Competitors.belongsTo(Teams, {
  foreignKey: "teamId",
  as: "team"
});

module.exports = {
  Teams,
  Championships,
  Manufacturers,
  Competitors
};
