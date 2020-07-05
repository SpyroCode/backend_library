//require('dotenv').config()
import express from 'express'
import { sign, verify } from 'jsonwebtoken'
import { compare } from 'bcrypt'
import logger from '../logger'
const router = express.Router()



router.post('/', async (req, res) => {
    //console.log(req.params)
    
    console.log(req)
    const { email, password } = req.body
    if(email && password){
        const store = req.app.get('store')
        const user = await store.Users.findOne({
            where: { email }
          })
        logger.info(`[getToken] email: ${email}`)
        if(user && (email === user.email && await compare(password, user.password))){
            
            const tokenData = {
                email: email,
                role: user.role

              }
            const token=sign(tokenData, process.env.JWT_SECRET, { expiresIn: '1h' })  
            //res.status(201).send(JSON.stringify(req.body, null, 2))
            logger.info(`[getToken] user found: ${JSON.stringify(tokenData)}`)
            res.status(201).send({ token})
            res.end()
            //res.status(201).send(`${email}.jwt.${password}`)
            console.log(token);
        }else{
            logger.error(`[login] invalid credentials, email: ${email}, password: ${password}`)
            res.status(500).send('Email o usuario incorrecto')
            res.end()
        }
        
    }else{
        logger.error(`[login] No found data, email: ${email}, password: ${password}`)
        res.status(500).send('Faltan datos')
        res.end()
    }
})

router.get('/',()=>{})
router.put('/',()=>{})
router.delete('/',()=>{})
router.options('/',()=>{})
router.trace('/',()=>{})

module.exports=router