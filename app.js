const api = require('./utils/config.js');
//app.js
App({
    onLaunch: function () {
        //调用API从本地缓存中获取数据
        var logs = wx.getStorageSync('logs') || []
        logs.unshift(Date.now())
        wx.setStorageSync('logs', logs);
        this.getUserInfo();
    },
    getUserInfo: function(cb){
        var that = this;
        if(this.globalData.userInfo){
            typeof cb == "function" && cb(this.globalData.userInfo);
        }else{
            //调用登录接口
            wx.login({
                success: function (res) {
                    wx.getSetting({
                        success(res) {
                            if (!res.authSetting['scope.userInfo']) {
                                wx.authorize({
                                    scope: 'scope.userInfo',
                                    success() {
                                        wx.getUserInfo({
                                            success: function (res) {
                                                var userInfo = res.userInfo;
                                                that.userRegiest(userInfo, function(res){
                                                    that.globalData.userInfo = res.userInfo;
                                                    typeof cb == "function" && cb(that.globalData.userInfo);

                                                });
                                            }
                                        });
                                    }
                                });
                            }else{
                                wx.getUserInfo({
                                    success: function (res) {
                                        that.globalData.userInfo = res.userInfo;
                                        typeof cb == "function" && cb(that.globalData.userInfo);
                                    }
                                });
                            }
                        },
                        error(err){
                            console.log(err);
                        }
                    });
                }
            })
        }
    },
    userRegiest(userInfo, successCb, errorCb, completeCb){
        wx.request({
            url: api.userRegiest,
            method: 'POST',
            header: {"Content-Type": "application/x-www-form-urlencoded"},
            data: userInfo,
            success: successCb,
            error: errorCb,
            complete: completeCb
        });
    },
    getToken: function({userNum, authPwd}, successCb, errorCb, completeCb){
        var that = this;
        const uid = that.globalData.uid;
        const token =  that.globalData.token;
        const tokenTime = that.globalData.tokenTime;
        if(token){
            typeof successCb == "function" && successCb({uid, token, tokenTime});
        }else{
            //调用认证接口
            wx.request({
                url: api.getToken,
                method: 'GET',
                data: {userNum, authPwd},
                success: successCb,
                error: errorCb,
                complete: completeCb
            });
        }
    },
    globalData:{
        userInfo:null,
        token: null,
        uid: null,
        tokenTime: null,
    }
})