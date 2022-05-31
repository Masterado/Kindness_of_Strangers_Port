

 _alphaTween=noone
_bufferAlarm=noone;
_fadeComplete = false;
 _goto=noone
_buffer=noone
_time=noone
fadestart=noone;
 function construct(goto, time= 3, buffer = 0) 
		{
	
			time *= room_speed
			_time=time
			_goto = goto;
			_buffer = buffer;
			
			//create a rectangle the size of the screen.
	//		graphic = Image.createRect(FP.screen.width, FP.screen.height, color);
			image_xscale=room_width;
			image_yscale=room_height;
			image_alpha = 0;
		
			depth = -100;
			
			// set the buffer alarm.
			//_bufferAlarm = new Alarm(buffer, switchWorlds);
		//	addTween(_bufferAlarm);
			fadestart=true
			alarm[1]=_time
			// start the fading.
		//	_alphaTween = new ColorTween(startBuffer);
		//	addTween(_alphaTween);		
		//	_alphaTween.tween(time, 0x000000, color, 0, 1);		
		}
		



 function startBuffer()
		{
			if (_buffer > 0)
			{
				alarm[0]=_buffer;
			}
			else	{
				instance_destroy(global.airplane2);
			//	room_instance_clear(room);
				switchWorlds();
		}
		}


function switchWorlds()
		{		
			if (_goto != noone)
			{
				instance_destroy(global.airplane2);
				audio_stop_sound(_11_plane_sound)
				
		//		room_instance_clear(room);
				if(instance_exists(objSoundController)){
					if(audio_is_playing(global.SC.currentSound)){
						audio_stop_sound(global.SC.currentSound)
					}
				}
				instance_destroy(global.player)
				//room_instance_clear(room)
				//instance_create_depth(0,0,0,objStart)
				if(_goto==1){room_goto(Room1);}
				if(_goto==2){room_goto(Room2);}
				if(_goto==3){room_goto(Room3);}
				if(_goto==4){room_goto(Room4);}
				if(_goto==5){room_goto(Room5);}
				
				
			}
		}