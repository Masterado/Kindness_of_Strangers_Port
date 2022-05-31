/// @description Insert description here
// You can write your code in this editor
speed=5
direction = 0
//soundPlane
soundPlane1=_11_plane_sound
soundPlane=_11_plane_sound
playerDropped=false
stopsound=true
stopsound2=true
s=noone;
function construct(_x,_y){
//show_message("AA")
//alarm[1]=3;
//audio_play_sound(soundPlane1,5,true)
//audio_sound_gain(soundPlane1,0.5,0);


//show_message(string(scale3))
//show_message(string(scale3))
image_xscale=-1
graphic=sprite_index
depth=-100
x=_x
y=_y
playsound();
}

function playsound(){

audio_falloff_set_model(audio_falloff_linear_distance);	
audio_play_sound_at(soundPlane, -median(-1, 0, 1), 0, 0, 0,7500, 0, true, 5);
audio_sound_gain(soundPlane,0.5,0)


}