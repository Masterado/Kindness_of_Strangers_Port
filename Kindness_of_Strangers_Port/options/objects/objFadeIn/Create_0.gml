/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
image_xscale=room_width
image_yscale=room_height
alphaTween=noone;
bufferAlarm=noone;
_time=noone
_bufferComplete=false
fadestart=false;
 function construct( time = 3, buffer= 0) 
		{
	
			time *= room_speed;
			image_alpha=1
			//_color = color;
			_time = time;
			
			// create a rectangle the size of the screen.
		
			depth = -1;
			
			// start the buffer alarm.

		//	addTween(_bufferAlarm);
			if (buffer > 0)
				alarm[0]=buffer;
				
			else
			{
				startFade();
				
			}
		}
		
function startFade()
{
	fadestart=true;
	
	}

 function destroy()
	{
			instance_destroy();
		}
		