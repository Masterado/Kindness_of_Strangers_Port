/// @description Insert description here
// You can write your code in this editor
/*
if(flip==1){
	var g = audio_sound_get_gain(sndTranscript01)
	
	audio_sound_gain(sndTranscript01,g +  (-g*(1/FADE_DURATION)),0)
	alarm[0]=FADE_DURATION
}

if(flip=2){
if(audio_is_playing(sndTranscript02)){
						fadeOut(sndTranscript02,FADE_DURATION)}
			flip=0;
						}
if(flip==3){
if(audio_is_playing(sndTranscript03)){
		fadeOut(sndTranscript03,FADE_DURATION)
	}	
	flip=0
}	
*/
if (global.coll01)
		{
			if (currentSound != sndTranscript02 && currentSound != sndTranscript02Break /*&& !audio_is_playing(sndTranscript01)*/ )
				{
				if(audio_is_playing(sndTranscript01)){
						fadeOut(sndTranscript01,FADE_DURATION)}
					
					
					//trace('collide trigger 1');
					//fader.fadeTo(0, FADE_DURATION);
					//fout=true
				//	show_message("AAAA")
			//		audio_stop_sound(currentSound)
					if (global.kindness){
						currentSound = sndTranscript02
						}
					else
					{
						currentSound = sndTranscript02Break;
						
				//		FP.world.add(new GlitchController);
						var T5=instance_create_depth(0,0,0,objGlitchController);
						T5.construct(global.trigger01.x,global.trigger01.y);
					}
					
					audio_play_sound(currentSound,6,false)//(newSound,5,false)   
					
					
					global.coll01=false;
					flip=1
					
				}
			}

			else if (global.coll02 && currentSound != sndTranscript03 /*&&  !audio_is_playing(sndTranscript02)*/)
			{
				if(audio_is_playing(sndTranscript02)){
						fadeOut(sndTranscript02,FADE_DURATION)}
			//	trace('collide trigger 2');
				if (global.kindness)
				{
				//	fader.fadeTo(0, FADE_DURATION);
					
					currentSound = sndTranscript03;
					audio_play_sound(currentSound,6,false)   
					global.coll02=false;
					flip=2
				}
			}	
			else if (global.coll04 && !trigger04)
			{
		
			
			//	trace('trigger04');
				trigger04 = true;


				//audio_play_sound(soundPlane,5,true); 
				audio_play_sound(global.soundPlane,5,true); 
				global.coll04=false
	
			}	
			else if (trigger04)
			{
			//	soundPlane.pan = FP.scale(Global.player.x, Global.trigger04.x, FP.width, 1, 0);
				//soundPlane.volume = FP.scale(Global.player.x, Global.trigger04.x, FP.width, 0, 0.5);
				scale1 = room_width - global.trigger04.x
				scale2 = (global.player.x - global.trigger04.x)/scale1;
				scale3=(0+ scale2)/4
				scale4=1 - scale2
			
				
				//audio_falloff_set_model(audio_falloff_linear_distance);
				if(stopsound){
					//audio_play_sound_at(soundPlane, scale4, 0, 0, 0,7500,0, true, 5);
					//audio_sound_gain(soundPlane,scale3, 0);
					
				//	audio_play_sound_at(global.soundPlane, scale4, 0, 0, 0,7500,0, true, 5);
					audio_sound_gain(global.soundPlane,scale3, 0);
					
					
					}

			}
			
			//if (currentSound == sndTranscript04 && !fadeOutStarted)
			if (currentSound == sndTranscript04 && !audio_is_playing(sndTranscript04) && !fadeOutStarted)
			{
				fadeOutStarted = true;
				//FP.world.add(new FadeOut(GameOverWorld, Colors.BLACK, 6));
				var Fo=instance_create_depth(0,0,-100,objFadeOut)
				Fo.construct(2,6,0);
		//game over
	

			}