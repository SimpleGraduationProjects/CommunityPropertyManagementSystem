$(function(){
	//$(".registerform").Validform();  //就这一行代码！;

	$(".registerform").Validform({
		tiptype:function(msg,o,cssctl){								
			if(!o.obj.is("form")){//验证表单元素时o.obj为该表单元素，全部验证通过提交表单时o.obj为该表单对象;
				var objtip=o.obj.parents("td").next().find(".Validform_checktip");
				cssctl(objtip,o.type);
				objtip.text(msg);
				
				var infoObj=o.obj.parents("td").next().find(".info");
				if(o.type==2){
					infoObj.fadeOut(200);
				}else{
					if(infoObj.is(":visible")){return;}
					var left=o.obj.offset().left,
						top=o.obj.offset().top;
	
					infoObj.css({
						left:left+170,
						top:top-45
					}).show().animate({
						top:top-35	
					},200);
				}
				
			}	
		},
		usePlugin:{
			passwordstrength:{
				minLen:6,
				maxLen:18,
				trigger:function(obj,error){
					if(error){
						obj.parents("td").next().find(".passwordStrength").hide();
					}else{
						obj.parents("td").next().find(".info").hide();
						obj.parents("td").next().find(".passwordStrength").show();	
					}
				}
			}
		}
	});
})