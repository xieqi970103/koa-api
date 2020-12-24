const Router = require('koa-router')
const router = new Router();
const mysql = require('../../mysql')
const jwt = require('jsonwebtoken')

// test
router.get('/test', async ctx => {
    ctx.status = 200;
    let data = await mysql.query()
    ctx.body = {
        "resCode": 0,
        "data": data,
        "mesg": 'ok'
    }
})

/**
 * 登录
 */
router.post('/login', async ctx => {
    // console.log(ctx.request.body)value
    const paramete = ctx.request.body
    let value = await mysql.query(paramete)
    ctx.status = 200;
    if(!value){
        ctx.body = {
            "resCode": 101,
            "data": value,
            "mesg": '账户或密码错误！！'
        }
    } else {
        if(value[0].password == paramete.password) {
            let data = null;
            const token = jwt.sign(
                {
                    name: ctx.request.body.userName //需要放到token的参数
                },
                'suzhen', //随便一点内容，加密的密文，私钥对应着公钥
                {
                    expiresIn: 60 * 60 //60分钟到期时间
                }
            )
            // data = await DB_QUERY.getOne({
            //     find: {
            //         phone: ctx.request.body.phone,
            //         password: ctx.request.body.password
            //     }
            // })
            value[0].token = token
            ctx.body = {
                "resCode": 0,
                "data": value[0],
                "mesg": '登录成功'
            }
        } else {
            ctx.body = {
                "resCode": 101,
                "data": value,
                "mesg": '账户或密码错误！！'
            }
        }
    }
})

module.exports = router.routes();