var IndexShow = function(){
    var xPos = 20;
    var yPos = this.document.body.clientHeight;
    var step = 1;
    var delay = 30;
    var height = 0;
    var Hoffset = 0;
    var Woffset = 0;
    var yon = 0;
    var xon = 0;
    var pause = true;
    var interval;
    var $img = this.document.getElementById('float-box');
    // console.log($img);
    if ($img) {
        $img.style.top = yPos;
        function changePos() {
            width = this.document.body.clientWidth;
            height = this.document.body.clientHeight;
            Hoffset = $img.offsetHeight;
            Woffset = $img.offsetWidth;
            $img.style.left = xPos + this.document.body.scrollLeft + 'px';
            $img.style.top = yPos + this.document.body.scrollTop +'px';
            if (yon) {
                yPos = yPos + step;
            }
            else {
                yPos = yPos - step;
            }
            if (yPos < 0) {
                yon = 1;
                yPos = 0;
            }
            if (yPos >= (height - Hoffset)) {
                yon = 0;
                yPos = (height - Hoffset);
            }
            if (xon) {
                xPos = xPos + step;
            }
            else {
                xPos = xPos - step;
            }
            if (xPos < 0) {
                xon = 1;
                xPos = 0;
            }
            if (xPos >= (width - Woffset)) {
                xon = 0;
                xPos = (width - Woffset);
            }
        }
        function start() {
            $img.style.visibility = "visible";
            interval = setInterval(changePos, delay);
        }
        start();
    }
    $('#float-box').on('mouseover', function(){
        clearInterval(interval);
    });
    $('#float-box').on('mouseout', function(){
        interval = setInterval(changePos, delay);
    });
    $('#float-box .close').on('click', function () {
        clearInterval(interval);
        $img.style.visibility = 'hidden';
    });
    $('#speech-on').on('click',function(){
        $('#speech-on').addClass('on');
        $('#guidance-on').removeClass('on');
        $('#train-on').removeClass('on');
        $('#speech').show();
        $('#guidance').hide();
        $('#train').hide();
    });
    $('#guidance-on').on('click',function(){
        $('#guidance-on').addClass('on');
        $('#speech-on').removeClass('on');
        $('#train-on').removeClass('on');
        $('#guidance').show();
        $('#speech').hide();
        $('#train').hide();
    });
    $('#train-on').on('click',function(){
        $('#train-on').addClass('on');
        $('#speech-on').removeClass('on');
        $('#guidance-on').removeClass('on');
        $('#train').show();
        $('#speech').hide();
        $('#guidance').hide();
    });
    $('form.login-form a').on('click',function(e){
            e.preventDefault();
            $('.login-title .head-title').hide();
            $('.login-title .forget-title').show();
            $(this).parents('form').hide();
            $(this).parents('form').siblings().show();
    });
    $('form.forget-form a').on('click',function(e){
            e.preventDefault();
            $('.login-title .head-title').show();
            $('.login-title .forget-title').hide();
            $(this).parents('form').hide();
            $(this).parents('form').siblings().show();
    });
    //公司ajax检索
    (function (){
        var company = $('#company_name');
        var debounce = null;
        company.on('compositionstart',function(){
            $(this).prop('comStart',true);
            console.log("中文输入开始");
        }).on('compositionend',function(){
            $(this).prop('comStart',false);
            console.log("中文输入结束");
            var cname = $.trim($(this).val());
            if(debounce){
                clearTimeout(debounce);
            }
                debounce = setTimeout(function(){
                    getCompany(cname);
                },800);
        }).on('input propertychange',function(e){
            var cname = $.trim($(this).val());
            if($(this).prop('comStart')){
                return;
            }else{
                if(debounce){
                    clearTimeout(debounce);
                }
                debounce = setTimeout(function(){
                    getCompany(cname);
                },800);
            }
        });
        /*点击填充 */
        $("#ulbox").on('click','li',function () {
            var text = $(this).text();
            company.val(text);
        })
    })();
    function getCompany(cname){
        var popover = $('.lianxiang>.popover');
        var ul = $('.popover-content>ul');
        if(!cname){
            $("#ulbox>li").remove();
            popover.css({'display':'none'});
            return;
        }{
            $.ajax({
                url: $.U('ajax_getCname'),
                type:"POST",
                data:{cname:cname},
                success:function(r){
                    if(r.status){
                        $("#ulbox>li").remove();
                        $.each(r.data,function(index,item){
                            var html = '<li>'+item.company_name+'</li>';
                            ul.append(html);  popover.css({'display':'block'});
                        })
                    }
                }
            })
        }
    }
}();
