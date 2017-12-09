var resetPassword=function(){
    var e=function(){
        $(".reset-form").validate({
                errorElement:"span",
                errorClass:"help-block",
                focusInvalid:!1,
                rules: {
                    user_no: {
                        required:!0
                    },
                    password: {
                        required:!0
                    },
                    confirm_password: {
                        required:!1,
                        equalTo:"#password"
                    }
                },
                messages: {
                    user_no: {
                        required:"用户名不可为空！"
                    },
                    password: {
                        required:"密码不可为空！"
                    },
                    confirm_password:{
                        required:"请确认密码",
                        equalTo:"两次输入的密码不一致，请重新输入"
                    }
                },
                submitHandler:function(){
                    var valArr = window.location.href.split("/");
                    var uidIndex, vcmd5Index, vctstpIndex;
                    valArr.map((item, index)=>{
                        if(item == "uid"){
                            uidIndex = index + 1;
                        }
                        if(item == "vcmd5"){
                            vcmd5Index = index + 1;
                        }
                        if(item == "vctstp"){
                            vctstpIndex = index + 1;
                        }
                    });
                    var r=$.trim($('.reset-form [name="password"]').val());
                    $.ajax({
                        url:$.U("Home/User/ResetPasswrd"),
                        data:{
                            uid: valArr[uidIndex],
                            p: r,
                            vcmd5: valArr[vcmd5Index],
                            vctstp: valArr[vctstpIndex]
                        },
                        type:"POST",
                        timeout:5e3,
                        success:function(e){
                            e&&($("button.abc").click(),
                                $("button.sure").on("click",function(){
                                    setTimeout(function(){
                                        location.href=$.U("Home/Index/index")
                                    },500)}
                                    )
                                )
                        },
                        error:function(){
                                console.log(23)
                        }})
                }
            })
    };
    return{
        init:function(){
            e()
        }
    }
}();