//index.js
//获取应用实例
var app = getApp()
Page({
  data: {
    
  },
  onLoad: function(op){
    var that = this;
    app.getUserInfo(function(userInfo){
        //更新数据
        that.setData({
          userInfo:userInfo
        })
    })
  }
  
})
