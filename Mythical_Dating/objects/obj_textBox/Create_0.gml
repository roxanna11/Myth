depth = -999;

//Text box parameters:
textBoxW = 1000;
textBoxH = 192;
border = 8;
lineSep = 12;
lineWidth = textBoxW - border * 2;

textBoxSpr = spr_TextBackground;

//page
page = 0;
pageNumber = 0;


text[0] = "Hi I'm larry";
text[1] = "LARRY?!";
text[2] = "Yup";
text[3] = "Wow, that's the dumbest name I've ever heard.";
text_length[0] = string_length(text[0]);

drawChar = 0;
textSpeed = 1;

setup = false;

text_x_offset[0] = 44;