const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database/client");

class Manufacturers extends Model {}

Manufacturers.init({
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  model: {
    type: DataTypes.STRING,
    allowNull: false
  },
  engine: {
    type: DataTypes.STRING,
    allowNull: false
  },
}, {
  sequelize,
  tableName: "manufacturer"
});


module.exports = Manufacturers;
