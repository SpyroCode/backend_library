module.exports = (sequelize, DataTypes) => {

    class Orders extends sequelize.Sequelize.Model { }
    Orders.init({
      id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      idBook: DataTypes.INTEGER,
      idUser: DataTypes.INTEGER,
      User: DataTypes.STRING,
      Title: DataTypes.STRING,
      status: DataTypes.STRING,
      fecha: DataTypes.STRING,
      createdAt: DataTypes.DATE,
      updatedAt: DataTypes.DATE
    }, {
      sequelize,
      modelName: 'orders'
    })
  
    return Orders
  }