// pages/detail/detail.js
Page({
  data:{
      "users": [
        {
          "count": 20,
          "fav":false,
          "name": "稻壳",
          "pic":"http://ockglmdea.bkt.clouddn.com/2.jpg",
          "title": "好像是我室友。。。"
        },
        {
          "count": 11,
          "fav":true,
          "name": "大虾",
          "pic":"http://ockglmdea.bkt.clouddn.com/4.jpg",
          "title": "楼上认错了吧！"
        },
        {
          "count": 7,
          "fav":false,
          "name": "小花生",
          "pic":"http://ockglmdea.bkt.clouddn.com/6.jpg",
          "title": "这不是我家茹茹吗"
        },
        {
          "count": 6,
          "fav":true,
          "name": "米蓝",
          "pic":"http://ockglmdea.bkt.clouddn.com/1.jpg",
          "title": "不认识"
        },
        {
          "count": 0,
          "fav":false,
          "name": "勺子",
          "pic":"http://ockglmdea.bkt.clouddn.com/3.jpg",
          "title": "似曾相识"
        },
        {
          "count": 3,
          "fav":false,
          "name": "国服第一李白",
          "pic":"http://ockglmdea.bkt.clouddn.com/9.jpg",
          "title": "是女神吗"
        }
      ],
      resourses:[
      {
        navId:1,
        titleId:1,
        detail:[
          {
            id:1,
            title:"数据结构15级试卷A",
            fav:false,
            userId:1,
            type:1
          },{
            id:2,
            title:"数据结构15级试卷B",
            fav:true,
            userId:2,
            type:4
          }
        ]
      },
      {
        navId:1,
        titleId:3,
        detail:[
          {
            id:1,
            title:"计算机组成原理实验仪器介绍及实验报告",
            fav:false,
            userId:3,
            type:1
          }
        ]
      },
      {
        navId:1,
        titleId:4,
        detail:[
          {
            id:1,
            title:"计算机网络数据统计",
            fav:true,
            userId:4,
            type:3
          }
        ]
      },
      {
        navId:1,
        titleId:2,
        detail:[
          {
            id:1,
            title:"c语言从入门到放弃",
            fav:false,
            userId:5,
            type:4
          }
        ]
      }
    ],
    resourcesColor: [
      "#2e5187",
      "#ec6648",
      "#439366",
      "#9e272d",
    ],
  },
  onLoad:function(options){
      // 页面初始化 options为页面跳转所带来的参数
      var that=this;
      that.setData({ options: options});
      wx.showToast({
          title: '加载中',
          icon: 'loading',
          duration: 10000
      });
      console.log(this.data.options);
      var data = this.data.resourses;
      for(var i=0, len = data.length; i < len-1; i++){
        if( data[i].navId == this.data.options.navId && data[i].titleId == this.data.options.titleId ) {
          this.setData({
            resourse: data[i]
          })
          break;
        }
      }
  },
  favTap: function (e) {
    var id = e.currentTarget.id, list = this.data.resourse;
    for (var i = 0, len = list.detail.length; i < len; ++i) {
      
      if (list.detail[i].id == id) {
        // console.log(list[i].favorite);
        list.detail[i].fav = !list.detail[i].fav;
        break;
      }
    }
    // console.log(list[i].favorite);
    this.setData({
      resourse: list
    });
  },
  onReady:function(){
    // 页面渲染完成
   wx.hideToast();
  },
  onShow:function(){
    // 页面显示
    console.log("显示");
  },
  onHide:function(){
    // 页面隐藏
  },
  onUnload:function(){
    // 页面关闭
  }
})