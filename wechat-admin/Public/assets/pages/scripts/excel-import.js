/*
 * 表格导入处理
 *@ homyit-PSX
 **/
var ExcelImport = function(){
    // 上传文件
    var uploadHandler = function(){
        if(!$('.hy-upload').size()) return false;
        $('.hy-upload').each(function(){
            var $the = $(this);
            isRst = [];
            $the.fileapi({
                url: $.U('System/HyFile/upload'),
                accept: $the.find('[name="filedata"]').attr('accept'),
                multiple: false,
                maxFiles: 1,
                elements: {
                    ctrl: { upload: '.js-upload' },
                    empty: { show: '.b-upload__hint' },
                    emptyQueue: { hide: '.js-upload' },
                    list: '.js-files',
                    file: {
                        tpl: '.js-file-tpl',
                        preview: {
                            el: '.b-thumb__preview',
                            width: 80,
                            height: 80
                        },
                        upload: { show: '.progress', hide: '.b-thumb__rotate' },
                        complete: { hide: '.progress' },
                        progress: '.progress .bar'
                    }
                },
                onSelect:function(evt,data){
                    $('.js-file-tpl',$the).eq(0).remove();
                },
                onComplete:function(e,rst){
                    var field = rst.widget.$el.data('field');
                    var rst = rst.result;
                    $.actionAlert(rst);
                    if(rst.status) {
                        $('#excel-form .excel-import').on('click',function(e){
                            var isone = 0;
                            for(var i=0;i<isRst.length;i++){
                                if(isRst[i] == rst.data.key){
                                    isone = 1;
                                    break;
                                }
                            }
                            if(isone == 0) {
                                e.preventDefault();
                                e.stopPropagation();
                                $.loading();
                                $.post($.U('Record/Excel/ajax?q=excel_import'),rst.data,function(r){
                                    $.unloading();
                                    $.actionAlert(r);
                                    if(r.status) {
                                        var tips = '导入档案信息总计<span style="color:blue;">'+r.rows[0]+'</span>条,导入成功<span style="color:blue;">'+r.rows[1]+'</span>条。'+
                                            '导入失败学号：<span style="color:blue;">'+(r.data || '无')+'</span>';
                                        $('.count-rows').html(tips);
                                        isRst.push(rst.data.key); // 获取每一次的key值
                                    }
                                });
                            }
                        });
                    }
                    if(!rst.status) $.actionAlert(rst);
                    $('[name="'+field+'"]').val(rst.data.key);
                    $('.js-browse span:first',$the).html('重新上传');
                    $('.js-browse',$the).removeClass('blue').addClass('btn-success');
                    //setTimeout("window.location.href = window._ROOT_+'/index.php/Record/Recordmanage/all'",3000);
                }
            });
            $(this).show();
        });

    }
    // 文件上传类型检查
    var checkFiletype = function() {
        $("input[name='filedata']").on('change',function(e){
            var filename = $("input[name='filedata']").val();
            var extStart = filename.lastIndexOf(".");
            var ext = filename.substring(extStart, filename.length).toUpperCase();
            if(ext!=".XLS" && ext!=".XLSX")  {
                e.stopPropagation();
                alert("上传文件格式只允许excel形式！");
            }
        });
    }

    return {
        init: function () {
            uploadHandler();
            checkFiletype();
        }
    };

}();