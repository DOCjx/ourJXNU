var Recruitment = function(){
    var Principal = function(){
        $("#hy-all-container table").on("click", '.dt-principal', function(){
            var the = $hyall,
                idx = the.getRowIdx( $(this) ),
                dt = the.getDataTable(),
                id = dt.getHyPk(idx),
                $modal = the.getFormModal();
            var doLoad = function(data, tpl){
                $.loading();
                tpl=$.extend({
                    _base:'<div class="modal-dialog modal-lg detail-modal-{:modal}"><div class="modal-content"><form class="{:formStyle}"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>{:title}</div><div class="modal-body">{:body}</div><div class="modal-footer">{:buttons}</div></form></div></div>',
                    modal:'',
                    formStyle:'form-horizontal',
                    title:{
                        _base:'<h4 class="caption"><i class="fa font-green-sharp {:icon} fa-fw"></i><span class="caption-subject font-green-sharp bold"><span class="detail-title">{:title}</span></span></h4>',
                        icon:'fa-search',
                        title: '浏览'+the.config.title+'信息'
                    },
                    body:{
                        _base:'<div class="form-inner"><div class="alert alert-info alert-tips display-none"><strong>操作提示：</strong><span></span></div><div class="hy-detail-container">{:main}</div></div>',
                        main:''
                    },
                    buttons:'<button type="button" data-dismiss="modal" class="btn blue" id="close">关闭</button>'
                },tpl);
                $.post($.U('ajax?q=detail'), $.extend({}, data), function(html){
                    $.unloading();
                    tpl.modal = (tpl.modal || data.type || 'default');
                    tpl.body.main=html;
                    $modal.html(HyFrame.tplRplRecursive(tpl));
                    var once=0;
                    $modal.on('shown.bs.modal',function(){
                        if(once++) return;
                        if(data.type) the.trigger('shown.hyall.detail.'+data.type);
                    });
                    $modal.modal('show');
                });
            };
            var type=$(this).data('detail');
            if(!type) return;
            var title='<h4 class="caption"><i class="fa font-green-sharp '+' fa-fw"></i><span class="caption-subject font-green-sharp bold">'+'{title}信息</span></h4>'.replace('{title}',the.config.title);
            doLoad({type: type, pk: id}, {title: title});
            return;
        });
    }
    var onlineRecruitment = function() {
        var form = $hyall.getFormModal();
        form.on('change', '#type', function(){
            var id = $(this).val();
            var timeExpected = $('#time_expected');
            var recruitmentTime = $('#recruitment_time');
            var recruitmentPlace = $('#recruitment_place');
            if(id == 2){
                timeExpected.val('无需填写');
                timeExpected.parents('.form-group').hide();
                recruitmentTime.val('无需填写');
                recruitmentTime.parents('.form-group').hide();
                recruitmentPlace.val('在线');
                recruitmentPlace.parents('.form-group').hide();
            } else {
                timeExpected.val('');
                timeExpected.parents('.form-group').show();
                recruitmentTime.parents('.form-group').show();
                recruitmentPlace.val(null);
                recruitmentPlace.parents('.form-group').show();
            }
            $.post($.U('ajax?q=getEPlace'),{id:id},function(r){
                //console.log(r);
                if(r.status){
                    var html = '';
                    $.each(r.data,function(k,v){
                        //console.log(k,v);
                        html+='<option value="'+k+'">'+v+'</option>';
                    });
                }
                $('#place_expected_id',$hyall).html(html).selectpicker('refresh');
            })
        });
    }
    var countSize = function() {
        var form = $hyall.getFormModal();
        var isfile = $("input[name='filedata']");
        form.on('change', isfile, function(){
            var size = $('.js-file-tpl').attr('title');
            var del = $('.b-thumb__del');
            $arr = size.split(', ');
            $ext=$arr[1].substring($arr[1].length-2,$arr[1].length);
            $imgsize= parseFloat($arr[1]);
            if($ext == 'KB')
            {

            }else if($ext == 'MB'){
              $imgkb=$imgsize*1024;
              if($imgkb > 1024 ){
                alert('图片大于1MB,请重新选择或对图片进行压缩！')
                del.trigger('click');
              }
            }
        });
    }
    var isPass = function() {
        $hyall.on("shown.hyall.form",function(){
            $('#is_pass').parents('.form-group').hide();
        });
    }
    var remind = function() {
        $hyall.on("shown.hyall.form",function(){
            $(":submit").on('click', function () {
                setTimeout(function(){
                    var href = window.location.href;
                    var href1 = new RegExp("/index.php/Recruitment/RecruitmentFs/all.html");
                    var href2 = new RegExp("/index.php/Recruitment/Recruitment/all.html");
                    var text = $('.alert-success').text();
                    var text1 = new RegExp("数据新增成功！");
                    var text2 = new RegExp("信息编辑成功！");
                    if(text1.exec(text)&&href1.exec(href) || text1.exec(text)&&href2.exec(href)){
                        alert("请点击[添加岗位]按钮添加岗位！！否则审核不予通过");
                    }else if(text2.exec(text)&&href1.exec(href) || text2.exec(text)&&href2.exec(href)){
                        alert("如果未添加岗位信息请点击[添加岗位]按钮进行添加！！否则审核不予通过");
                    }
                },2000)
            });
        });
    }
    return {
        init: function(){
            Principal();
            onlineRecruitment();
            countSize();
            isPass();
            remind();
        }
    };
}();

