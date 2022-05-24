/// @description Insert description here
// You can write your code in this editor
event_inherited();
falling=false
alarm[1]=(320-y)/5
image_speed=0;
make_glitch=true
movement=1;
jump=8
c1=false
c2=false
c3=false
c4=false
direction=0;
onground=false;
walljumping=0;
doublejump=false;
dead=false;
stunned=false;
starts = noone;
rescale=false;
colll=false
bbx=12/sprite_width
bby=24/sprite_height

alarm[0]=500;


function go(){
/*
	if(keyboard_check(global.keyUp)){
		if(!place_meeting(x,y-1,objMaze)){
		
			y-= 1;}}
		
	if(keyboard_check(global.keyLeft)){
		if(!place_meeting(x-1,y,objMaze)){
			x-=1;}	}
	if(keyboard_check(global.keyDown)){
		if(!place_meeting(x,y+24,objMaze)){
			y+=1;}	}
			
	if(keyboard_check(global.keyRight)){
		if(!place_meeting(x+12,y,objMaze)){
			x+=1}	}
			*/
	xlist=ds_list_create();
	ylist=ds_list_create();
	a=x;
	b=y;
	while(a<=x+12){
		ds_list_add(xlist, a);
		a++;}
	while(b<=y+24){
		ds_list_add(ylist, b);
		b++;}
	a=x;
	b=y;
	as=0;
	bs=0;
	am=0;
	bm=0;
	if(keyboard_check(global.keyUp)){
		bs=-1
		while(am<=15){
			while(a<=x+bbx){
				if(place_meeting(a,y-bby-am,objMaze)){
					bs=0;
					break;}
				a++;}
			am++;
			a=x;}
		bs=bs-am
	}
	
	a=x;
	//am=0;
		
	if(keyboard_check(global.keyDown)){
		bs=0
		while(am<=15){
			while(a<=x+bbx){
				if(place_meeting(a,y+1+am,objMaze)){
					bs=0;
					break;}
				a++;}
			am++;
			a=x;}
		bs=bs+am
	}		
			
			
			
	if(keyboard_check(global.keyLeft)){
		as=0
		while( bm<=15){
			while(b>=y-bby){
				if(place_meeting(x-1-bm,b,objMaze)){
					as=0;
					break;}
				b--;}
			bm++;
			b=y;}
		as=as-bm
	}
			
	
	b=y;
	if(keyboard_check(global.keyRight)){
		as=0
		while( bm<=15){
			while(b>=y-bby){
				if(place_meeting(x+bbx+bm,b,objMaze)){
					as=0;
					break;}
				b--;}
			bm++;
			b=y;}
		as=as+bm
	}
	
	
	x=x+as;
	y=y+bs;
			
	if(keyboard_check(ord("F"))){
		x+=1;}
}

function goo(){
	if(keyboard_check(ord("H"))){x=x-15}
	if(keyboard_check(ord("K"))){x=x+15}
	if(keyboard_check(ord("J"))){y=y+15}
	if(keyboard_check(ord("U"))){y=y-15}
}

function construct(_x,_y){
	mGravity=0.5;
	mMaxSpeedx=4;
	mMaxSpeed=[4,8];
	mMaxSpeedy=8;
	mFriction = [0.5,0.5];
	depth=-2;
	//setHitbox(12,24,-10,-8);
	image_xscale= 32/sprite_width;
	image_yscale= 32/sprite_height;
	
	_type= "Player";
	
	x=_x;
	y=_y;
}
