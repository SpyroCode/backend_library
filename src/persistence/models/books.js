module.exports = (sequelize, DataTypes) => {

    class Books extends sequelize.Sequelize.Model { }
    Books.init({
      id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true,
      },
      name: DataTypes.STRING,
      author: DataTypes.STRING,
      editorial: DataTypes.STRING,
      image: DataTypes.STRING,
      status: DataTypes.STRING,
      createdAt: DataTypes.DATE,
      updatedAt: DataTypes.DATE
    }, {
      sequelize,
      modelName: 'books'
    })
  
    return Books
  }