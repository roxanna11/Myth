acceptKey = keyboard_check_pressed(vk_space);

textBoxX = 96;
textBoxY = 480;

//setup
if(setup == false)
{
	setup = true;
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//Loop through pages
	pageNumber = array_length(text);
	for(var i = 0; i < pageNumber; i++)
	{
		//Find out how many characters are in each page and storing in text_length array
		text_length[i] = string_length(text[i]);
		
		//Get x position for textbox
		text_x_offset[i] = 44;
	}
	
}

//typing the text
if(drawChar < text_length[page])
{
	drawChar += textSpeed;
	drawChar = clamp(drawChar, 0, text_length[page]);
}

//flip through pages
if(acceptKey)
{
	//If text is done typing
	if(drawChar == text_length[page])
	{
		if(page < pageNumber - 1)
		{
			page++;
			drawChar = 0;
		}
		else
		{
			instance_destroy();
		}
	}
	else
	{
		drawChar = text_length[page];
	}
}

//Draw text box
textBoxSpriteW = sprite_get_width(textBoxSpr);
textBoxSpriteH = sprite_get_height(textBoxSpr);

draw_sprite_ext(textBoxSpr, 0, textBoxX + text_x_offset[page], textBoxY, 
	textBoxW/textBoxSpriteW, textBoxH/textBoxSpriteH, 0, c_white, 1);
	
var _drawText = string_copy(text[page], 1, drawChar);
draw_text_ext(textBoxX + text_x_offset[page] + border, textBoxY + 32 + border, _drawText, lineSep, lineWidth);
