require("dotenv").config();

const { Sequelize } = require("sequelize");

const sequelize = new Sequelize(process.env.PG_URL, {
  define: {
    underscored: true
  }
});

(async () => {
  try {
    await sequelize.authenticate();
    console.log("Connection has been established successfully.");
  } catch (error) {
    console.error("Unable to connect to the database:", error);
  }
})();

module.exports = sequelize;
