const request=require("../../../../utils/requests");
Page({
    data:{
        "users": [],
        "resourses":[],
        resourcesColor: [
            "#2e5187",
            "#ec6648",
            "#439366",
            "#9e272d",
        ],
    },
    onLoad:function(options){
        // 页面初始化 options为页面跳转所带来的参数
        var that = this;
        that.setData({options: options});
        wx.showToast({
            title: '加载中',
            icon: 'loading',
            duration: 1000
        });
        request.getUsers('', "", function(res){
            if(res.data.content.length==0){
                return;
            }
            var users = res.data.content;
            request.getResourcesDetail('', {...options}, function(res){
                if(res.data.content.length==0){
                    return;
                }
                that.setData({
                    resourse: res.data.content,
                    users
                });
                wx.hideToast();
            });
        });
    },
    favTap: function (e) {
        var id = e.currentTarget.id, list = this.data.resourse;
        for (var i = 0, len = list.detail.length; i < len; ++i) {
            if (list.detail[i].id == id) {
                list.detail[i].fav = !list.detail[i].fav;
                break;
            }
        }
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
    },
    onHide:function(){
        // 页面隐藏
    },
    onUnload:function(){
        // 页面关闭
    }
})