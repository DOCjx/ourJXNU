// pages/detail/detail.js
const request=require("../../../../utils/requests");
// var star = require("../../../../utils/star");
var app = getApp()
Page({
  data:{
      id:"",
      List:[
      {
        "author": {
          "name":"潘绥铭",
          "pic":"http://ockglmdea.bkt.clouddn.com/1.jpg",
          "authrity":1
        },
        "favorite":false,
        "tags": [
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
        "image": "http://ockglmdea.bkt.clouddn.com/psb.jpg",
        "pages": "329",
        "id": "1023169",
        "summary": "校医院毕业生体检，一位同学遗失身份证，请若有人认识请告知失主。",
        "price": "17",
        markers: [{
          latitude: 28.681317,
          longitude: 116.025667,
          name: "校医院"
        }],
        "time":1492712609000
      },
      {
        "author": {
          "name":"邵燕君",
          "pic":"http://ockglmdea.bkt.clouddn.com/2.jpg",
          "authrity":1
        },
        "favorite":true,
        "tags": [
          {
            "count": 10,
            "fav":true,
            "name": "米蓝",
            "pic":"http://ockglmdea.bkt.clouddn.com/8.jpg",
            "title": "没从那经过"
          },
          {
            "count": 8,
            "fav":false,
            "name": "勺子",
            "pic":"http://ockglmdea.bkt.clouddn.com/3.jpg",
            "title": "心疼楼主三十秒。"
          },
          {
            "count": 7,
            "fav":true,
            "name": "国服第一李白",
            "pic":"http://ockglmdea.bkt.clouddn.com/9.jpg",
            "title": "是灰色的吗？"
          },
          {
            "count": 1,
            "fav":false,
            "name": "稻壳",
            "pic":"http://ockglmdea.bkt.clouddn.com/2.jpg",
            "title": "我室友，大家帮帮忙"
          },
          {
            "count": 4,
            "fav":false,
            "name": "大虾",
            "pic":"http://ockglmdea.bkt.clouddn.com/4.jpg",
            "title": "好吧，傻狍子"
          },
          {
            "count": 2,
            "fav":false,
            "name": "小花生",
            "pic":"http://ockglmdea.bkt.clouddn.com/6.jpg",
            "title": "这不是我家茹茹吗"
          }
        ],
        "image": "http://ockglmdea.bkt.clouddn.com/5.JPG",
        "pages": "335",
        "id": "1140896",
        "summary": "在这个位置遗失了一个小包包，对我意义重大，请好心人联系我。18334205426",
        "price": "17",
        markers: [{
          latitude: 28.677806,
          longitude: 116.037447,
          name: '音乐艺术广场'
        }],
        "time": 1492521200000,
      },
      {
        "author": {
          "name":"陈昕",
          "pic":"http://ockglmdea.bkt.clouddn.com/3.jpg",
          "authrity":0
        },
        "favorite":false,
        "tags": [
          {
            "count": 7,
            "fav":true,
            "name": "芈月",
            "pic":"http://ockglmdea.bkt.clouddn.com/7.jpg",
            "title": "小哥哥可以不"
          },
          {
            "count": 6,
            "fav":false,
            "name": "star",
            "pic":"http://ockglmdea.bkt.clouddn.com/6.jpg",
            "title": "我刚好有空哦！私聊私聊"
          },
          {
            "count": 2,
            "fav":true,
            "name": "hellobick",
            "pic":"http://ockglmdea.bkt.clouddn.com/8.jpg",
            "title": "我就在你隔壁"
          },
          {
            "count": 0,
            "fav":false,
            "name": "稻壳er",
            "pic":"http://ockglmdea.bkt.clouddn.com/10.jpg",
            "title": "这时候你需要一个男票"
          },
          {
            "count": 1,
            "fav":false,
            "name": "玉米棒",
            "pic":"http://ockglmdea.bkt.clouddn.com/7.jpg",
            "title": "可以"
          }
        ],
        "image": "http://ockglmdea.bkt.clouddn.com/1.JPG  ",
        "pages": "264",
        "id": "1140897",
        "summary": "哪位小姐姐可以帮忙带一杯奶茶吗？地点右下角，s230",
        "price": "14",
        markers: [{
          latitude: 28.682512,
          longitude: 116.033585,
          name: "12栋宿舍"
        }],
        "time": 1493568000000
      },
      {
        "author": {
          "name":"王晓明",
          "pic":"http://ockglmdea.bkt.clouddn.com/4.jpg",
          "authrity":0
        },
        "favorite":false,
        "tags": [
          {
            "count": 26,
            "fav":true,
            "name": "稻壳er",
            "pic":"http://ockglmdea.bkt.clouddn.com/10.jpg",
            "title": "找人陪呗"
          },
          {
            "count": 17,
            "fav":true,
            "name": "玉米棒",
            "pic":"http://ockglmdea.bkt.clouddn.com/7.jpg",
            "title": "多和身边的人沟通"
          }
        ],
        "image": "",
        "pages": "394",
        "id": "1227079",
        "summary": "最近好难过怎么办呀。。。。",
        "price": "18",
        markers: [],      
      },
      {
        "author": {
          "name":"包亚明",
          "pic":"http://ockglmdea.bkt.clouddn.com/5.JPG",
          "authrity":1
        },
        "favorite":false,
        "tags": [
          {
            "count": 30,
            "fav":false,
            "name": "明月",
            "pic":"http://ockglmdea.bkt.clouddn.com/4.jpg",
            "title": "我就是你的小姐姐，私聊我嘿嘿"
          },
          {
            "count": 18,
            "fav":true,
            "name": "虾米",
            "pic":"http://ockglmdea.bkt.clouddn.com/6.jpg",
            "title": "有人找你o，明月同学"
          },
          {
            "count": 12,
            "fav":false,
            "name": "mthink",
            "pic":"http://ockglmdea.bkt.clouddn.com/2.jpg",
            "title": "楼主可以的"
          }
        ],
        "image": "http://ockglmdea.bkt.clouddn.com/2.JPG",
        "pages": "269",
        "id": "1313911",
        "summary": "拿个小姐姐画得不错，求联系方式",
        "price": "14",
        markers: [{
          latitude: 28.682362,
          longitude: 116.036139,
          name: '贝壳体育场'
        }],      
      },
      {
        "author": {
          "name":"南帆",
          "pic":"http://ockglmdea.bkt.clouddn.com/6.jpg",
          "authrity":0
        },
        "favorite":true,
        "tags": [
          {
            "count": 9,
            "fav":false,
            "name": "布什x",
            "pic":"http://ockglmdea.bkt.clouddn.com/.jpg",
            "title": "感觉有点危险，毕竟好久没有上英语课了"
          },
          {
            "count": 5,
            "fav":true,
            "name": "筷子",
            "pic":"http://ockglmdea.bkt.clouddn.com/.jpg",
            "title": "急啥，人有多大胆，复习有多晚。反正我不怕，改革就是平时分多了而已"
          },
          {
            "count": 4,
            "fav":true,
            "name": "包亚明",
            "pic":"http://ockglmdea.bkt.clouddn.com/8.jpg",
            "title": "楼上正解"
          }
        ],
        "image": "",
        "pages": "266",
        "id": "1314022",
        "summary": "英语改革大家有什么好的计划吗？",
        "price": "14",
        markers: [],      },
      {
        "author": {
          "name":"陈映芳",
          "pic":"http://ockglmdea.bkt.clouddn.com/7.jpg",
          "authrity":1
        },
        "favorite":false,
        "tags": [
          {
            "count": 25,
            "fav":false,
            "name": "爆米花",
            "pic":"http://ockglmdea.bkt.clouddn.com/9.jpg",
            "title": "我也从旁边经过"
          }
        ],
        "image": "http://ockglmdea.bkt.clouddn.com/3.JPG",
        "pages": "261",
        "id": "1325385",
        "summary": "跳舞的黑衣服女生求介绍",
        "price": "40",
        markers: [],      
      },
      {
        "author": {
          "name":"戴锦华编",
          "pic":"http://ockglmdea.bkt.clouddn.com/9.jpg",
          "authrity":1
        },
        "favorite":false,
        "tags": [
          {
            "count": 39,
            "fav":true,
            "name": "戴锦华",
            "pic":"http://ockglmdea.bkt.clouddn.com/7.jpg",
            "title": "首页第二个资源，你值得拥有"
          }
        ],
        "image": "",
        "pages": "231",
        "id": "1556261",
        "summary": "谁可以帮我复习高数吗",
        "price": "16",
        markers: [],      
      },
      {
        "author": {
          "name":"宋伟杰",
          "pic":"http://ockglmdea.bkt.clouddn.com/11.jpg",
          "authrity":0
        },
        "favorite":true,
        "tags": [
          {
            "count": 8,
            "fav":false,
            "name": "金庸",
            "pic":"http://ockglmdea.bkt.clouddn.com/1.jpg",
            "title": "感觉大冰来我们学校好多次了，，，"
          },
          {
            "count": 8,
            "fav":false,
            "name": "花生",
            "pic":"http://ockglmdea.bkt.clouddn.com/4.jpg",
            "title": "挺喜欢他的书"
          },
          {
            "count": 3,
            "fav":false,
            "name": "宋伟杰",
            "pic":"http://ockglmdea.bkt.clouddn.com/6.jpg",
            "title": "可以啊"
          }
        ],
        "image": "http://ockglmdea.bkt.clouddn.com/6.JPG",
        "pages": "252",
        "id": "1661409",
        "summary": "谁有《阿弥陀佛，么么哒》吗？咱们换着看",
        "price": "13",
        markers: [{
          latitude: 28.681806,
          longitude: 116.032104,
          name: '图文信息中心'
        }],      
      }
    ],
    tip: "我的话"
  },
  favTap: function (e) {
    // console.log(e.currentTarget.id);
    var id = e.currentTarget.id, list = this.data.bookInfo;
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
      bookInfo: list
    });
  },
  onLoad:function(options){
      // 页面初始化 options为页面跳转所带来的参数
      var that=this;
      that.setData({ id:options.id});
      wx.showToast({
          title: '加载中',
          icon: 'loading',
          duration: 10000
      });
      var list = this.data.List;
      var id = this.data.id;
      for(var i=0, len = list.length; i < len; i++){
        if( id==list[i].id ){
          that.setData({bookInfo:list[i]});
        }
      }

      app.getUserInfo(function(userInfo){
        //更新数据
        that.setData({
          userInfo:userInfo
        })
      })
      // request.getBookById(that.data.id,function(res){

      //     var types =res.data;
      //     var rating = types.rating;
      //     // rating.block = star.get_star(rating.average);

      //     res.data = types;
      //     console.log(res.data);

      //     that.setData({bookInfo:res.data});
      // });
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
    var list = this.data.List;
    var id = this.data.id;
    //将当前评论数据插入到第4个位置
    for(var i=0, len = list.length-1; i < len; i++){
      if( id==list[i].id ){
        var j;
        for(j = list[i].tags.length-1; j > 2; j--){
          list[i].tags[j+1] = list[i].tags[j];
        }
        list[i].tags[j+1] = {
          "count": 0,
          "fav":false,
          "name": this.data.userInfo.nickName,
          "pic": this.data.userInfo.avatarUrl,
          "title": comment
        };
        this.setData({
          bookInfo:list[i]
        });
        break;
      }
    }
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
    var list = this.data.List;
    var id = this.data.id;
    //将当前评论数据插入到第4个位置
    for(var i=0, len = list.length-1; i < len; i++){
      if( id==list[i].id ){
        var j;
        for(j = list[i].tags.length-1; j > 2; j--){
          list[i].tags[j+1] = list[i].tags[j];
        }
        list[i].tags[j+1] = {
          "count": 0,
          "fav":false,
          "name": this.data.userInfo.nickName,
          "pic": this.data.userInfo.avatarUrl,
          "title": comment
        };
        this.setData({
          bookInfo: list[i]
        });
        break;
      }
    }
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