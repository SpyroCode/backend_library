const Sequelize = require('sequelize');

module.exports = () => {
  const sequelize = new Sequelize({
    dialect: 'sqlite',
    storage: './storage.sqlite'
  });

  const Users = sequelize.import('./models/users')
  const Books=sequelize.import('./models/books')
  const Orders=sequelize.import('./models/orders')

  return { 
      Users,
      Books,
      Orders
   }
}
