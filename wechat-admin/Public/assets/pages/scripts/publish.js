var Publish = function(){

    var publish = function(){
        //console.log($hyall);
        $hyall.actionsHandlers.actionPublish = function(rows){
            $.post($.U('ajax?q=publish'), {pk:rows.join(',')},function(r){
                //console.log(r);
                $hyall.dtActionAlert(r);
            });
        }
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
            console.log($imgsize);
            if($ext == 'KB')
            {

            }else if($ext == 'MB'){
                $imgkb=$imgsize*1024;
                if($imgkb > 1024 ){
                    alert('文件大于1MB,请重新选择或对图片进行压缩！')
                    del.trigger('click');
                }
            }else if($ext == 'GB'){
                alert('文件大于1MB,请重新选择或对图片进行压缩！')
                del.trigger('click');
            }
        });
    }
	 return {
	        init: function () {
                publish();
                countSize();
	        }
     };
}();