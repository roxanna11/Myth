function gameText(_textID)
{
	switch(_textID) //Reference any text ID below to trigger their corresponding dialogue.
	{
		case "Message from Kraken":
			callText("You have 1 voicemail", "Phone");
			callText("Hey it's Kraken, and we have a situation down at the bar. Santa's single, and the Yeti is looking for someone special. Do you think you can help?", "PhoneGuy")
			break;
		
		case "Kraken - Message":
			callText("Did you get my message?", "Kraken");
			callOption("Of course not.", "Kraken - No");
			callOption("Yes.", "Kraken - Yes");
			break;
			case "Kraken - No":
				callText("Well, you're the mythic matchmaker, so I wondering if you were willing to help two myths out. Santa's single, and Yeti's looking for someone special. Work your magic", 
					"Kraken");
				break;
			case "Kraken - Yes":
				callText("Great! Santa and Yeti are using candy cane this time. Work your magic.", "Kraken");
				break;
				
		case "Slender":
			callText("The 2018 movie was the second worst thing to happen to my reputation.", "Slender");
			break;
				
		case "Gnomes":
			callText("Hi we're the Gnomes, and we're just chilling around right now.", "Gnomes");
			break;
			
			
		case "Tooth Fairy":
			callText("Wanna see me crush this pale skinny fellow?", "Tooth Fairy");
			callText("You haven't won yet, toothy!", "Slender");
			callText("Yeah, but I'm gonna.", "Tooth Fairy");
			callText("Nuh uh!", "Slender");
			break;
			
			
		case "Yeti":
			callText("(sign) It's hard being a single hairy beast. I wish I knew someone who would be willing to do candy cane with me.", "Yeti");
			callOption("Have you met the 'dashing' Santa Claus?", "Yeti - Met Santa?");
			callOption("I didn't remember asking.", "Yeti - Mean");
			break;
			case "Yeti - Met Santa?":
				callText("Isn't he married? I mean...I guess I can do some snow with the guy. I still got a full baggy of it.", "Yeti");
				global.likeoMeter +=25;
				break;
			case "Yeti - Mean":
				callText("You don't have to be rude you know. I'm just thinking out loud, jerk.", "Yeti");
				break;
			
			
		case "Santa":
			callText("Hi I'm a mess. Miss Claus left me, I'm getting sued for running over someone's grandma, and all I have left is my candy cane", "Santa");
			
			callOption("Yeah you're right you are a mess.", "Santa - Mean");
			callOption("Yeti likes candy cane too.", "Santa - Talk to Yeti");
			break;
			
			case "Santa - Talk to Yeti":
				callText("Really? Oh HO HO HO! Today's Saint Nicholas' lucky day!", "Santa");
				global.likeoMeter +=25;
				break;
			case "Santa - Mean":
				callText("Please die.", "Santa");
				break;
		case "Hatman":
			callText("I AM THE HATMAN! I AM IN YOUR BRAINS! I AM IN YOUR DREAMS! I AM YOUR NIGHTMARES!", "Hatman");
			break;
	}
}
