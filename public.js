//替换空格
String.prototype.trim = function(){  
	return this.replace(/[ ]/g,"");   
}  
$(function(){
	//导航菜单
	var ind = 6;
	var nav= jQuery(".nav");
	var init = jQuery(".nav .m").eq(ind);
	var block = jQuery(".nav .block"); 
	block.css({"left":init.position().left-3}); 
	nav.hover(function(){},function(){ block.animate({"left":init.position().left-3},100); }); 

	jQuery(".nav").slide({ 
		type:"menu", 
		titCell:".m", 
		targetCell:".sub", 
		delayTime:300, 
		triggerTime:0, 
		returnDefault:true,
		defaultIndex:ind,
		startFun:function(i,c,s,tit){ 
			block.animate({"left":tit.eq(i).position().left-3},100);
		}
	});
	
	//banner
	jQuery(".full_banner").slide({
		 titCell:".hd ul", 
		 mainCell:".bd ul", 
		 effect:"fold",  
		 autoPlay:true, 
		 autoPage:true,
		 trigger:"click",
		 interTime:3500
	});	
	
	//notice scroll
	jQuery(".notice_box").slide({mainCell:"#notice_scroll",effect:"topLoop", autoPlay:true,interTime:3500});
});
