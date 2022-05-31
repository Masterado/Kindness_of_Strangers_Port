/// @description Insert description here
// You can write your code in this editor



Globals()
ColorsInit()
LevelData()
randomize();
#macro SCALE 2
//alarm[1]=2

function loadlevel(){
	global.c01=false
	global.c02=false
	//ds=ds_map_create();
	var level_data=json_decode(global.json_level_data)
		
//	var key = ds_map_find_first(level_data);

	var level = ds_map_find_value(level_data, "level")
	//var level = level_data[? " "];
	var level_width = ds_map_find_value(level, "width")
	var level_height = ds_map_find_value(level, "height")
	var actors = ds_map_find_value(level, "actors")
	var TR = ds_map_find_value(level,"triggers");
	var H = ds_map_find_value(TR, "heart");
	var T1 = ds_map_find_value(TR, "trigger_01");
	var T2 = ds_map_find_value(TR, "trigger_02");
	var T3 = ds_map_find_value(TR, "trigger_03");
	var T4 = ds_map_find_value(TR, "trigger_04");
	var PR = ds_map_find_value(actors, "person_right")
	var PL = ds_map_find_value(actors, "person_left")
	var PU = ds_map_find_value(actors, "person_up")
	var PD = ds_map_find_value(actors, "person_down")
	var Maze = ds_map_find_value(level, "maze")
	var Mazesize = ds_map_find_value(Maze, "maze")
	mx=real(Mazesize[? "_x"])*SCALE
	my=real(Mazesize[? "_y"])*SCALE
	global.mt=instance_create_depth(mx,my,10,obj_maze_top);
	global.mb=instance_create_depth(mx,my+global.mt.sprite_height,10,obj_maze_bottom);
//	show_message(level_width)
	room_width=real(level_width)*SCALE
	room_height=real(level_height)*SCALE
	o=0;
	_x=real(H[? "_x"]) * SCALE
	_y=real(H[? "_y"]) * SCALE
	global.bigHeart=instance_create_depth(_x,_y,-1, objHeart);
	//global.bigHeart=global.bigHeart.constrct(_x,_y);
	
	_x=real(T1[? "_x"]) * SCALE
	_y=real(T1[? "_y"]) * SCALE
	global.trigger01=instance_create_depth(_x,_y,-1,objTrigger);
	global.trigger01.construct(_x,_y,1);

	_x=real(T2[? "_x"]) * SCALE
	_y=real(T2[? "_y"]) * SCALE
	global.trigger02=instance_create_depth(_x,_y,-1,objTrigger);
	global.trigger02.construct(_x,_y,2);
	
	_x=real(T3[? "_x"]) * SCALE
	_y=real(T3[? "_y"]) * SCALE
	global.trigger03=instance_create_depth(_x,_y,-1,objTrigger);
	global.trigger03.construct(_x,_y,3);
	
	_x=real(T4[? "_x"]) * SCALE
	_y=real(T4[? "_y"]) * SCALE
	global.trigger04=instance_create_depth(_x,_y,-1,objTrigger);
	global.trigger04.construct(_x,_y,4);
	
	while(o<real((PR[| 0][? "_len"]))){
		var currR= PR[| o]
		_x=real(currR[? "_x"]) * SCALE -10
		_y=real(currR[? "_y"]) * SCALE -4
		oS= instance_create_depth(_x,_y, -1, objStrangerRight);
		oS =  oS.construct(_x,_y);
		o++;
	}
	o=0;
	while(o<real((PD[| 0][? "_len"]))){
		var currD= PD[| o]
		_x=real(currD[? "_x"]) * SCALE -10 
		_y=real(currD[? "_y"]) * SCALE -4 
		oS= instance_create_depth(_x,_y, -1, objStrangerDown);
		oS =  oS.construct(_x,_y);
		o++;
	}
	o=0;
	while(o<real((PU[| 0][? "_len"]))){
		var currU= PU[| o]
		_x=real(currU[? "_x"]) * SCALE -10
		_y=real(currU[? "_y"]) * SCALE -4
		oS= instance_create_depth(_x,_y, -1, objStrangerUp);
		oS =  oS.construct(_x,_y);
		o++;
	}
	o=0;
	while(o<real((PL[| 0][? "_len"]))){
		var currL= PL[| o]
		_x=real(currL[? "_x"]) * SCALE -10
		_y=real(currL[? "_y"]) * SCALE -4
		oS= instance_create_depth(_x,_y, -1, objStrangerLeft);
		oS =  oS.construct(_x,_y);
		o++;
	}
	global.player=instance_create_depth(0,0,0,objPlayer)
global.player.construct(x,y);
global.player.stunned=true
global.player.image_alpha=0;
	global.airplane = instance_create_depth(0,0,0,objPlane)
global.airplane.construct(0,0)
global.airplane2= instance_create_depth(0,0,0,objPlane2)
global.airplane2.construct(room_width+100, room_height-150);
//room_height=global.mt.sprite_height+global.mb.sprite_height+320
//room_width=global.mt.sprite_width;

//alarm[0]=room_speed*10
//alarm[1]=room_speed*8

// Use objCamera to handle camera, so that we have more control over responsive fullscreen functionality.
instance_create_depth(0,0,0,objCamera);
//camera_destroy(view_camera[0]);
//view_camera[0] = camera_create_view(0, 0, 640, 480, 0, global.airplane, -1, -1, room_width, -1);

audio_sound_gain(_1_transcript_part04_wav    ,1,0)
audio_sound_gain( _2_transcript_part03_wav   ,1,0)
audio_sound_gain( _3_transcript_part02_breakdown_wav   ,1,0)
audio_sound_gain( _4_transcript_part02_wav   ,1,0)
audio_sound_gain( _5_transcript_part01_wav   ,1,0)
audio_sound_gain( _8_powerup03_wav   ,1,0)
audio_sound_gain(_11_plane_sound    ,1,0)






}


