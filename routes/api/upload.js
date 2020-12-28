const Router = require('koa-router')
const router = new Router();
const mysql = require('../../mysql')
const jwt = require('jsonwebtoken')

/**
 * 获取上传logo图片
 */
router.post('/upLogoImg', async ctx => {
  const file = ctx.request.files.avatar
  const data = { path: file.path }
  // console.log(file)
  data.path = data.path.replace(/\\/g,"/");
  data.path = 'http://192.168.13.211:8080/images/' + data.path.split('/images/')[1];
  let value = await mysql.uploadLogoImg(data)
  ctx.body = {
    "resCode": 0,
    "data": data,
    "mesg": '成功'
  }
})
/**
 * 获取上传背景大图
 */
router.post('/upBcgroundImg', async ctx => {
  const file = ctx.request.files.avatar
  const data = { path: file.path }
  // console.log(file)
  data.path = data.path.replace(/\\/g,"/");
  data.path = 'http://192.168.13.211:8080/images/' + data.path.split('/images/')[1];
  console.log(data);
  let value = await mysql.upBcgroundImg(data)
  ctx.body = {
    "resCode": 0,
    "data": data,
    "mesg": '成功'
  }
})

/**
 * 获取幻灯片区域数据
 */
router.post('/getSlideData', async ctx => {
  let value = await mysql.getSlideList()
  const data = {
    slideList: value
  }
  console.log(data);
  ctx.body = {
    "resCode": 0,
    "data": data,
    "mesg": '成功'
  }
})



module.exports = router.routes();