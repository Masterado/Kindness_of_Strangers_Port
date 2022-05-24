/// @description Insert description here
// You can write your code in this editor
#macro START_TIME  room_speed * 5
#macro DISPLAY_TIME room_speed*10
 show= true;

currentIndex=0;
init=true;
 currentPhoto=noone;
 lastPhoto=noone;
photoArray01=[0,1,2,3,4]
photoArray02=[5,6,7,8,9,10,11,12,13,14,15,16,17]
photoArray03=[18,19,20,21,22,23,24,25,26]
photoIndex=0;
 currentPhotoArray=photoArray01
//alarm[0]=DISPLAY_TIME;
alarm[1]=START_TIME;

function start(){
	currentPhoto=instance_create_depth(0,0,0,obj_PhotoBackdrop);
	ph=instance_create_depth(0,0,0,obj_photoHelper)
	ph.sprite_index=spr_photos
	ph.image_index=0;
	currentPhoto.construct(ph.sprite_index,ph.image_index);
	currentPhoto.fadeIn()
	currentIndex++;
	instance_destroy(ph);
	alarm[0]=DISPLAY_TIME;
	photoIndex++;
}

function nextPhoto(){
	//show_message("next");
	//lastPhoto=currentPhoto;
	//currentPhoto.depth=200;
	//currentPhoto.instance_destroy();
	currentPhoto.fadeOut()
	currentPhoto=instance_create_depth(0,0,0,obj_PhotoBackdrop);
	ph=instance_create_depth(0,0,0,obj_photoHelper)
	ph.sprite_index=spr_photos
	ph.image_index=currentPhotoArray[photoIndex]
	currentPhoto.construct(ph.sprite_index,ph.image_index);
	currentPhoto.fadeIn()
	ph.image_alpha=0;
//	ph.depth=200;

		if(currentIndex <array_length(currentPhotoArray)){
		photoIndex=currentPhotoArray[currentIndex];	
		currentIndex++;
	
		
		
		}
	else{
		currentIndex=0;}
	alarm[0]=DISPLAY_TIME;
	instance_destroy(ph);

}