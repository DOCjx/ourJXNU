var guidance=function(){var n=function(){$(".speech-on").on("mouseover",function(){$(".guidance").hide(),$(".train").hide(),$(".speech").show(),$(".guidance-on").removeClass("on"),$(".train-on").removeClass("on"),$(".speech-on").addClass("on")}),$(".guidance-on").on("mouseover",function(){$(".speech").hide(),$(".train").hide(),$(".guidance").show(),$(".speech-on").removeClass("on"),$(".train-on").removeClass("on"),$(".guidance-on").addClass("on")}),$(".train-on").on("mouseover",function(){$(".speech").hide(),$(".guidance").hide(),$(".train").show(),$(".guidance-on").removeClass("on"),$(".speech-on").removeClass("on"),$(".train-on").addClass("on")})};return{init:n()}}();