/// @description Insert description here
// You can write your code in this editor
if (global.c01 && currentPhotoArray != photoArray02){
	
				currentPhotoArray = photoArray02;
				currentIndex = 0;
				nextPhoto();
				global.c01=false
			}	
			// Triger 02
else if (global.c02 && currentPhotoArray != photoArray03)
			{
				currentPhotoArray = photoArray03;
				currentIndex=0;
				nextPhoto();
				global.c02=false;
			}	
if(global.help==false){
	instance_destroy()
}