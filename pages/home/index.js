//index.js
//获取应用实例
var app = getApp()
const request=require("../../utils/requests");
const star=require("../../utils/star");
Page({
  data: {
    resourses:[
      {
        navid:1,
        titleId:1,
        detail:[
          {
            id:1,
            title:"数据结构15级试卷A",
            type:1
          },{
            id:2,
            title:"数据结构15级试卷B",
            type:4
          }
        ]
      },
      {
        navid:1,
        titleId:3,
        detail:[
          {
            id:1,
            title:"计算机组成原理实验仪器介绍及实验报告",
            type:1
          }
        ]
      },
      {
        navid:1,
        titleId:4,
        detail:[
          {
            id:1,
            title:"计算机网络数据统计",
            type:3
          }
        ]
      },
      {
        navid:1,
        titleId:2,
        detail:[
          {
            id:1,
            title:"c语言从入门到放弃",
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
    tagArr:[
      {
        nav:"猜你喜欢",
        navId:0,
        open:true,
        tags:[
          {
            id:1,
            title:"数字逻辑课后习题答案",
            type:2
          },
          {
            id:2,
            title:"高数课后习题答案",
            type:1
          },
          {
            id:3,
            title:"15考研真题",
            type:1
          },
          {
            id:4,
            title:"马原题库",
            type:3
          },
          {
            id:5,
            title:"近代史题库",
            type:1
          },
          {
            id:6,
            title:"马云的说话之道",
            type:4
          },
          {
            id:7,
            title:"乔布斯传",
            type:4
          },
        ]
      },
      {
        nav:"计算机信息工程学院",
        open:false,
        navId:1,
        navC:[
          {
            title:"数据结构",
            titleId:1
          },
          {
            title:"c语言",
            titleId:2
          },
          {
            title:"计算机组成原理",
            titleId:3
          },
          {
            title:"计算机网络",
            titleId:4
          },
          {
            title:"数字逻辑",
            titleId:5
          },
        ]
      },{
        nav:"公共必修",
        open:false,
        navId:2,
        navC:[
          {
            title:"马克思主义原理",
            titleId:1
          },
          {
            title:"近代史纲要",
            titleId:2
          },
          {
            title:"思想品德与道德修养",
            titleId:3
          },
        ]
      },{
        nav:"其它",
        open:false,
        navId:3,
        navC:[
          {
            title:"电子商务",
            titleId:1
          },
          {
            title:"经典心理电影欣赏",
            titleId:2
          },
          {
            title:"野外生存与技巧",
            titleId:3
          },
          {
            title:"西藏旅游与野外生存",
            titleId:4
          },
        ]
      }
    ],
    shareData: {
      title: '我们的师大',
      desc: '身边的小帮手',
      path: '/pages/home/index'
    },
    imgUrls:[
      "http://ockglmdea.bkt.clouddn.com/banner5.jpg",
      "http://ockglmdea.bkt.clouddn.com/banner4.jpg"
      ],
    navTo: 1,
    switchChecked: true,
    indicatorDots: true,
    autoplay: true,
    interval: 5000,
    duration: 2000,
    count: 0,
    toRe:0,
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
            "count": 6,
            "name": "稻壳",
            "title": "好像是我室友。。。"
          },
          {
            "count": 3,
            "name": "大虾",
            "title": "楼上认错了吧！"
          },
          {
            "count": 1,
            "name": "小花生",
            "title": "这不是我家茹茹吗"
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
            "name": "米蓝",
            "title": "没从那经过"
          },
          {
            "count": 8,
            "name": "勺子",
            "title": "心疼楼主三十秒。"
          },
          {
            "count": 7,
            "name": "国服第一李白",
            "title": "是灰色的吗？"
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
            "name": "芈月",
            "title": "小哥哥可以不"
          },
          {
            "count": 6,
            "name": "star",
            "title": "我刚好有空哦！私聊私聊"
          },
          {
            "count": 2,
            "name": "hellobick",
            "title": "我就在你隔壁"
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
            "name": "稻壳er",
            "title": "找人陪呗"
          },
          {
            "count": 17,
            "name": "玉米棒",
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
            "name": "明月",
            "title": "我就是你的小姐姐，私聊我嘿嘿"
          },
          {
            "count": 18,
            "name": "虾米",
            "title": "有人找你o，明月同学"
          },
          {
            "count": 12,
            "name": "mthink",
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
            "count": 5,
            "name": "布什x",
            "title": "感觉有点危险，毕竟好久没有上英语课了"
          },
          {
            "count": 5,
            "name": "筷子",
            "title": "急啥，人有多大胆，复习有多晚。反正我不怕，改革就是平时分多了而已"
          },
          {
            "count": 5,
            "name": "包亚明",
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
            "name": "爆米花",
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
            "name": "戴锦华",
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
            "name": "金庸",
            "title": "感觉大冰来我们学校好多次了，，，"
          },
          {
            "count": 8,
            "name": "花生",
            "title": "挺喜欢他的书"
          },
          {
            "count": 3,
            "name": "宋伟杰",
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
    List1:[
      {
        "author": {
          "name":"潘绥铭",
          "pic":"http://ockglmdea.bkt.clouddn.com/1.jpg",
          "authrity":1
        },
        "favorite":false,
        "tags": [
          {
            "count": 6,
            "name": "稻壳",
            "title": "好像是我室友。。。"
          },
          {
            "count": 3,
            "name": "大虾",
            "title": "楼上认错了吧！"
          },
          {
            "count": 1,
            "name": "小花生",
            "title": "这不是我家茹茹吗"
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
            "name": "米蓝",
            "title": "没从那经过"
          },
          {
            "count": 8,
            "name": "勺子",
            "title": "心疼楼主三十秒。"
          },
          {
            "count": 7,
            "name": "国服第一李白",
            "title": "是灰色的吗？"
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
            "name": "芈月",
            "title": "小哥哥可以不"
          },
          {
            "count": 6,
            "name": "star",
            "title": "我刚好有空哦！私聊私聊"
          },
          {
            "count": 2,
            "name": "hellobick",
            "title": "我就在你隔壁"
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
            "name": "稻壳er",
            "title": "找人陪呗"
          },
          {
            "count": 17,
            "name": "玉米棒",
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
            "name": "明月",
            "title": "我就是你的小姐姐，私聊我嘿嘿"
          },
          {
            "count": 18,
            "name": "虾米",
            "title": "有人找你o，明月同学"
          },
          {
            "count": 12,
            "name": "mthink",
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
            "count": 5,
            "name": "布什x",
            "title": "感觉有点危险，毕竟好久没有上英语课了"
          },
          {
            "count": 5,
            "name": "筷子",
            "title": "急啥，人有多大胆，复习有多晚。反正我不怕，改革就是平时分多了而已"
          },
          {
            "count": 5,
            "name": "包亚明",
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
            "name": "爆米花",
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
            "name": "戴锦华",
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
            "name": "金庸",
            "title": "感觉大冰来我们学校好多次了，，，"
          },
          {
            "count": 8,
            "name": "花生",
            "title": "挺喜欢他的书"
          },
          {
            "count": 3,
            "name": "宋伟杰",
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
    List2:[
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
            "name": "爆米花",
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
          "name":"王晓明",
          "pic":"http://ockglmdea.bkt.clouddn.com/4.jpg",
          "authrity":0
        },
        "favorite":false,
        "tags": [
          {
            "count": 26,
            "name": "稻壳er",
            "title": "找人陪呗"
          },
          {
            "count": 17,
            "name": "玉米棒",
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
          "name":"潘绥铭",
          "pic":"http://ockglmdea.bkt.clouddn.com/1.jpg",
          "authrity":1
        },
        "favorite":false,
        "tags": [
          {
            "count": 6,
            "name": "稻壳",
            "title": "好像是我室友。。。"
          },
          {
            "count": 3,
            "name": "大虾",
            "title": "楼上认错了吧！"
          },
          {
            "count": 1,
            "name": "小花生",
            "title": "这不是我家茹茹吗"
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
            "name": "米蓝",
            "title": "没从那经过"
          },
          {
            "count": 8,
            "name": "勺子",
            "title": "心疼楼主三十秒。"
          },
          {
            "count": 7,
            "name": "国服第一李白",
            "title": "是灰色的吗？"
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
          "name":"戴锦华编",
          "pic":"http://ockglmdea.bkt.clouddn.com/9.jpg",
          "authrity":1
        },
        "favorite":false,
        "tags": [
          {
            "count": 39,
            "name": "戴锦华",
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
          "name":"陈昕",
          "pic":"http://ockglmdea.bkt.clouddn.com/3.jpg",
          "authrity":0
        },
        "favorite":false,
        "tags": [
          {
            "count": 7,
            "name": "芈月",
            "title": "小哥哥可以不"
          },
          {
            "count": 6,
            "name": "star",
            "title": "我刚好有空哦！私聊私聊"
          },
          {
            "count": 2,
            "name": "hellobick",
            "title": "我就在你隔壁"
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
          "name":"包亚明",
          "pic":"http://ockglmdea.bkt.clouddn.com/5.JPG",
          "authrity":1
        },
        "favorite":false,
        "tags": [
          {
            "count": 30,
            "name": "明月",
            "title": "我就是你的小姐姐，私聊我嘿嘿"
          },
          {
            "count": 18,
            "name": "虾米",
            "title": "有人找你o，明月同学"
          },
          {
            "count": 12,
            "name": "mthink",
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
            "count": 5,
            "name": "布什x",
            "title": "感觉有点危险，毕竟好久没有上英语课了"
          },
          {
            "count": 5,
            "name": "筷子",
            "title": "急啥，人有多大胆，复习有多晚。反正我不怕，改革就是平时分多了而已"
          },
          {
            "count": 5,
            "name": "包亚明",
            "title": "楼上正解"
          }
        ],
        "image": "",
        "pages": "266",
        "id": "1314022",
        "summary": "英语改革大家有什么好的计划吗？",
        "price": "14",
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
            "name": "金庸",
            "title": "感觉大冰来我们学校好多次了，，，"
          },
          {
            "count": 8,
            "name": "花生",
            "title": "挺喜欢他的书"
          },
          {
            "count": 3,
            "name": "宋伟杰",
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
    scenery: [
      {
        id: 1,
        image: [
          "http://ockglmdea.bkt.clouddn.com/IMG_20151211_204535.jpg",
        ],
        comments: 23,
        fav: true,
        summary: "夜里太烦，不知不觉走到了正大坊,以前都是匆匆经过，从没注意到它，现在的正大坊这么安静这么祥和。",
        markers: [{
          latitude: 28.675039,
          longitude: 116.032362,
          name: "正大坊"
        }]
      },
      {
        id: 2,
        image: [
          "http://ockglmdea.bkt.clouddn.com/IMG_20151130_172030.jpg",
        ],
        comments: 52,
        fav: false,
        summary: "大学这么几年经常听到镜湖的天鹅被塑料袋缠住了嘴，为啥它们那么喜欢吃塑料呢，，，，",
        markers: [{
          latitude: 28.679208,
          longitude: 116.032244,
          name: "镜湖"
        }]
      },
      {
        id: 3,
        image: [
          "http://ockglmdea.bkt.clouddn.com/IMG_20150913_065449.jpg",
        ],
        comments: 15,
        fav: false,
        summary: "来到师大很意外的是，我们学校居然有小鹿",
        markers: [{
          latitude: 28.674766,
          longitude: 116.036439,
          name: "鹿园"
        }]
      },
    ]
  },
  caculateTime:function(e){
    var that = this; 
    function   formatDate(now)   {
      // console.log('formatDate:'+now);
      var seconds = now / 1000;
      var years = Math.floor(seconds / (3600 * 24*30*12));
      var months = Math.floor(seconds / (3600 * 24*30))-years*12;
      var days = Math.floor(seconds / (3600 * 24))-years*12*30-months*30;
      var hours = Math.floor(seconds / (3600))-years*12*30*24-months*30*24-days*24;
      var minutes = Math.floor(seconds / 60)-years*12*30*24*60-months*30*24*60-days*24*60-hours*60;
      seconds = Math.floor(seconds%60);
      //时间十位是否加0
      // if (hours < 10) {
      //   hours = "0" + hours;
      // }
      // if (minutes < 10) {
      //   minutes = "0" + minutes;
      // }
      // if (seconds < 10) {
      //   seconds = "0" + seconds;
      // } 
      return [years,months,days,hours,minutes,seconds];     
    }
    var nowTime = new Date();
    // console.log(new Date('2017-5-1')-0);
    
    //模拟初始化时间
    for(var i=0;i<that.data.List.length;i++){
      if( i==0 ) that.data.List[i].time = nowTime-0+1000*60*60*24*3+1000*60*60*3+5000;
      else if( i==1 ) that.data.List[i].time = nowTime-0+1000*60*60*24*2+1000*60*60*4+20000;
      else if( i==2 ) that.data.List[i].time = nowTime-0+1000*60*60*24*1+1000*60*60*1+40000;
      else if( i==3 ) that.data.List[i].time = nowTime-1000;
      else that.data.List[i].time = nowTime-0+(i%4)*1000*60*60+(i%3)*1000*60+(i%6)*1000;
      //console.log(that.data.List[i].time);
    }
    //计算时间差
    for(var i=0;i<that.data.List.length;i++){
      that.data.List[i].time = that.data.List[i].time - nowTime;
    }
    (function(that){
      setInterval(function() {
        for(var i=0;i<that.data.List.length;i++){
          // console.log(that.data.List[i].time);
          if( that.data.List[i].time>=0 ){
            that.data.List[i].formatTime = formatDate(that.data.List[i].time);
            that.data.List[i].time-=1000;
          }else{
            that.data.List[i].formatTime = 0;
          }
        }
        that.setData({
          List: that.data.List
        });
      }, 1000);
    })(that);
  },
  kindToggle: function (e) {
    // console.log(e.currentTarget);
    var id = e.currentTarget.id, list = this.data.tagArr;
    for (var i = 0, len = list.length; i < len; ++i) {
      
      if (list[i].navId == id) {
        // console.log(list[i].id);
        list[i].open = !list[i].open
      } else {
        list[i].open = false
      }
    }
    this.setData({
      tagArr: list
    });
  },
  favTap: function (e) {
    console.log(e)
    var id = e.currentTarget.id, list = this.data.List;
    for (var i = 0, len = list.length; i < len; ++i) {
      
      if (list[i].id == id) {
        // console.log(list[i].favorite);
        list[i].favorite = !list[i].favorite;
        break;
      }
    }
    // console.log(list[i].favorite);
    this.setData({
      List: list
    });
  },
  favTap3: function (e) {
    // console.log(e)
    var id = e.currentTarget.id, list = this.data.scenery;
    for (var i = 0, len = list.length; i < len; ++i) {
      
      if (list[i].id == id) {
        // console.log(list[i].favorite);
        list[i].fav = !list[i].fav;
        break;
      }
    }
    // console.log(list[i].favorite);
    this.setData({
      scenery: list
    });
  },
  onShareAppMessage: function () {
    return this.data.shareData
  },
  switchChange: function (e){
    // console.log(e.detail);
    // console.log('switch1 发生 change 事件，携带值为', e.detail.value)
    var that = this;
    wx.showToast({
      title: '加载中',
      icon: 'loading',
      duration: 10000
    });
    if( e.detail.value ){
      this.setData({
        switchChecked : false,
        List: this.data.List2
      });
    }else{
      this.setData({
        switchChecked : true,
        List: this.data.List1
      });
    }
    var nowTime = new Date();
    //模拟初始化时间
    for(var i=0;i<that.data.List.length;i++){
      if( i==0 ) that.data.List[i].time = nowTime-0+1000*60*60*24*3+1000*60*60*3+5000;
      else if( i==1 ) that.data.List[i].time = nowTime-0+1000*60*60*24*2+1000*60*60*4+20000;
      else if( i==2 ) that.data.List[i].time = nowTime-0+1000*60*60*24*1+1000*60*60*1+40000;
      else if( i==3 ) that.data.List[i].time = nowTime-1000;
      else that.data.List[i].time = nowTime-0+(i%4)*1000*60*60+(i%3)*1000*60+(i%6)*1000;
      //console.log(that.data.List[i].time);
    }
    //计算时间差
    for(var i=0;i<that.data.List.length;i++){
      that.data.List[i].time = that.data.List[i].time - nowTime;
    }
    wx.hideToast();
  },
  navTo:function(e){
    // console.log(e);
    var arr=[
      {
        backgroundColor:"#FBFBFB",
        color:"#626567",
        borderBottomColor:" #FBFBFB"
      },{
        backgroundColor:"#FBFBFB",
        color:"#626567",
        borderBottomColor:" #FBFBFB"
      },{
        backgroundColor:"#FBFBFB",
        color:"#626567",
        borderBottomColor:" #FBFBFB"
      }
    ];
    if ( e!=null ) {
      arr[e.currentTarget.dataset.navto-1].color = "#00b4cd";
      arr[e.currentTarget.dataset.navto-1].borderBottomColor = "#00b4cd";
      this.setData({
        navTo : e.currentTarget.dataset.navto,
        navColor:arr
      });
    }else{
      arr[this.data.navTo-1].color = "#00b4cd";
      arr[this.data.navTo-1].borderBottomColor = "#00b4cd";
      this.setData({
        navTo : this.data.navTo,
        navColor:arr
      });
    }
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
          //that.setData({List:res.data.books,count:that.data.count+res.data.count});

      });
  },
  toRefresh: function (e) {
      var that=this;
      this.setData({
          toRe : star.toRefresh()
      });
      that.toHandel();
      // console.log("随机换一个栏目ID");
      // console.log(that.data.toRe);
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
    request.getBookList(that.data.toRe,"",function(res){
        var types = res.data.books;
        // console.log(res.data.books);
        if(res.data.count==0){
            return;
        }
        //that.setData({List:res.data.books,count:that.data.count+res.data.count});
        // that.caculateTime();
    });
  },
  onLoad:function (options) {
      var that=this;
      that.navTo();
      that.setData({
          toRe : star.toRefresh()
      });
      // console.log("加载");
      // console.log(that.data);

      // console.log(this.article);
      that.caculateTime();
      // request.getBookList(that.data.toRe,"",function(res){
      //     var types = res.data.books;
      //     // console.log(res.data.books);
      //     if(res.data.count==0){
      //         return;
      //     }
      //     that.caculateTime();
      //     //that.setData({List:res.data.books,count:that.data.count+res.data.co
      // })
  }
})