//index.js
//获取应用实例
var app = getApp()
const request=require("../../utils/requests");
var star = require("../../utils/star");
Page({
  data: {
    userInfo: {},
    shareData: {
      title: '我们的师大',
      desc: '身边的小帮手',
      path: '/pages/home/index'
    },
    imgUrls:[
      "../../images/pic/banner5.jpg",
      "../../images/pic/banner4.jpg"
      ],
    navTo: 1,
    switchChecked: true,
    indicatorDots: true,
    autoplay: true,
    interval: 5000,
    duration: 2000,
    count: 0,
    toRe:0
  },
  onShareAppMessage: function () {
    return this.data.shareData
  },
  switchChange: function (e){
    // console.log(e.detail);
    // console.log('switch1 发生 change 事件，携带值为', e.detail.value)
    if( e.detail.value ){
      this.setData({
        switchChecked : false
      });
    }else{
      this.setData({
        switchChecked : true
      });
    }
  },
  navTo:function(e){
    // console.log(e)
    this.setData({
      navTo : e.currentTarget.dataset.navto
    });
    // var wapperContent=document.getElementsByClassName('wapperContent')
    
    // console.log(wapperContent)
  },
  toHandel:function () {
      var that=this;
      wx.showToast({
          title: '加载中',
          icon: 'loading',
          duration: 1000
      })
      request.getBookList(that.data.toRe,"",function(res){
          var types = res.data.books;
          // console.log(res.data.books);
          if(res.data.count==0){
              return;
          }
          that.setData({List:res.data.books,count:that.data.count+res.data.count});

      });
  },
  toRefresh: function (e) {
      var that=this;
      this.setData({
          toRe : star.toRefresh()
      });
      that.toHandel();
      console.log("随机换一个栏目ID");
      console.log(that.data.toRe);
  },
   /* toRefresh:function(){
      var that=this;
        this.setData({start:0});
        that.searchHandel();
    },*/
  upper: function(e) {
    console.log("已到顶部");

  },
  lower: function(e) {
    console.log("已到低部");
    var that=this;
    wx.showToast({
      title: '加载中',
      icon: 'loading',
      duration: 10000
    });
    request.getBookList(that.data.toRe,{start:that.data.count},function(res){
        var types = res.data.books;
        for (var i = 0; i < types.length; ++i) {
            var book = types[i];
            var rating = book.rating;
            rating.block = star.get_star(rating.average);
        }
        res.data.books = types;
        console.log(res.data.books);
      if(res.data.count==0){return;}
      that.setData({List:that.data.List.concat(res.data.books),count:that.data.count+res.data.count});
      wx.hideToast();
    })
  },
  onLoad:function (options) {
      var that=this;
      that.setData({
          toRe : star.toRefresh()
      });
      console.log("加载");
      console.log(that.data);


      request.getBookList(that.data.toRe,"",function(res){
          var types = res.data.books;
          console.log(res.data.books);
          if(res.data.count==0){
              return;
          }
          that.setData({List:res.data.books,count:that.data.count+res.data.count});
      });
  },
  // onLoad: function () {
  //   console.log('onLoad')
  //   var that = this
  //   // console.log(wx)
  //   //调用应用实例的方法获取全局数据
  //   app.getUserInfo(function(userInfo){
  //     //更新数据
  //     // console.log(this)
  //     that.setData({
  //       userInfo:userInfo
  //     })
  //   })
  // }
})
