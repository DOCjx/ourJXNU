var RecruitmentP = function(){
        o = function() {
            var r = $hyall.on("shown.hyall.form",function(){
                $('#id').parents('.form-group').hide();
            });
        };
        var check = function(){
            var form = $hyall.getFormModal();
            form.on('change', '#is_pass', function(){
                var id = $(this).val();
                var recruitmentTime = $('#recruitment_time');
                var recruitmentPlace = $('#recruitment_place');
                var isPublish = $('#is_publish');
                if(id == 2){
                    recruitmentTime.parents('.form-group').hide();
                    recruitmentPlace.parents('.form-group').hide();
                    isPublish.val(0);
                    isPublish.parents('.form-group').css('display','none');
                } else {
                    isPublish.parents('.form-group').css('display','block');
                    recruitmentTime.parents('.form-group').show();
                    recruitmentPlace.parents('.form-group').show();
                }
            });
        }
        return {
            init: function(){
                o();
                check();
            }
        };

    }();