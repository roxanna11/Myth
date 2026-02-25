function callSprite()
{
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
		case "Mister Kraken":
			speakerSprite[pageNumber] = spr_Kraken;
			break;
	}
	
	name = _name;
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
