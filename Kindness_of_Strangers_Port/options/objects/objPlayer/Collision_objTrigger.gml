/// @description Insert description here
// You can write your code in this editor



with(other){
		if(num==1 && global.player.c1=false){
		global.c01=true
		global.player.c1=true
		global.coll01=true;
		//show_message("coll detected")
		if(global.kindness=false  && global.player.make_glitch=true){
			global.player.make_glitch=false
			var T5=instance_create_depth(0,0,0,objGlitchController);
			T5.construct(global.trigger01.x,global.trigger01.y);}
	}

	if(num==2 && global.player.c2=false){
		global.player.c2=true
		global.c02=true
		global.coll02=true;
		//show_message("coll detected")
	}

	if(num==3 && global.player.c3=false){
		global.player.c3=true
		global.coll03=true;
		stunned=true
		//show_message("coll detected")
	}

	if(num==4 && global.player.c4=false){
		c4=true
		global.coll04=true;

		//show_message("coll detected")
	}

}