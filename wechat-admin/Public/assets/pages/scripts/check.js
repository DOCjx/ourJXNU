var Check = function(){
    var checkNum=function(){
        var modal = $hyall.getFormModal();
        $hyall.on('shown.hyall.form.edit', function(e){
            eNum = $('#num').val();
        });
        modal.on('keyup','#num',function(){
            var num=$('#num').val();
            var all_selected=$('.form-horizontal .dropdown-menu .selected').length;
            var is_selected=all_selected-1;
            //console.log(is_selected);
            //console.log(eNum);
            var trainNameId=$(".form-horizontal").find('#train_info_id').val();
            //console.log(trainNameId);
            var self = $(this);
            $.post($.U('ajax?q=getNum'),{num:num,trainNameId:trainNameId,is_selected:is_selected,eNum:eNum},function(data){
                //console.log(trainNameId);
                if(data){
                    self.parent().parent().find('.check').html('');
                    self.parent().parent().append('<p class="check">'+data.i+'</p>');
                    $('.modal-footer .submit').removeClass('disabled');
                    $('.modal-footer .submit').addClass(data.data);
                }
            })
        })
    }
    var checkTime = function(){
        var modal = $hyall.getFormModal();
        modal.on('click','.submit',function(e){
            e.preventDefault();
            var trainNameId=$(".form-horizontal").find('#train_info_id').val();
            var date1=$('#end_time_to').val();//报名结束时间
            var date2=$('#holding_end_time').val();//培训开始时间
            //console.log(date1);
            //console.log(date2);
            var str1 = date1.replace(/-/g,'/');
            if(date2){
                var str2 = date2.replace(/-/g,'/');
            }
            var time1 = Date.parse(new Date(str1));
            time1 = time1 / 1000;
            var time2 = Date.parse(new Date(str2));
            time2 = time2 / 1000;
            $.post($.U('ajax?q=check_Time'),{endTime:time1,holdingStartTime:time2,trainNameId:trainNameId},function(data){
                //console.log(data);
                $('#end_time_to').parent().parent().find('.check').html('');
                $('#end_time_to').parent().parent().append('<p class="check">'+data.info+'</p>');
                if(data.data==''){
                    $('.form-horizontal').submit();
                }
            })
        })

    }

    return {
        init: function () {
            checkTime();
            checkNum();
        }
    };
}();