name = "";

global.game_minutes += 30;

depth = -999;

//Text box parameters:
textBoxW = 1000;
textBoxH = 192;
border = 8;
lineSep = 12;
lineWidth = textBoxW - border * 2;

textBoxSpr = spr_TextBackground;


char[0, 0] = "";
charX[0, 0] = 0;
charY[0, 0] = 0;

//page
text[0] = "";
text_length[0] = string_length(text[0]);
page = 0;
pageNumber = 0;
drawChar = 0;
textSpeed = 1;

//options
option[0] = "";
optionLinkID[0] = -1;
optionPos = 0;
optionNumber = 0;

setup = false;

text_x_offset[0] = 44;

layer_set_visible("Dialogue", true);
instance_deactivate_object(obj_Player);

setDefaults();
lastFreeSpace = 0;
