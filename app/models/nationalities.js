const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database/client");

class Nationalities extends Model {}

Nationalities.init({
  nationality: {
    type: DataTypes.STRING,
    allowNull: false
  },
  countryCode: {
    type: DataTypes.STRING,
    allowNull: false
  },
}, {
  sequelize,
  tableName: "nationality"
});


module.exports = Nationalities;
