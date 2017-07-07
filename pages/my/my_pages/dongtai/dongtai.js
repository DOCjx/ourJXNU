// pages/my/my_pages/dongtai/dongtai.js
Page({
  data:{},
  onLoad:function(options){
    // 页面初始化 options为页面跳转所带来的参数
  },
  onReady:function(){
    // 页面渲染完成
  },
  onShow:function(){
    // 页面显示
  },
  onHide:function(){
    // 页面隐藏
  },
  onUnload:function(){
    // 页面关闭
  },

  xxx:function(e){
      wx.chooseImage({
      success: function(res) {
        var tempFilePaths = res.tempFilePaths;
        // console.log("123");
        // console.log(tempFilePaths);
        wx.uploadFile({
          url: 'http://example.weixin.qq.com/upload', //仅为示例，非真实的接口地址
          filePath: tempFilePaths[0],
          name: 'file',
          formData:{
            'user': 'test'
          },
          success: function(res){
            var data = res.data;
            // console.log(data);
            //do something
          },
          fail:function(res){
            console.log("123");
          }
        })
      }
    })
  },

  ok:function(e){
    var that=this;
    wx.showToast({
      title: '发表成功',
      icon: 'success',
    });
  }

})