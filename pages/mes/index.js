//index.js
//获取应用实例
var app = getApp()
const YEAR = 360*24*60*60*1000
const MONTH = 30*24*60*60*1000
const DAY = 24*60*60*1000
const HOUR = 60*60*1000
const MINUTE = 60*1000
const SECOND = 1000

Page({
  data: {
    motto: 'Hello World',
    userInfo: {},
    list:[
        {
          "title":"互助",
          "imgUrl":"resources/help.png",
          "navUrl":"../newsdetail/index",
          "time":1492712609000,
          "content":"毕业季高校鱼塘大赛",
          "warning":3,
          "classNames":"mutual-help"
        },
        {
          "title":"风景",
          "imgUrl":"resources/scenery.png",
          "navUrl":"../newsdetail/index",
          "time":1492712603000,
          "content":"毕业季高校鱼塘大赛",
          "warning":2,
          "classNames":"mutual-help"
        },
        {
          "title":"关注",
          "imgUrl":"resources/following.png",
          "navUrl":"../newsdetail/index",
          "time":1492712609000,
          "content":"毕业季高校鱼塘大赛",
          "warning":0,
          "classNames":"mutual-help"
        }
    ]    
  },
  //事件处理函数
  bindViewTap: function() {
    wx.navigateTo({
      url: '../logs/logs'
    })
  },
  caculateTime:function(e){
    var that  =  this;
    var nowTime = 0;
    var times = 0;
    var year = 0,
        month = 0,
        day = 0,
        hour = 0,
        minute = 0,
        second = 0;

    function formateTime(now){
        for(var i=0,len=that.data.list.length;i<len;i++){
          times = (now - that.data.list[i].time);

          year = Math.floor(times/YEAR)
          if(year) return year+"年前"


          month = Math.floor(times/MONTH) 
          if(month) return month+"个月前"
            
          day = Math.floor(times/DAY)
          if(day) return day+"天前"

          hour = Math.floor(times/HOUR)
          if(hour) return hour+"小时前"

          minute = Math.floor(times/MINUTE)
          if(minute) return minute+"小时前"

          second = Math.floor(times/SECOND)
          if(second) return second+"小时前"

        }
    }  
    (function(that){

      setInterval(function(){
        nowTime = (new Date()).getTime();
        for(var i=0,len=that.data.list.length;i<len;i++){
          that.data.list[i].formateTime = formateTime(nowTime);
          
        }  

        that.setData({
          list:that.data.list
        })
        //console.log("time："+that.data.list[0].formateTime)
      },1000)
        
    })(that)


  },
  onLoad: function () {
    var that = this;
    console.log('onLoad')

    that.caculateTime();

  }
})
