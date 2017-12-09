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
            $the.fileapi({
                url: $.U('System/HyFile/upload'),
                accept: $the.find('[name="filedata"]').attr('accept'),
                multiple: false,
                maxFiles:1,
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
                        $('#excel-form .excel-import').on('click',function(){
                            $.loading();
                            $.post($.U('BasisInfo/Excel/ajax?q=excel_import'),rst.data,function(r){
                                $.unloading();
                                //console.log(r);
                                $.actionAlert(r);
                                if(r.status) {
                                    $("#result-error_equal").show();
                                    $("#result-error_equal").html(r.data['0'].join(',') || '无');
                                    $("#result-error-write").html(r.data['1'].join(',') || '无');
                                    var tips = '导入班级信息总计'+r.rows[0]+'条,导入成功'+r.rows[1]+'条';
                                    $('.count-rows').html(tips);
                                }
                            });
                        });
                    }
                    if(!rst.status) $.actionAlert(rst);
                    $('[name="'+field+'"]').val(rst.data.key);
                    $('.js-browse span:first',$the).html('重新上传');
                    $('.js-browse',$the).removeClass('blue').addClass('btn-success');
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