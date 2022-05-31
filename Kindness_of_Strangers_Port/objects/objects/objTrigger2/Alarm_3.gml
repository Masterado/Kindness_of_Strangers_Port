/// @description Insert description here
// You can write your code in this editor

if(global.help==true){
if(beat=1){

	with(obj_PhotoBackdrop){
		event_user(0)
	}
	with(objStranger){
		ignore=true;
		destruct=false;}

}
else if(beat=-1){

	with(obj_PhotoBackdrop){
		event_user(1)
	}
with(objStranger){

	destruct=true;
//	helped=true;
//	showTalkBubble=false
	self.render()
}
}
beat=beat*-1
alarm[3]=time*room_speed/15
}