var Rec=function(){var t=function(){$(".btn").on("click",function(){var t=$(this).val(),n=$(".recruitment-time").text(),e=$(".recruitment-place").text();t?alert("已报名！请您于"+n+"准时到"+e+"参加招聘会。"):(alert("请先登录！"),window.open("http://jy.jxnu.homyit.net/index.php/Home/User/login.html"))})};return{init:t()}}();