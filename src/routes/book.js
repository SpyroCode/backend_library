import express from 'express'
import logger from '../logger'
import auth from '../middleware/auth'
const router = express.Router()

router.use((req, res, next) => {
  logger.info(req.headers)
  next()
}, auth())



const Sequelize = require('sequelize');
router.post('/', async (req, res) => {
  const { name, author,editorial, status, image } = req.body
  logger.info(JSON.stringify({ name, author, editorial,status,image }))
  if(name && author && editorial && status && image){
    
    const store = req.app.get('store')
    const result = await store.Books.create({
      name,
      author,
      editorial,
      status,
      image
    })
    res.send({ result })
    res.end()
  }else{
        logger.error(`[CREATE BOOKS] No found data, name : ${name} ,author: ${author}, editorial: ${editorial},status : ${status},image : ${image}`)
        const message='Faltan datos'
        res.status(500).send({message})
        res.end()
  }
})

router.get('/', async (req, res) => {
  const store = req.app.get('store')
  const Op = Sequelize.Op;
  const result = await store.Books.findAll({
    where: {
      status: {
        [Op.ne]: 'inactivo'
      }
    },
    attributes: ['id', 'name', 'author','editorial','status', 'image']
  })
  if(result){
      
      logger.info(JSON.stringify({ result }))
      res.send({ result })
      res.end()
  }else{
        logger.error(`[GET BOOKS] No found data`)
        const message='No hay datos a mostrar'
        res.status(500).send({message})
        res.end()  
  }
})
router.get('/:id', async (req, res) => {
  
  const id=req.params.id
  
  const store = req.app.get('store')
  const result = await store.Books.findOne({
    where: {
      id      
    },
    attributes: ['id', 'name', 'author','editorial','status', 'image']
  })
  logger.info(JSON.stringify({ result }))
  res.send({ result })
  res.end()
})

router.post('/baja/:id', async (req, res) => {
    const id=req.params.id
    const status='inactivo'
    const store = req.app.get('store')
    const result = await store.Books.update(
      {
        status,
      }, {
        where: {
          id
          }
    })
    res.send({ result })
    res.end()
  
})
router.post('/activa/:id', async (req, res) => {
  const id=req.params.id
  const status='disponible'
  const store = req.app.get('store')
  const result = await store.Books.update(
    {
      status,
    }, {
      where: {
        id
        }
  })
  res.send({ result })
  res.end()

})

module.exports = router