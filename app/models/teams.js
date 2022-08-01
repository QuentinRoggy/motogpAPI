const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database/client");

class Teams extends Model {}

Teams.init({
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  constructorId: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
  isOfficial: {
    type: DataTypes.BOOLEAN,
    allowNull: false
  },
  championshipId: {
    type: DataTypes.INTEGER,
    allowNull: false
  },
}, {
  sequelize,
  tableName: "team"
});


module.exports = Teams;
