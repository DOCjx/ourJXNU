/**
 * 
 */

var Login = function () {
	 
	var actionAlert = function(r,container){
		Metronic.alert({
			type: r.status ? 'success' : 'danger',
			icon:  r.status ? 'check' : 'warning',
            message: r.info,
            container: container+' .form-alert',
            place: 'prepend',
            closeInSeconds: 4
        });
	};

	var handleLogin = function() {
			$('.forget-form').validate({
				errorElement: 'span',
	            errorClass: 'help-block', 
	            focusInvalid: false,
	            rules: {
	                account: {
	                    required: true,
	                    // digits:true
	                },
	                email: {
	                    required: true,
	                    email: true,
	                }
	            },
	            messages: {
	                account: {
	                    required: "企业用户名不可为空！"
	                },
	                email: {
	                    required: "邮箱不可为空！",
	                    email: "邮箱格式错误",
	                }
	            },
	            submitHandler: function () {
	            	var account = $.trim($('.forget-form [name="account"]').val());
        			var email = $.trim($('.forget-form [name="email"]').val());
        			$.ajax({
        				url: $.U('Home/User/forgetCheck'),
        				data: {
        					u: account, 
        					e: email
        				},
        				type: 'POST',
        				timeout: 5000,
        				success: function(r){
        					// console.log(r);
        					switch (r.status) {
        						case 1:
        							$('.forget-form [name="account"]').after('<span id="email-error" class="help-block">'+r.info+'</span>');
        							break;
        						case 2:
        							$('.forget-form [name="email"]').after('<span id="email-error" class="help-block">'+r.info+'</span>');
        							break;
        					}
        					if (r.status == 3) {
        						$.ajax({
        							url: $.U('Home/User/sendGPemail'),
        							data: {
        								u: account,
        								e: email
        							},
        							type: 'POST',
        							timeout: 1000,
        							success: function(data){
        								// console.log(data);
        								$('button.abc').click();
        							}   						
        						});
    	            		}
    	            	},
    	            	error: function(){
    	            		actionAlert({status: false, info: '登录失败，请重试！'}, '.login-form');
    	            	}
        			});
        			
        			
	            }
			});
			$('.login-form').validate({
	            errorElement: 'span',
	            errorClass: 'help-block', 
	            focusInvalid: false,
	            rules: {
	                user_no: {
	                    required: true,
	                    // digits:true
	                },
	                password: {
	                    required: true
	                },
	                remember: {
	                    required: false
	                }
	            },
	            messages: {
	                user_no: {
	                    required: "用户名不可为空！"
	                },
	                password: {
	                    required: "密码不可为空！"
	                }
	            },
	            submitHandler: function () {
	            	var account = $.trim($('.login-form [name="user_no"]').val());
        			var pwd = $.trim($('.login-form [name="password"]').val());
        			$.ajax({
        				url: $.U('System/HyStart/ajax?q=login'),
        				data: {
        					u: account, 
        					p: pwd
        				},
        				type: 'POST',
        				timeout: 5000,
        				success: function(r){
                            console.log(123);
        					console.log(r);
    	        			if(!r.status){
    	        				$('[name="password"]').val('').focus();
    	        				alert(r.info);
    	        				return false;
    	        			}else{
    	        				setTimeout(function(){
    	        					location.href = $.U('System/Index/index');
    	        				}, 100);
    	        			}
    	            	},
    	            	error: function(){
    	            		actionAlert({status: false, info: '登录失败，请重试！'}, '.login-form');
    	            	}
        			});
	            }
	        });
	}


	 return{
	 	init: function () {
	 		handleLogin();
	 	}
	 } 
}();