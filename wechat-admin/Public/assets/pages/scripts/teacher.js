var Teacher = function() {
    var n = function() {
        $hyall.actionsHandlers.actionAddRoles = function(n) {
            $.post($.U("ajax?q=addRoles"), {
                pk: n.join(",")
            }, function(n) {
                console.log(n), $hyall.dtActionAlert(n)
            })
        }, $hyall.actionsHandlers.actionDelRoles = function(n) {
            $.post($.U("ajax?q=delRoles"), {
                pk: n.join(",")
            }, function(n) {
                console.log(n), $hyall.dtActionAlert(n)
            })
        }
    };
    var student = function() {
            $hyall.on("shown.hyall.form", function(i) {
                $("#id").parents('.form-group').css('display','none');
                var id = $("#id").val();
                var sid = $("#class_committee").val();
                var iid = $("#instructor_id").val();
                $.post($.U("ajax?q=getStudent"), {
                    id: id,sid: sid
                }, function(r) {
                    var html ='';
                   // console.log(r.data);
                    if(sid){
                        $.each(r.data,function(k,v){
                            //console.log(k,v);
                            if(k==sid){
                                html+='<option value="'+k+'" selected>'+v+'</option>';
                            }else{
                                html+='<option value="'+k+'">'+v+'</option>';
                            }
                        });
                    }else{
                        $.each(r.data,function(k,v){
                            //console.log(k,v);
                            html+='<option value="'+k+'">'+v+'</option>';
                        });
                    }
                    $('#class_committee',$hyall).html(html).selectpicker('refresh');

                });
                $.post($.U("ajax?q=getInstructor"),{
                    id: id,iid: iid
                },function(r) {
                    //console.log(r.data);
                    var html ='';
                    if(iid){
                        $.each(r.data,function(k,v){
                            //console.log(k,v);
                            if(k==iid){
                                html+='<option value="'+k+'" selected>'+v+'</option>';
                            }else{
                                html+='<option value="'+k+'">'+v+'</option>';
                            }
                        });
                    }else{
                        $.each(r.data,function(k,v){
                            //console.log(k,v);
                            html+='<option value="'+k+'">'+v+'</option>';
                        });
                    }
                    $('#instructor_id',$hyall).html(html).selectpicker('refresh');
                })
            });

    };
    return {
        init: function() {
            n();
            student()
        }
    }
}();