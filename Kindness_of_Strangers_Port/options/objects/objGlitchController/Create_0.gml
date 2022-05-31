 GLITCH_01_TIME= 6.2 *room_speed;
 GLITCH_02_TIME= 7.92 *room_speed;
 GLITCH_03_TIME= 10.45 *room_speed;
GLITCH_04_TIME= 12.23 *room_speed;
GLITCH_05_TIME= 13.14 *room_speed;
SPAZ_TIME= 0.1 * room_speed;
spazTime=SPAZ_TIME
 GLITCH_OVER_TIME= 15.14 *room_speed;
check=0;
beat=1;
collP=false
function construct(_x,_y){
	collP=true
	alarm[0]=GLITCH_01_TIME
	alarm[1]=GLITCH_02_TIME
	alarm[2]=GLITCH_03_TIME
	alarm[3]=GLITCH_04_TIME
	alarm[4]=GLITCH_05_TIME
	alarm[5]=GLITCH_OVER_TIME
	x=_x;
	y=_y;
}
function showHelp(){
	with(obj_PhotoBackdrop){
		event_user(0)}
	with(objStranger){
		event_user(0)}}
function hideHelp(){
		with(obj_PhotoBackdrop){
			event_user(1)}
		with(objStranger){
			event_user(1)}}

function spazShow(){
	spazTime = SPAZ_TIME /2   + random(1)* (SPAZ_TIME/2)
	with(obj_PhotoBackdrop){
		event_user(0)}
	with(objStranger){
		event_user(0)}
	alarm[7]=spazTime;}

function spazHide(){
spazTime = SPAZ_TIME /2   + random(1)* (SPAZ_TIME/2)
	with(obj_PhotoBackdrop){
		event_user(1)}
	with(objStranger){
		event_user(1)}
	alarm[6]=spazTime;}

function destroy(){
	
	with(obj_photoHelper){
		instance_destroy();}
	instance_destroy()
}