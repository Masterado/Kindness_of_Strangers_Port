/// @description Insert description here
// You can write your code in this editor
/*
if(!global.airplane.playerDropped){
	hspeed=global.airplane.hspeed;
	direction=global.airplane.direction;
	
}
else{
hspeed=objPlayer.hspeed
vspeed=objPlayer.vspeed
direction=objPlayer.direction
}
*/
x=camera_get_view_x(view_camera[0])+global.player._speed[0]
y=camera_get_view_y(view_camera[0])+global.player._speed[1]

if(instance_exists(objPlane2) && instance_exists(objSoundController) && global.SC.currentSound==_1_transcript_part04_wav ){

x=(global.airplane2.x-oldx)+camera_get_view_x(view_camera[0])-5
y=(global.airplane2.y-oldy)+camera_get_view_y(view_camera[0])-0.7
if(x<0){x=0}
if(y<0){y=0}
}

else{
//y=global.player.y-(480/2)
x=(global.player.x-oldx)+camera_get_view_x(view_camera[0])
y=(global.player.y-oldy)+camera_get_view_y(view_camera[0])
if(x<0){x=x*-1}
if(y<0){y=0;}


if(camera_get_view_x(view_camera[0])+global.player._speed[0]<0){x=camera_get_view_x(view_camera[0]);}
if(camera_get_view_x(view_camera[0])+global.player._speed[0]>room_width){x=camera_get_view_x(view_camera[0])}
//	if(camera_get_view_y(view_camera[0])+global.player._speed[1]<0){y=0;}
//if(camera_get_view_y(view_camera[0])+global.player._speed[1]>room_height){y=room_height}
	if(camera_get_view_y(view_camera[0])+global.player._speed[1]<0){y=0}//camera_get_view_x(view_camera[0])}
	
if(x<0){x=0;}
if(x+640>room_width){x=room_width-640}
//if(y<0){y=0;}
if(y+480>room_height){y=room_height-480}
}
//x = camera_get_view_x(view_camera[0]);
//y = camera_get_view_y(view_camera[0]);
//x=old_x;
//y=old_y;


/*
if(instance_exists(objPlayer)){
	x=objPlayer.x-(640/2)
	y=objPlayer.y-(480/2)
}
if()