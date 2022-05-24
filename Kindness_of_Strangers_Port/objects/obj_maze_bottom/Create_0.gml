/// @description Insert description here
// You can write your code in this editor

function collS(oS,_mode){
		Px1=oS.x;
	Py1=oS.y;
	Py2=Py1-oS.sprite_height
	Px2=Px1+oS.sprite_width
	
	a=Px1;
	b=Py1;
	if(_mode==0){
	while(a<Px2){
		while(b<Py2){
			if(draw_getpixel(a,b)=c_black){
				return true;}
			else{
				b++;}	
	
		}
		b=Py1;
		a++;
}
	return false
}
}
function coll(_x, _y, _mode){

	Px1=objPlayer.x;
	Py1=objPlayer.y;
	Py2=Py1-objPlayer.sprite_height
	Px2=Px1+objPlayer.sprite_width
	
	a=Px1;
	b=Py1;
	if(_mode==0){
	while(a<Px2){
		while(b<Py2){
			if(draw_getpixel(a,b)=c_black){
				return true;}
			else{
				b++;}
		
	
		}
		b=Py1;
		a++;
}
	

return false;
	}
	
	else if (_mode==1){
		if(draw_getpixel(_x,_y)=c_black){
		return true;}
		else{
			return false;}
	
	
	}

}