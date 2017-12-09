/**api链接 */
const baseUrl = 'https://localwechat.wvwvw.cn/';
const apiUrl = baseUrl + "index.php/";

module.exports = {
    getArticleList: apiUrl + "Article/getArticleList",
    getArticleById: apiUrl + "Article/getArticleById",
    getResourcesCategory: apiUrl + "Resources/getResourcesCategory",
    getResourcesDetail: apiUrl + "Resources/getResourcesDetail",
    getScenery: apiUrl + "Article/getScenery",
    getUsers: apiUrl + "User/getUsers",
    getToken: apiUrl + "User/getToken",
    userRegiest: apiUrl + "User/userRegiest",
    baseUrl
}