import express from 'express'
import { hash } from 'bcrypt'
import logger from '../logger'
const router = express.Router()

const saltRounds = 10

router.post('/', async (req, res) => {
  const { name, email, password, role } = req.body
  logger.info(JSON.stringify({ name, email, role }))
  const store = req.app.get('store')
  const status='activo'
  const result = await store.Users.create({
    name,
    email,
    password: await hash(password, saltRounds),
    role,
    status
  })
  res.send({ result })
  res.end()
})

module.exports = router