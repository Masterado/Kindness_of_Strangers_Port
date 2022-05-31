/// @description Insert description here
// You can write your code in this editor
if(global.coll03   and !playerTrigger03){

playerTrigger03=true
global.player.stunned=true
global.player.hspeed=0;
//global.player.vspeed=2;
//audio_play_sound(soundPlane,5,true)
//sound plane.loop
}



if(playerTrigger03){
global.airplane2.x-=5
global.airplane2.y-=0.7
//show_message("coming:   "  + string(x) + "  " +  string(y))
//sound
scale1 = room_width - -1000
scale2 = (x- -1000)/scale1;
scale3=(0   + scale2)/4
scale4=-1 - scale2
			
				
if(x<=-1000 && stopsound){
	stopsound=false
	audio_stop_sound(global.soundPlane)
}				
//audio_falloff_set_model(audio_falloff_linear_distance);
if(stopsound){
//audio_play_sound_at(global.soundPlane, -median(-1, scale4, 1), 0, 0, 1, 300, 0, true, 4);
audio_sound_gain(global.soundPlane,scale3, 0);
}




}


if(!global.kindness){
	if(x<room_width/2 && !fadeOutStarted){
		fadeOutStarted=true
		var Fo=instance_create_depth(0,0,-100,objFadeOut)
		Fo.construct(4,6,0);
		//game over
	}
}






