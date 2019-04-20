/**
 * Created by Zsya on 2016/3/29.
 */
var OrganizeTrain = function () {
    var Pass = function(){
        $hyall.actionsHandlers.actionPass = function(rows, $modal, columns){
            $.post($.U('ajax?q=pass'), {pk:rows.join(',')},function(r){
                //console.log(r);
                console.log(rows.join(','));
                $hyall.dtActionAlert(r);
            });
            //console.log( rows.join(',') );
            //console.log($modal);
            //console.log(columns);
            //var build = $hyall.formBuilder({
            //    is_pass: columns['is_pass'],
            //},false,{_submit:'Pass',pk: rows.join(',')});
        }
    }
    var nPass = function () {
        $hyall.actionsHandlers.actionNPass = function(rows){
            $.post($.U('ajax?q=n_pass'), {pk:rows.join(',')},function(r){
                //console.log(r);
                $hyall.dtActionAlert(r);
            });
        }
    }
    var Report = function (){
        $hyall.actionsHandlers.actionReport = function(rows){
            $.post($.U('ajax?q=report'), {pk:rows.join(',')},function(r){
                $hyall.dtActionAlert(r);
            });
        }
    }
    var fill= function() {
        $hyall.on("shown.hyall.form", function(i) {
            var n = window.location.href,
                t = n.split("="),
                a = t[1];
            $("#train_id").parents('.form-group').css('display','none');
            $("#train_id").val(a);
        })
    };
    var getTrain = function(){
        $hyall.on('shown.hyall.form',function(){
            var url = window.location.href;
            var info_id = url.split("=");
            //console.log(info_id[1]);
            var id=info_id[1]; //train_info���е�id
           // console.log(id);
            if(id){
                console.log($.U('ajax?q=select_trainTitle'));
                $.post($.U('ajax?q=select_trainTitle'),{id:id},function(r){
                   // console.log(r);
                    if(!r.status){
                        alert('不好意思，您已申请过这次培训，不能再次申请！');
                        $('.submit').addClass('disabled');
                    }else{
                     //   console.log(r.info.content.replace(/<[^>]+>/g,""));
                        $('#content',$hyall).text($('#content',$hyall).val());
                        for(var i in r.info){
                            $('#'+i,$hyall).attr('value', r.info[i]);
                            $('#content',$hyall).text(r.info.content.replace(/<[^>]+>/g,""));
                            //console.log(r.info.content);
                        }
                        $('.submit').removeClass('disabled');
                    }
                });
            }else{
                alert('请先去培训项目中选择活动报名');
            }
        });
    }
    return {
        init: function () {
            Pass();
            nPass();
            Report();
            getTrain();
            fill();
        }
    }
}();