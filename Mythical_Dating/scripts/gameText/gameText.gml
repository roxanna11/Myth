function gameText(_textID)
{
	switch(_textID) //Reference any text ID below to trigger their corresponding dialogue.
	{
		case "Kraken - Message":
			callText("Did you get my message?", "Kraken");
			callOption("Of course not.", "Kraken - No");
			callOption("Yes.", "Kraken - Yes");
			break;
			case "Kraken - No":
				callText("Well, you're the mythic matchmaker, so I wondering if you were willing to help two myths out. Santa's single, and Yeti's looking for someone special.", 
					"Kraken.");
				break;
			case "Kraken - Yes":
				callText("Bet. Santa and Yeti are using snow this time.", "Kraken");
				break;
				
				
				
				
		case "Slender":
			callText("Hi I'm the Slenderman.", "Slender");
			
			callOption("Nice to meet you", "Slender - Greeting");
			callOption("Fuck Off", "Slender - Fuck Off");
			callOption("Yes", "Slender - Time");
			break;
			case "Slender - Greeting":
				callText("Anyway enjoy the game.", "Slender");
				break;
			case "Slender - Fuck Off":
				callText("Fuck you too asshole.", "Slender");
				break;
			case "Slender - Time":
				callText("Fuck you too asshole.", "Slender");
				break;
				
				
		case "Gnomes":
			callText("Hi I'm the Gnomes.", "Gnomes");
			break;
			
			
		case "Tooth Fairy":
			callText("Hi I'm the Tooth Fairy.", "Tooth Fairy");
			break;
			
			
		case "Yeti":
			callText("Hi I'm the Yeti.", "Yeti");
			break;
			
			
		case "Santa":
			callText("Hi I'm a mess. Miss Claus left me, I'm getting sued for running over someone's grandma, and all I have left is my candy cane", "Santa");
			
			callOption("FIMWOUFUUNWUFWF", "Santa - Greeting");
			break;
			
			case "Santa - Greeting":
				callText("Anyway enjoy the game.", "Santa");
				break;
	}
}
