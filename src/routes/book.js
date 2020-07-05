import express from 'express'
import logger from '../logger'
import auth from '../middleware/auth'
const router = express.Router()

router.use((req, res, next) => {
  logger.info(req.headers)
  next()
}, auth())



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
  const result = await store.Books.findAll({
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

module.exports = router