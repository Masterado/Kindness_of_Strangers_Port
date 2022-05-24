/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("T"))){
		game_restart();}
if(room==Room2){
	if(keyboard_check_pressed(vk_space)){
			global.kindness=false;
			
		//	room_instance_clear(Room3);
			room_goto(Room3);
			
		
		}

	if(keyboard_check_pressed(ord("X"))){
		url_open("http://www.gametrekking.com/category/tags/taiwan");}
}


if(room==Room4){
	if(keyboard_check_pressed(vk_space)){
			global.kindness=true;
		//room_instance_clear(Room1);
		
		room_goto(Room1);
	}


}

if(room==Room5){
	if(keyboard_check_pressed(vk_space)){
		global.kindness=true;
	//	room_instance_clear(Room1);
		//game_restart()
		room_goto(Room1);
			}

}