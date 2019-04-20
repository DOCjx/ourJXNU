/**
 * 
 */

var Index = function (){

	// var IsPicture = function($type){
	// 		var all = ["jpeg","gif","jpg","png","bmp","pic"];
			
	// 		for (var i = 0; i<=all.length; i++) {
	// 			if ($type == all[i]) {
	// 				return true;
	// 			}
	// 		}
	// 		return false;
	// }

     var isFirst = true;
	 jQuery.validator.addMethod("isPhone", function(value, element) {    
      var tel = /^(\d{3,5}-?)*\d{5,9}$/g;
      return this.optional(element) || (tel.test(value));  
    }, "请正确填写您的电话号码。");
	
	var Register = function (){
		$('.register-form').validate({
//			errorElement: 'span',
//			errorClass: 'help-block',
			focusInvalid: false,
			rules: {
				user_no: "required",
				password: {
					required: true,
					minlength: 6,
				},
				company_name: "required",
				representative:"required",
				address:"required",
				postcode:"required",
				phone:{
					required: true,
					isPhone: true,
					minlength: 5,
					maxlength: 20,
					// digits:true
				},
				email:{
					required: true,
					email: true,
				},
				company_attributes:"required",
				remark: "required",
				certificate_id: "required",
                verifyImg: "required"

			},
			messages: {
				user_no: "用户名不得为空",
				password: {
					required: "密码不得为空",
					minlength: "密码长度至少为6位",
				},
				company_name: "公司名不可为空",
				representative:"法人代表不得为空",
				address: "地址不得为空",
				postcode:"邮政编码不得为空",
				phone:{
					isPhone: "请填写正确的电话号码",
					minlength: "号码过短",
					maxlength: "号码过长",
					required: "电话号码不得为空",
					// digits:"请输入整数"
				},
				email:{
					required: "邮箱不得为空",
					email: "邮箱格式不正确",
				},
				company_attributes: "请输入公司属性",
				remark: "请输入公司介绍",
				certificate_id: "组织机构代码不得为空",
                verifyImg: {
                    required:"请输入验证码"
                }
			},
			errorPlacement: function(error, element) {
				var isFocus=element.is(":focus");
				console.log(error[0].innerText);
				if (element.attr('type') == 'file'){
					var id = element.attr('id');
					element.siblings("span").remove();
//					console.log(error[0].innerText);
					element.after("<span id='"+id+"-error' class='help-block'>"+error[0].innerText+"</span>");
				}else if(element.attr('type') == 'text'||element.attr('type') == 'password'){
					if(!isFocus){
						element.attr({
							'placeholder':error[0].innerText
						});
						element.val("");
					}else{  
						element.attr('placeholder',error[0].innerText);  
					}
				}
				
				
			},
			submitHandler: function(form){
				var user_no = $('[name="user_no"]').val();
				var certificate_id = $('[name="certificate_id"]').val();
                if(!isFirst) return;
                isFirst = false;
                $.ajax({
                    url: $.U('is_user'),
                    data: {
                        c: certificate_id,
                    },
                    type: 'POST',
                    timeout: 5000,
                    async: false,
                    beforeSend: function(){
                        $("#layout").show();
                    },
                    success: function(r){
                    	console.log(r);
                        if (r.status) {
                        	$('.register-form').find(":submit").attr("disabled", true).attr("value", 
                        	"提交中...");
                            form.submit();
                        }else{
                            isFirst= true;
                            var height = -($(document).height()-$("input[name='certificate_id']").offset().top)/2;
                            $("input[name='certificate_id']").attr({
                                'placeholder':'该公司已被注册',
                            }).val("");
                            $("html,body").animate({scrollTop: height},1000);

                        }
                    },
                    error: function(){

                    },
                    complete: function(){
                        $("#layout").hide();
                    }
                });

			}
			
		});
		$('.register-form-phone').validate({
			errorElement: 'span',
			errorClass: 'help-block',
			focusInvalid: false,
			rules: {
				user_no: "required",
				password:{
					required: true,
					minlength: 6,
				},
				company_name: "required",
				representative:"required",
				address:"required",
				postcode:"required",
				phone:{
					required: true,
					number: true,
					minlength: 5,
					maxlength: 11,
					digits:true
				},
				email:{
					required: true,
					email: true,
				},
				company_attributes:"required",
				remark: "required",
				license_id: "required",
				certificate_id: "required",

			},
			messages: {
				user_no: "用户名不得为空",
				password:{
					required: "密码不得为空",
					minlength: "密码长度至少为6位",
				},
				company_name: "单位名不可为空",
				//representative:"法人代表不得为空",
				address: "地址不得为空",
				postcode:"邮政编码不得为空",
				phone:{
					required: "电话号码不得为空",
					number: "请输入数字",
					minlength: "请填入正确的电话号码",
					maxlength: "请填入正确的电话号码",
					digits:"请输入整数"
				},
				email:{
					required: "邮箱不得为空",
					email: "邮箱格式不正确",
				},
				company_attributes: "请输入公司属性",
				remark: "请输入公司介绍",
				license_id: {
					required: "请上传营业执照许可证",
				},
				certificate_id: {
					required: "请上组织机构代码",
				}
			},
			submitHandler: function(form){
				Metronic.blockUI({
    				message: '请稍后...',
    				target: $('.register-form'),
                    cenrerY: true,
                    boxed: true,
                    overlayColor: 'none'
                });
				var user_no = $('.phone input[name="user_no"]').val();
				console.log(user_no);
                if(isFirst){
                    isFirst = false;
                    $.ajax({
                        url: $.U('is_user'),
                        data: {
                            u: user_no
                        },
                        type: 'POST',
                        timeout: 5000,
                        success: function(r){
                            if (r.status) {
                                form.submit();
                            }else{
                                isFirst = true;
                                var height = -($(document).height()-$("input[name='user_no']").offset().top)/2;
                                $("input[name='user_no']").attr({
                                    'placeholder':'用户名已存在',
                                }).val("");
                                $("html,body").animate({scrollTop: height},1000);

                            }
                        },
                        error: function(){

                        }
                    });
                }


			}
		});
	}
	
	
	
	
	
	return {
		init:function(){
			Register();
		}
	}
}();
