!function($){$.fn.extend({zmRotation:function(t){var e={height:t.height?t.height:"auto",during:"3000",auto:!0},n={};$.extend(n,e,t),$(this).each(function(){function t(){$(this).index()>i?0:++r,r>=i&&(r=0),a.eq(r).fadeIn(200),a.not(a.eq(r)).fadeOut(200),f.eq(r).addClass("hover"),f.not(f.eq(r)).removeClass("hover"),o.text(a.eq(r).find("img").attr("alt")),o.attr("href",a.eq(r).find("a").attr("href"))}var e=$(this),a=e.find("li"),i=a.length,r=null,h="";e.css({height:n.height}),a.css({height:n.height}).find("img").css({height:n.height}),h=a.find("img").attr("alt"),a.first().show();var o=$(".rotation-text"),s=$(".rotation-focus");o.text(h).attr("href",a.find("a").attr("href"));for(var d=1;d<=i;d++)s.append("<span>"+d+"</span>");var f=s.children("span");f.first().addClass("hover"),f.bind("mouseover",function(){var t=$(this),e=t.index();r=e;var n=a.eq(e);t.addClass("hover"),s.children("span").not(t).removeClass("hover"),n.fadeIn(200),a.not(n).fadeOut(200),o.text(a.eq(e).find("img").attr("alt"))});var v=setInterval(t,n.during);e.hover(function(){v&&clearInterval(v)},function(){n.auto&&(v=setInterval(t,n.during))})})}})}(jQuery);