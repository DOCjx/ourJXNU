//index.js
//获取应用实例
var app = getApp();
Page({
    data:{},
    onLoad: function(op){
        var that = this;
        app.getUserInfo(function(res){
            that.setData({
                userInfo: res
            })
        });
    }
});
