const Router = require('koa-router')
const router = new Router();
const mysql = require('../../mysql')
const jwt = require('jsonwebtoken')

/**
 * 获取上传图片
 */
router.get('/upImg', async ctx => {
  console.log('1');  
  // console.log(ctx.request.body)
})

module.exports = router.routes();