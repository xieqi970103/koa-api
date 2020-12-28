const Koa = require('koa')
const koaBody = require('koa-body')
// 实例化koa
const Router = require('koa-router');
const app = new Koa();
const router = new Router();
app.use(koaBody({
  // 支持文件格式
  multipart: true,
  formidable: {
      // 上传目录
      uploadDir: 'F:/images',
      // 保留文件扩展名
      keepExtensions: true,
  }
}))
// 引入user.js
const users = require('./routes/api/user.js')
const upload = require('./routes/api/upload.js')
// 路由
router.get("/", async ctx =>{
  console.log('123');
    // let data = await mysql.query()
    ctx.body = {
        "code": 220,
        "mesg": 'ok'
    }
})

// 配置路由地址
router.use("/api/user", users)
router.use("/api/upload", upload)

// 配置路由
app.use(router.routes()).use(router.allowedMethods());
const port = process.env.PORT || 5000;
app.listen(port, () => {
  console.log(`listening on port ${port}`)
})




// const Koa = require('koa')
// const koaBody = require('koa-body')

// // 实例化koa
// const Router = require('koa-router');
// const app = new Koa();
// const router = new Router();
// app.use(koaBody({
//   // 支持文件格式
//   multipart: true,
//   formidable: {
//       // 上传目录
//       uploadDir: 'F:/images',
//       // 保留文件扩展名
//       keepExtensions: true,
//   }
// }))

// // 引入user.js
// const users = require('./routes/api/user.js')

// // 配置路由地址
// router.use("/api/user", users)

// // 配置路由
// app.use(router.routes()).use(router.allowedMethods());
// const port = process.env.PORT || 5000;
// app.listen(port, () => {
//   console.log(`listening on port ${port}`)
// })