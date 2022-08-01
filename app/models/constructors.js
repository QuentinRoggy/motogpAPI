const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database/client");

class Constructors extends Model {}

Constructors.init({
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
  tableName: "constructor"
});


module.exports = Constructors;
