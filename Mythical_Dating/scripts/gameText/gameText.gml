function gameText(_textID)
{
	switch(_textID) //Reference any text ID below to trigger their corresponding dialogue.
	{
		case "Slender":
			callText("Hi I'm the Slenderman.", "Slender");
			
			callOption("Nice to meet you", "Slender - Greeting");
			callOption("Fuck Off", "Slender - Fuck Off");
			break;
			case "Slender - Greeting":
				callText("Anyway enjoy the game.", "Slender");
				break;
			case "Slender - Fuck Off":
				callText("Fuck you too asshole.", "Slender");
				break;
		case "Gnome":
			callText("Hi I'm the Gnome.", "Gnome");
			break;
		case "Nessie":
			callText("Hi I'm the Nessie.", "Nessie");
			break;
		case "Bigfoot":
			callText("Hi I'm the Bigfoot.", "Bigfoot");
			break;
	}
}
