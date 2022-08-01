const { DataTypes, Model } = require("sequelize");
const sequelize = require("../database/client");

class Championships extends Model {}

Championships.init({
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
}, {
  sequelize,
  tableName: "championship"
});


module.exports = Championships;
