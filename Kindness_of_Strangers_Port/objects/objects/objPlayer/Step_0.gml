/// @description Insert description here
// You can write your code in this editor


stepReturn=false;
//if(falling=true){
	//y+=5
//}

if(dead){
	image_alpha -= 0.1;
	stepReturn = true;

	}

else if (image_alpha < 1 && !stunned  ){
	image_alpha += 0.1;
}


if(stepReturn ==false){

if(x<0 || x>room_width){

	if(y>room_height/3 and !global.died and !global.airplane2.playerTrigger03){
		global.died=true;
		var Fo=instance_create_depth(0,0,-100,objFadeOut)
		Fo.construct(5,6,0);
		if(instance_exists(objSoundController)){
			with(objSoundController){
				if(audio_is_playing(currentSound)){
					fadeOut(currentSound,6*room_speed);
				
				}
			
			}
		}
	
	}
}
onground=false;
//

var lx=0


	if(place_meeting(x,y+1,objMaze)){
		onground=true;
		doublejump=true;
		walljumping=0;
		
	}
	lx++;














//_speed[0]=0;
//_speed[1]=0;
acceleration[0]=0;
accelx=0;
accely=false;
movex=true;
if(!stunned){
	if (keyboard_check(global.keyLeft) and _speed[0] > -mMaxSpeed[0]) { 
		if(_speed[0]>0){_speed[0]=0;}
		acceleration[0] = -movement; accelx=-1; direction = 180; }
	else if (keyboard_check(global.keyRight) and _speed[0] < mMaxSpeed[0]) { 
		if(_speed[0]<0){_speed[0]=0;}
		acceleration[0] = movement; accelx=1; direction = 0; }
	else if(  !(keyboard_check(global.keyRight)) && !(keyboard_check(global.keyLeft))    )      {
		//speed[0]=0;
		movex=false
		}
}
if(_speed[0]<0){
	absspeed=_speed[0]*-1}
else{
	absspeed=_speed[0];}
if ( (!keyboard_check(global.keyLeft) && ! keyboard_check(global.keyRight)) || absspeed > mMaxspeed[0] ) { 
	fric(true, false); }

if(!stunned && keyboard_check_pressed(global.keyA)){
	//direction=90
	var jumped = false;
	if(onground){
		_speed[1]=-jump;
		jumped=true;}
	
	if(place_meeting(x-1,y,objMaze) and !jumped and walljumping!=3){
		_speed[1]=-jump;
		_speed[0]=mMaxSpeed[0]*2;
		walljumping=2;
		jumped=true;}
		
	if(place_meeting(x+1,y,objMaze) and !jumped and walljumping!=3){
		_speed[1]=-jump;
		_speed[0]=mMaxSpeed[0]*-2;
		walljumping=1;
		jumped=true;}
		
	if(!onground && !jumped && doublejump){
		_speed[1]=-jump;
		doublejump=false;
		walljumping=0
	}
		
}
	grav();


	maxspeed(false,true);
	if(_speed[1]<0 and !(keyboard_check(global.keyA))){
		grav();
		grav();}
		//direction=270
	if(c3=true){
	_speed[0]=0}
		motion(true,true,_speed[0],_speed[1]);
	if	(onground){
		if(_speed[0]<0){
			sprite_index=walkLeft
			image_speed=0.2}
		if(_speed[0]>0){
			sprite_index=walkRight
			image_speed=0.2}
		if(_speed[0]==0){
			if(direction==0){
				sprite_index=standRight}
			if(direction==180){
				sprite_index=standLeft}   }
	}
	else {
		if(direction==0){
				sprite_index=jumpRight}
		if(direction==180){
				sprite_index=jumpLeft}
		if(place_meeting(x-1,y,objMaze)){
				sprite_index=slideRight}
		if(place_meeting(x+1,y,objMaze)){
				sprite_index=slideLeft}
	
	}	


	//_speed[0]+=acceleration[0];
	//goo();	


	//go();
//	grav();
}

