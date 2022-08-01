const Teams = require("./teams");
const Championships = require("./championships");
const Constructors = require("./constructors");

Constructors.hasMany(Teams, {
  foreignKey: "constructorId",
  as: "teamsList"
});
Teams.belongsTo(Constructors, {
  foreignKey: "constructorId",
  as: "constructor"
});

Championships.hasMany(Teams, {
  foreignKey: "championshipId",
  as: "teamsList"
});
Teams.belongsTo(Championships, {
  foreignKey: "championshipId",
  as: "championship"
});

module.exports = {
  Teams,
  Championships,
  Constructors
};
