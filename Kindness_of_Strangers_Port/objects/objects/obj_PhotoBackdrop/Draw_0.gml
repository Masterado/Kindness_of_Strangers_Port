// Draw the object stretched, to fit camera view.
x = objCamera.x - SCALED_WIDTH/2;
y = objCamera.y - SCALED_HEIGHT/2;

draw_sprite_ext(sprite_index, image_index, x, y, SPRITE_SCALE, SPRITE_SCALE, 0, c_white, image_alpha);