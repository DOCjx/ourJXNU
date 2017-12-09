// pages/detail/detail.js
const request=require("../../../../utils/requests");
var app = getApp()
Page({
  data:{
    id:"",
    article:[],
    tip: "我的话"
  },
  favTap: function (e) {
    // console.log(e.currentTarget.id);
    var id = e.currentTarget.id, list = this.data.article;
    // console.log(list.tags)
    for (var i = 0, len = list.tags.length; i < len; ++i) {

      if (list.tags[i].name == id) {
        if ( list.tags[i].fav ) {
          list.tags[i].count--;
        }else {
          list.tags[i].count++;
        }
        list.tags[i].fav = !list.tags[i].fav;
        break;
      }
    }
    // console.log(list[i].favorite);
    this.setData({
      article: list
    });
  },
  onLoad:function(options){
        // 页面初始化 options为页面跳转所带来的参数
        var that=this;
        that.setData({ id: options.id});
        wx.showToast({
            title: '加载中',
            icon: 'loading',
            duration: 10000
        });
        request.getArticleById(options.id,function(res){
            if(res.data.status == 0){
                return;
            }
            that.setData({article: res.data.content});
        });
        app.getUserInfo(function(userInfo){
            that.setData({
                userInfo
            })
        });
  },
  bindTextAreaBlur: function(e){
    // console.log(e.detail.value);
    // this.setData({
    //   comment:e.detail.value
    // });
  },
  bindTextAreaInput: function(e){
    //解决bindtextblur比按钮点击事件后触发
    // console.log(e.detail.value);
    this.setData({
      comment:e.detail.value
    });
  },
  sendCom1: function(e){
    var comment = this.data.comment;
    if( comment=="" ) {
      this.setData({tip:"还没有输入哦"});
      return;
    }
    var list = this.data.article;
    var id = this.data.id;
    let j;
    //将当前评论数据插入到第4个位置
    for(j = list.tags.length-1; j > 2; j--){
      list.tags[j+1] = list.tags[j];
    }
    list.tags[j+1] = {
      "count": 0,
      "fav":false,
      "name": this.data.userInfo.nickName,
      "pic": this.data.userInfo.avatarUrl,
      "title": comment
    };
    this.setData({
      article:list
    });
  },
  sendCom2: function(e){
    //第二类提交
    // console.log(e);
    //TODO
    var comment = this.data.comment;
    if( comment=="" ) {
      this.setData({tip:"还没有输入哦"});
      return;
    }
    var list = this.data.article;
    var id = this.data.id;
    let j;
    //将当前评论数据插入到第4个位置
    for(j = list.tags.length-1; j > 2; j--){
      list.tags[j+1] = list.tags[j];
    }
    list.tags[j+1] = {
      "count": 0,
      "fav":false,
      "name": this.data.userInfo.nickName,
      "pic": this.data.userInfo.avatarUrl,
      "title": comment
    };
    this.setData({
      article:list
    });
  },
  previewImg(e){
    const current = e.currentTarget.dataset.imgurl;
    wx.previewImage({
        urls: [current]
    })
  },
  onReady:function(){
    // 页面渲染完成
   wx.hideToast();
  },
  onShow:function(){
    // 页面显示
  },
  onHide:function(){
    // 页面隐藏
  },
  onUnload:function(){
    // 页面关闭
  }
})