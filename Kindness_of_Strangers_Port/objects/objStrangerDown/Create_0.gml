/// @description Insert description here
// You can write your code in this editor
event_inherited()
function construct2(_x,_y){
	x=_x;
	y=_y;
	var iA= instance_create_depth(0,0,0,obj_photoHelper)
	iA.sprite_index=spr_down
	iA.image_blend=global.BG_COLOR;
	imgArrow=iA;
	//instance_destroy(iA);
}