import express from 'express'
import logger from '../logger'
import auth from '../middleware/auth'
const router = express.Router()

router.use((req, res, next) => {
  logger.info(req.headers)
  next()
}, auth())



router.post('/', async (req, res) => {
  const { idBook, idUser,User,Title, status,fecha } = req.body
  logger.info(JSON.stringify({ idUser,idBook,User,Title,status,fecha }))
  if(idUser && idBook && User && Title && fecha && status){
    
    const store = req.app.get('store')
    const result = await store.Orders.create({
      idBook,
      idUser,
      User,
      Title,
      status,
      fecha
    })
    res.send({ result })
    res.end()
  }else{
        logger.error(`[CREATE ORDERS] No found data, idBook: ${idBook},idUser:${idUser} ,user : ${User} ,Book: ${Title}, status: ${status},fecha : ${fecha}`)
        const message='Faltan datos'
        res.status(500).send({message})
        res.end()
  }
})

router.get('/', async (req, res) => {
  const store = req.app.get('store')
  const result = await store.Orders.findAll({
    attributes: ['id', 'idBook', 'idUser','User','Title', 'status','fecha']
  })
  if(result){
      
      logger.info(JSON.stringify({ result }))
      res.send({ result })
      res.end()
  }else{
        logger.error(`[GET ORDERS] No found data`)
        const message='No hay datos a mostrar'
        res.status(500).send({message})
        res.end()  
  }
})

module.exports = router