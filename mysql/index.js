var mysql = require('mysql');
var config = require('../config/default.js')

var pool  = mysql.createPool({
  host     : config.database.HOST,
  user     : config.database.USERNAME,
  password : config.database.PASSWORD,
  database : config.database.DATABASE
});




class Mysql {
    constructor () {

    }
    // 用户登录
    query (data) {
      return new Promise((resolve, reject) => {
        pool.query(`SELECT * from user where username = '${data.userName}'` , function (error, results, fields) {
            if (error) {
                throw error
            };
            resolve(results)
            // console.log('The solution is: ', results[0].solution);
        });
      })
       
    }
    // 修改logo图片
    uploadLogoImg(data) {
      return new Promise((resolve, reject) => {
        pool.query(`UPDATE  logoImg SET logo_path = '${data.path}' WHERE id=1` , function (error, results, fields) {
            if (error) {
                throw error
            };
            resolve(results)
            // console.log('The solution is: ', results[0].solution);
        });
      })
    }
    // 修改背景图片
    upBcgroundImg(data) {
      return new Promise((resolve, reject) => {
        pool.query(`UPDATE  backgroundImg SET background_path = '${data.path}' WHERE id=1` , function (error, results, fields) {
            if (error) {
                throw error
            };
            resolve(results)
            // console.log('The solution is: ', results[0].solution);
        });
      })
    }
    // 获取幻灯片区域图片列表
    getSlideList() {
      return new Promise((resolve, reject) => {
        pool.query(`SELECT * from gameSlide` , function (error, results, fields) {
            if (error) {
                throw error
            };
            resolve(results)
            // console.log('The solution is: ', results[0].solution);
        });
      })
    }
}

module.exports = new Mysql()
