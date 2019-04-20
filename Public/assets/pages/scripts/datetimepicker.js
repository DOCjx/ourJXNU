/**
 * Created by chans on 2016/8/3.
 */
var dateTime = function () {
    var timeBan = function () {
         $hyall.getFormModal().on('change','#speech_time', function () {
            var change =  $('#speech_time')[0];
            var selectTime = change.value.substr(0,11);
            var timeDate = Date.parse(selectTime)/1000;
            var today =Date.parse(new Date().toLocaleDateString())/1000;
             if(timeDate < today){
                 alert("请选择当今或以后时间，谢谢合作");
                 change.value = "";
             }
        });
    };
    return {
        init: function(){
            timeBan();
        }
    };
}();
