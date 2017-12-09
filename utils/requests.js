var api = require('./config.js');
var util = require('./util.js');
var app = getApp();

//网络请求模块
function request(url, data, successCb, errorCb, completeCb) {
    app.getUserInfo(function(res){
        const avtUrl = res.avatarUrl.split('/');
        const userNum = avtUrl[avtUrl.length-2];
        const authPwd = util.SHA256(userNum);
        app.getToken({userNum, authPwd}, function(res) {
            const uid = userNum;
            const tokenTime = res.tokenTime ? res.tokenTime : res.data.content.time;
            const token = res.token ? res.token : res.data.content.token;
            if(typeof res.token == "undefined"){
                app.globalData.token = token;
                app.globalData.uid = userNum;
                app.globalData.tokenTime = tokenTime;
            }
            token && wx.request({
                url: url,
                method: 'GET',
                data: data,
                header: {uid, token},
                success: successCb,
                error: errorCb,
                complete: completeCb
            });
        });
    });
}

function getScenery(id, data, successCb, errorCb, completeCb) {
    request(api.getScenery, data, successCb, errorCb, completeCb);
}
function getResourcesCategory(id, data, successCb, errorCb, completeCb) {
    request(api.getResourcesCategory, data, successCb, errorCb, completeCb);
}
function getResourcesDetail(id, data, successCb, errorCb, completeCb) {
    request(api.getResourcesDetail, data, successCb, errorCb, completeCb);
}
function getArticleList(id, data, successCb, errorCb, completeCb) {
    request(api.getArticleList, data, successCb, errorCb, completeCb);
}
function getArticleById(id, successCb, errorCb, completeCb) {
    request(api.getArticleById, {id}, successCb, errorCb, completeCb);
}
function getUsers(id, data, successCb, errorCb, completeCb) {
    request(api.getUsers, data, successCb, errorCb, completeCb);
}
function downloadFile({url, header, success, fail, complete}, onProgressUpdate){
    const downloadTask = wx.downloadFile({
        url: api.baseUrl + url,
        header,
        success,
        fail,
        complete
    });
    downloadTask.onProgressUpdate(onProgressUpdate);
}
module.exports = {
    getUsers,
    getScenery,
    getResourcesCategory,
    getResourcesDetail,
    getArticleList,
    getArticleById,
    downloadFile
};