import express from 'express'
import { hash } from 'bcrypt'
import logger from '../logger'
import auth from '../middleware/auth'
const router = express.Router()

router.use((req, res, next) => {
  logger.info(req.headers)
  next()
}, auth())

const saltRounds = 10

router.post('/', async (req, res) => {
  const { name, email, password, role,status } = req.body
  logger.info(JSON.stringify({ name, email, role }))
  if(name && email && password && role && status){
    
    const store = req.app.get('store')
    const result = await store.Users.create({
      name,
      email,
      password: await hash(password, saltRounds),
      role,
      status
    })
    res.send({ result })
    res.end()
  }else{
    logger.error(`[CREATE USER] No found data, name : ${name} ,email: ${email}, password: ${password},role : ${role},status:${status}`)
        const message='Faltan datos'
        res.status(500).send({message})
        res.end()
  }
})

router.get('/', async (req, res) => {
  const store = req.app.get('store')
  const result = await store.Users.findAll({
    attributes: ['id', 'name', 'email', 'role','status']
  })
  logger.info(JSON.stringify({ result }))
  res.send({ result })
  res.end()
})

router.get('/:id', async (req, res) => {
  
  const id=req.params.id
  const status='activo'
  const store = req.app.get('store')
  const result = await store.Users.findOne({
    where: {
      id,
      status
    },
    attributes: ['id', 'name', 'email', 'role','status']
  })
  logger.info(JSON.stringify({ result }))
  res.send({ result })
  res.end()
})

router.post('/baja/:id', async (req, res) => {
    const id=req.params.id
    const status='inactivo'
    const store = req.app.get('store')
    const result = await store.Users.update(
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
  const status='activo'
  const store = req.app.get('store')
  const result = await store.Users.update(
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