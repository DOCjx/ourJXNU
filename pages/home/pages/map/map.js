Page({
  data: {
    latitude: 0,
    longitude: 0,
    markers: [{
      id: 0,
      latitude: 0,
      longitude: 0,
      width: 0,
      height: 0
    }],
    controls: [{
      id: 1,
      iconPath: 'resources/position.png',
      position: {
        left: 10,
        top: 300,
        width: 30,
        height: 30
      },
      clickable: true
    }]
  },
  onLoad: function(options){
    // console.log(options.latitude)
    // console.log(options.longitude)
    var gets = [{
      id: 1,
      latitude: options.latitude ,
      longitude: options.longitude ,
      name: options.name ,
      width: 40,
      height: 40,
      iconPath: 'resources/push_pin.png',
    }];
    wx.showToast({
        title: '定位中',
        icon: 'loading',
        duration: 10000
    });
    var that = this;
    wx.getLocation({
        type: 'wgs84',
        success: function(res) {
          // wx.openLocation({ 
          //  latitude: res.latitude, 
          //  longitude: res.longitude, 
          //  scale: 28
          // }) 
          that.setData({
            latitude: res.latitude, 
            longitude: res.longitude, 
            markers: gets
          });
        }
    });
  },
  regionchange(e) {
    console.log(e.type)
  },
  markertap(e) {
    console.log(e.markerId)
  },
  controltap(e) {
    this.getCenterLocation();
  },
  onReady: function(){
    this.mapCtx = wx.createMapContext('map');
    wx.hideToast();
  },
  onShow: function(e){

  },
  getCenterLocation: function () {
      var that = this;
      this.mapCtx.getCenterLocation({
        success: function(res){
          that.setData({
           latitude: res.latitude, 
           longitude: res.longitude
          })
        }
      })
      this.mapCtx.moveToLocation();
    },
})