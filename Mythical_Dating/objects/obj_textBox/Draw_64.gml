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
			//link text to options
			if (optionNumber > 0)
			{
				createTextBox(optionLinkID[optionPos]);
			}
			instance_destroy();
		}
	}
	else
	{
		drawChar = text_length[page];
	}
}


//Draw text box
var _textBoxX = textBoxX + text_x_offset[page];
var _textBoxY = textBoxY;
textBoxSpriteW = sprite_get_width(textBoxSpr);
textBoxSpriteH = sprite_get_height(textBoxSpr);

draw_sprite_ext(textBoxSpr, 0, textBoxX + text_x_offset[page], textBoxY, 
	textBoxW/textBoxSpriteW, textBoxH/textBoxSpriteH, 0, c_white, 1);
	
	//OPTIONS:
if(drawChar == text_length[page] && page == pageNumber - 1)
{
	
	//option selection
	optionPos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	optionPos = clamp(optionPos, 0, optionNumber - 1);
	
	var _opSpace = 30;
	var _opBoard = 8;
	 
	for(var op = 0; op < optionNumber; op++)
	{
		//Option Boxes
		var _oW = string_width(option[0]) + _opBoard*2; //option width
		draw_sprite_ext(spr_TextBackground, 0, _textBoxX + 32, _textBoxY - _opSpace * optionNumber + _opSpace*op, 
			_oW/textBoxSpriteW, (_opSpace-1)/textBoxSpriteH, 0, c_white, 1);
			
		//The arrow
		if(optionPos == op)
		{
			draw_sprite(spr_arrow, 0, textBoxX, _textBoxY - _opSpace * optionNumber + _opSpace*op);
		}
			
		//Option text
		draw_text(textBoxX + 72 + _opBoard, _textBoxY - _opSpace * optionNumber + _opSpace*op + 4, option[op])
	}
}
	
var _drawText = string_copy(text[page], 1, drawChar);
draw_text_ext(textBoxX + text_x_offset[page] + border, textBoxY + border, name, lineSep, lineWidth);
draw_text_ext(textBoxX + text_x_offset[page] + border, textBoxY + 32 + border, _drawText, lineSep, lineWidth);
