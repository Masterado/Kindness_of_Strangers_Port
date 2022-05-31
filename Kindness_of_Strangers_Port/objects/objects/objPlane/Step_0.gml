/// @description Insert description here
// You can write your code in this editor
audio_sound_set_track_position(_11_plane_sound, 0.5);
if(x<=3000 and !playerDropped){
	/*
	
	if(!audio_is_playing(soundPlane1)){
		show_message("stop")
	//	audio_play_sound_at(soundPlane1, -median(-1, 0, 1), 0, 0, 0,7500, 0, true, 5);
	//	audio_sound_gain(soundPlane1,1,0)
	}
	if(audio_is_playing(soundPlane1) && keyboard_check(ord("Q"))){
		show_message("goo");
		audio_sound_gain(soundPlane1,1,0)
	}

*/

}

if(x>3000 and !playerDropped){
//	audio_stop_sound(soundPlane1)
audio_stop_sound(soundPlane)
		global.SC=instance_create_depth(0,0,0,objSoundController)
global.SC.construct();
	global.PC=instance_create_depth(0,0,0,obj_PhotoController);
	playerDropped=true
	global.player.x=x
	global.player.y=y
	global.player.image_alpha=1;
	global.player.stunned=false
	if(!global.kindness){
	//	alarm[0]=10;
}

	// Use objCamera to handle camera, so that we have more control over responsive fullscreen functionality
	objCamera.follow = global.player;
	
	//camera_destroy(view_camera[0]);
	//view_camera[0] = camera_create_view(0, 0, 640, 480, 0, global.player, -1, -1, room_width, room_height);
	//camera_set_view_target(view_camera[0], global.player);
}

if(x >=7500 /*room_width * 1.5 -3000*/  && stopsound && playerDropped  ){
	//audio_stop_sound(soundPlane)
	//show_message("stop")
	//audio_stop_sound(soundPlane)
	stopsound=false
}
if(x > room_width * 1.5){
	//audio_stop_sound(soundPlane)
	instance_destroy();	
}

if(playerDropped){

y-=1
//soundPlane.pan = FP.scale(x, 3000, FP.width * 1.5, 0, 1);
//soundPlane.volume = FP.scale(x, 3000, FP.width * 1.5, 0.5, 0);	
scale1 = room_width*1.5-3000; //4500
scale2 = (x-3000)/scale1
scale3=(0.5 - (0.5*scale2))
scale4=0+ scale2
//show_message(string(scale3))
//show_message()
//show_message()
//audio_falloff_set_model(audio_falloff_linear_distance);
if(stopsound){
if(stopsound2){
		audio_falloff_set_model(audio_falloff_linear_distance);	
//audio_play_sound_at(soundPlane, -median(-1, scale4, 1), 0, 0, 0,3000, 0, true, 5);
		audio_play_sound_at(soundPlane1, 0, 0, 0, 0,7500,0, true,5);
		stopsound2=false
		audio_sound_gain(soundPlane1,scale3, 0);
	}
	
//audio_stop_sound(soundPlane1)
else{

//audio_falloff_set_model(audio_falloff_linear_distance);	
//audio_play_sound_at(soundPlane, -median(-1, scale4, 1), 0, 0, 0,3000, 0, true, 5);
//s=audio_play_sound_at(s, scale4, 0, 0, 0,7500,0, true,5);
//show_message(string(scale3))

audio_sound_gain(soundPlane1,scale3, 0);

}
}



}
else{
y+=0.2
}