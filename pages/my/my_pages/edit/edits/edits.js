// pages/my/my_pages/edit/edits/edits.js
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
    var that=this;
    wx.showToast({
      title: '编辑成功',
      icon: 'success',
    });
  }

})