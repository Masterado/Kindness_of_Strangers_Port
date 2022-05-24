/// @description Insert description here
// You can write your code in this editor
speed=5
direction = 0
//soundPlane
soundPlane1=_11_plane_sound
playerDropped=false
stopsound=true
stopsound2=true
function construct(_x,_y){
//show_message("AA")
//alarm[1]=3;
//audio_play_sound(soundPlane,5,true)
//audio_sound_gain(soundPlane,scale3, 0);
audio_play_sound_at(soundPlane1, -median(-1, 0, 1), 0, 0, 0,7500, 0, true, 5);
//show_message(string(scale3))
//show_message(string(scale3))
image_xscale=-1
graphic=sprite_index
depth=-100
x=_x
y=_y

}