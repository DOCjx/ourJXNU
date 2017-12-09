//index.js
//获取应用实例
var app = getApp();
const request=require("../../utils/requests");
Page({
    data: {
        resourses:[],
        List: [],
        scenery: [],
        tagArr:[],
        resourcesColor: [
            "#2e5187",
            "#ec6648",
            "#439366",
            "#9e272d",
        ],
        shareData: {
            title: '我们的师大',
            desc: '身边的小帮手',
            path: '/pages/home/index'
        },
        imgUrls:[
            "http://ockglmdea.bkt.clouddn.com/banner5.jpg",
            "http://ockglmdea.bkt.clouddn.com/banner6.jpg"
        ],
        navTo: 1,
        switchChecked: true,
        indicatorDots: true,
        autoplay: true,
        interval: 5000,
        duration: 2000,
        count: 0,
        toRe: 5,
        progress:{
            percent: 0,
            isShow: false,
            superShow: true
        }
    },
    caculateTime: function(e){
        var that = this;
        function   formatDate(now)   {
            var seconds = now / 1000;
            var years = Math.floor(seconds / (3600 * 24*30*12));
            var months = Math.floor(seconds / (3600 * 24*30))-years*12;
            var days = Math.floor(seconds / (3600 * 24))-years*12*30-months*30;
            var hours = Math.floor(seconds / (3600))-years*12*30*24-months*30*24-days*24;
            var minutes = Math.floor(seconds / 60)-years*12*30*24*60-months*30*24*60-days*24*60-hours*60;
            seconds = Math.floor(seconds%60);
            return [years,months,days,hours,minutes,seconds];
        }
        let setInt = setInterval(function() {
            for(let i = 1; i< that.data.setInt; i++){
                clearInterval(i);
            }
            for(var i=0;that.data.List && i<that.data.List.length;i++){
                // console.log(that.data.List[i].time);
                if( that.data.List[i].time>=0 ){
                  that.data.List[i].formatTime = formatDate(that.data.List[i].time);
                  that.data.List[i].time-=1300;
                }else{
                  that.data.List[i].formatTime = 0;
                }
            }
            that.setData({
                List: that.data.List,
                setInt
            });
        }, 1000);
    },
    kindToggle: function (e) {
        var id = e.currentTarget.id, list = this.data.tagArr;
        for (var i = 0, len = list.length; i < len; ++i) {
            if (list[i].navId == id) {
                list[i].open = !list[i].open;
            } else {
                list[i].open = false;
            }
        }
        this.setData({
            tagArr: list
        });
    },
    favTap: function (e) {
        var id = e.currentTarget.id, list = this.data.List;
        for (var i = 0, len = list.length; i < len; ++i) {
            if (list[i].id == id) {
                list[i].favorite = !list[i].favorite;
                break;
            }
        }
        this.setData({
            List: list
        });
    },
    favTap3: function (e) {
        var id = e.currentTarget.id, list = this.data.scenery;
        for (var i = 0, len = list.length; i < len; ++i) {
            if (list[i].id == id) {
                list[i].fav = !list[i].fav;
                break;
            }
        }
        this.setData({
            scenery: list
        });
    },
    onShareAppMessage: function () {
        return this.data.shareData
    },
    switchChange: function (e){
        var that = this;
        wx.showToast({
            title: '加载中',
            icon: 'loading',
            duration: 1000
        });
        let type = e.detail.value ? 1 : 0;
        request.getArticleList(that.data.toRe, {type}, function(res){
            if(res.data.status==0){
                return;
            }
            that.setData({List: res.data.content, switchChecked: !that.data.switchChecked});
            that.caculateTime();
            wx.hideToast();
        });
    },
    navTo:function(e){
        var that = this;
        var arr = [
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
                navColor: arr
            });
        }else{
            arr[this.data.navTo-1].color = "#00b4cd";
            arr[this.data.navTo-1].borderBottomColor = "#00b4cd";
            this.setData({
                navTo : this.data.navTo,
                navColor: arr
            });
        }
        that.toRefresh();
    },
    toRefresh: function (type = 0) {
        var that=this;
        that.data.navTo == 1 && (type || (that.data.List && !that.data.List.length)) && request.getArticleList(that.data.toRe,{type: 0},function(res){

            if(res.data.status == 0){
                return;
            }
            that.setData({List: res.data.content, count: res.data.content.length});
            that.caculateTime();
            wx.hideToast();
        });
        that.data.navTo == 2 && (type || (that.data.tagArr && !that.data.tagArr.length)) && request.getResourcesCategory(that.data.toRe,"",function(res){
            if(res.data.status == 0){
                return;
            }
            that.setData({tagArr:res.data.content});
        });
        that.data.navTo == 3 && (type || (that.data.scenery && !that.data.scenery.length)) && request.getScenery(that.data.toRe,"",function(res){
            if(res.data.status == 0){
                return;
            }
            that.setData({scenery:res.data.content});
        });
    },
     /* toRefresh:function(){
        var that=this;
          this.setData({start:0});
          that.searchHandel();
      },*/
    upper: function(e) {
        var that = this;
        // clearInterval(that.data.setInt);
        wx.showToast({
            title: '刷新中！',
            icon: 'loading',
            duration: 500
        });
        that.toRefresh(1);
    },
    lower: function(e) {
        var that=this;
        switch (that.data.navTo){
            case 1:{
                console.log(that.data.toRe);
                if(((that.data.toRe + 5) / that.data.List.length) > Math.ceil(that.data.count / 5)){
                    wx.showToast({
                        title: '到底了！',
                        icon: 'loading',
                        duration: 500
                    });
                }else{
                    wx.showToast({
                        title: '加载中',
                        icon: 'loading',
                        duration: 800
                    });
                    that.setData({
                        toRe : that.data.toRe + 5
                    });
                }
                break;
            }
            default: {
                wx.showToast({
                    title: '到底了！',
                    icon: 'loading',
                    duration: 500
                });
            }
        }
    },
    onLoad: function (options) {
        wx.showToast({
            title: '加载中',
            icon: 'loading'
        });
        var that=this;
        that.navTo();
    },
    previewImg(e){
        const current = e.currentTarget.dataset.imgurl;
        wx.previewImage({
            urls: current
        })
    },
    downloadFile(e){
        var that = this;
        var uri = e.currentTarget.dataset.uri;
        that.setData({progress: {percent: 0, isShow: true, superShow: true}});
        request.downloadFile({
            url: 'public/uploads/' + uri,
            success(res){
                if (res.statusCode === 200) {
                    var filePath = res.tempFilePath;
                    filePath && wx.saveFile({
                        tempFilePath: filePath,
                        success: function(res) {
                            var savedFilePath = res.savedFilePath;
                            wx.openDocument({
                                filePath: savedFilePath,
                                success: function (res) {
                                  console.log('打开文档成功');
                                },
                                error(err){
                                    console.log(err);
                                }
                            });
                        },
                        error(e){
                            wx.showToast({
                                title: '下载失败了！',
                                icon: 'loading',
                                duration: 800
                            });
                        }
                    });
                }else{
                    wx.showToast({
                        title: '下载失败了！',
                        icon: 'loading',
                        duration: 500
                    });
                    that.setData({progress: {percent: 0, isShow: false, superShow: false}});
                }
            }
        }, (res) => {
            const percent = res.progress;
            const isShow = percent == 100 ? false : true;
            const superShow = that.data.progress.superShow;

            const tagArr = that.data.tagArr;
            // console.log(tagArr);
            const resourcesId = uri.split('.')[0];
            tagArr[0]['tags'][resourcesId - 1]['isLoading'] = isShow;
            tagArr[0]['tags'][resourcesId - 1]['isDownload'] = !isShow;
            that.setData({progress: {percent, isShow, superShow}, tagArr});
            console.log('下载进度', res.progress);
            console.log('已经下载的数据长度', res.totalBytesWritten);
            console.log('预期需要下载的数据总长度', res.totalBytesExpectedToWrite);
        });
    }

})