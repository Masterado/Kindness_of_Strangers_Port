/// @description Insert description here
// You can write your code in this editor
#macro FADE_IN_DURATION 3*room_speed
#macro FADE_OUT_DURATION 3 * room_speed
#macro MAX_ALPHA  0.5
#macro DISPLAY_DURATION room_speed*10

fin=false;
fout=false;
alarm[0] = DISPLAY_DURATION
planeexists=true;
image_prealpha=image_alpha
i=2;
stopy=1;
function construct(source,source_index){
	sprite_index=source;
	image_index=source_index;
	depth=100;
	image_speed=0;
	image_alpha=0;
	image_prealpha=image_alpha
	
	if (objCamera.view_width > objCamera.view_height) {
		SPRITE_SCALE = objCamera.view_width / sprite_width;
	}
	else {
		SPRITE_SCALE = objCamera.view_height / sprite_height;
	}
	SCALED_WIDTH = SPRITE_SCALE * sprite_width;
	SCALED_HEIGHT = SPRITE_SCALE * sprite_height;	
	
//	image_xscale=640/sprite_width 
	//image_yscale=480/sprite_height 
}


function fadeIn(){
//show_message("FADE IN");
fin=true;
alarm[1]=FADE_IN_DURATION

}
//fadeIn();

function fadeOut(){
//show_message("FADE OUT");
//instance_destroy();
//depth=200
fout=true
alarm[2]=FADE_OUT_DURATION


}

function destroy(){
	instance_destroy();
}


/*
function render(){
	if(obj_PhotoController.show){
	
	}

}