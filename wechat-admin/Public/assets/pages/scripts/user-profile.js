var userProfile=function(){var e=function(){$("#form-pwd").validate({rules:{old_password:{required:!0},password:{required:!0,minlength:6,maxlength:30},confirm_pwd:{required:!0,minlength:6,equalTo:"#password"}},messages:{old_password:{required:"<span style='color:#ff371a;font-size:8px;'>密码不可为空！</span>"},password:{required:"<span style='color:#ff4860;font-size:8px;'>密码不可为空！</span>",minlength:"<span style='color:#ff674f;font-size:8px;'>最少为6个长度</span>",maxlength:"<span style='color:#ff4536;font-size:8px;'>最多为30个长度</span>"},confirm_pwd:{required:"<span style='color:#ff564d;font-size:8px;'>密码不可为空！</span>",equalTo:"<span style='color:#ff564d;font-size:8px;'>两次输入密码不同！</span>"}},submitHandler:function(e){var n=(document.getElementsByName("old_password")[0].value,document.getElementsByName("password")[0].value),s=document.getElementsByName("confirm_pwd")[0].value,a=crypto_sha1($.trim($('[name="old_password"]').val())+$("#login-addon").val());console.log(a),$.ajax({url:"ajax?q=pwdMe",type:"POST",data:{p:crypto_aes(a,a.substr(5,32)),password:n,confirm_pwd:s},success:function(e){$.actionAlert(e)}})}}),$("#form-base").validate({rules:{phone:{number:!0,minlength:7,maxlength:11},qq:{number:!0,minlength:5,maxlength:10},email:{email:!0}},messages:{phone:{number:"<span style='color:#ff371a;font-size:8px;'>必须是数字！</span>",minlength:"<span style='color:#ff674f;font-size:8px;'>最少为7个长度</span>",maxlength:"<span style='color:#ff4536;font-size:8px;'>最多为11个长度</span>"},qq:{number:"<span style='color:#ff371a;font-size:8px;'>必须是数字！</span>",minlength:"<span style='color:#ff674f;font-size:8px;'>最少为5个长度</span>",maxlength:"<span style='color:#ff4536;font-size:8px;'>最多为10个长度</span>"},email:{email:"<span style='color:#ff564d;font-size:8px;'>要符合邮箱的格式！</span>"}},submitHandler:function(e){var n=document.getElementsByName("phone")[0].value,s=document.getElementsByName("qq")[0].value,a=document.getElementsByName("email")[0].value;$.ajax({url:"ajax?q=updateMe",data:{phone:n,qq:s,email:a},success:function(e){$.actionAlert(e)}})}})};return{init:function(){e()}}}();