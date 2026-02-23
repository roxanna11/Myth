function gameText(_textID)
{
	switch(_textID) //Reference any text ID below to trigger their corresponding dialogue.
	{
		case "Slender":
			scr_text("Hi I'm the Slenderman.");
			
			callOption("Nice to meet you", "Slender - Greeting");
			callOption("Fuck Off", "Slender - Fuck Off");
			break;
			case "Slender - Greeting":
				scr_text("Anyway enjoy the game.");
				break;
			case "Slender - Fuck Off":
				scr_text("Fuck you too asshole.");
				break;
		case "Gnome":
			scr_text("Hi I'm the Gnome.");
			break;
		case "Nessie":
			scr_text("Hi I'm the Nessie.");
			break;
		case "Bigfoot":
			scr_text("Hi I'm the Bigfoot.");
			break;
	}
}
