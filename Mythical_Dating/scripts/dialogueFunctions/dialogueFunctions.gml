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
		case "Slender":
			speakerSprite[pageNumber] = spr_speakBox;
			name = _name;
			break;
	}
	
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
