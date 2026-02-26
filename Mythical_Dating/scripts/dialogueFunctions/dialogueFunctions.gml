function setDefaults()
{
	lineBreakPos[0, pageNumber] = 999;
	lineBreakNum[pageNumber] = 0;
	lineBreakOffset[pageNumber] = 0;
	
	speakerSprite[pageNumber] = noone;
	speakerSide[pageNumber] = 1;
}


///@param dialogue text
function callText(_text, _name)
{ //Creates text
	text[pageNumber] = _text;
	
	
	switch(_name)
	{
		case "Santa":
			speakerSprite[pageNumber] = spr_Santa;
			break;
		case "Slender":
			speakerSprite[pageNumber] = spr_Slender;
			break;
		case "Tooth Fairy":
			speakerSprite[pageNumber] = spr_Toothy;
			break;
		case "Gnomes":
			speakerSprite[pageNumber] = spr_Gnonmes;
			break;
		case "Yeti":
			speakerSprite[pageNumber] = spr_Yeti;
			break;
		case "Kraken":
			speakerSprite[pageNumber] = spr_Kraken;
			break;
		case "Hatman":
			speakerSprite[pageNumber] = spr_Hatman;
			break;
		case "Phone":
			speakerSprite[pageNumber] = spr_Phone;
			break;
		case "PhoneGuy":
			speakerSprite[pageNumber] = spr_PhoneGuy;
			break;
	}
	
	//name = _name;
	pageNumber++;
}

///@param Calls the link id
function callOption(_option, _linkID)
{ //Creates options
	option[optionNumber] = _option;
	optionLinkID[optionNumber] = _linkID;
	
	optionNumber++;
}

/// @param Calls the text id
function createTextBox(_textID)
{ //Calls textID
	with(instance_create_depth(0, 0, -9999, obj_textBox)) //Working within the obj_textBox
	{
		gameText(_textID);
	}
}
