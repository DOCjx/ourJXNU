var GuidanceCourse = function(){

    var HanderClassGrade = function(){
        $hyall.on('shown.hyall.form',function(i){
            $('#grade').parents('.form-group').css('display','none');
            var grade=$('#grade').text();
           // alert(grade);
            if(grade)
                $.post($.U('ajax?q=select_classViaGrade'),{grade:grade},function(r){
                    var html='';
                    console.log(r.data);
                    $.each(r.data,function(k,v){
                        console.log(k,v);
                        html+='<option value="'+k+'">'+v['name']+(v['instructor_id']+'人')+'</option>';
                    });
                    $('#class_ids',$hyall).html(html).selectpicker('refresh');
                });
        });
    };

    var SpeakerType = function(){
        $hyall.getFormModal().on('change','.modal-dialog #type_id',function(){
            var type_id =$('.modal-dialog #type_id option:selected').val();
            console.log(type_id);
            if(type_id)
                $.post($.U('ajax?q=select_speakerViaType'),{type_id:type_id},function(r){
                    var html ='';
                    console.log(r.data);
                    $.each(r.data,function(k,v){
                        console.log(k,v);
                        html+='<option value="'+k+'">'+v+'</option>';
                    });
                    $('#speaker_id',$hyall).html(html).selectpicker('refresh');
                });
        });
    }
    var publish = function() {
        $hyall.actionsHandlers.actionPublish = function(rows){
            $.post($.U('ajax?q=publish'), {pk:rows.join(',')},function(r){
                $hyall.dtActionAlert(r);
            });
        }
    }
   var fill= function() {
       $hyall.on("shown.hyall.form", function(i) {
           var n = window.location.href,
               t = n.split("="),
               a = t[1];
           $("#guidance_course_id").parents('.form-group').css('display','none');
           $("#guidance_course_id").val(a);
       })
   }

    return {
        init: function(){
            HanderClassGrade();
            SpeakerType();
            publish();
            fill();
        }
    };
}();
