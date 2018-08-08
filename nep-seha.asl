state("Neptune VSSega Hard Girls", "SteamCurrent")
{
	int LDHP_Enemy : 0x4453C8, 0xC, 0xB8, 0x4c;
	string10 LDN_Enemy : 0x4453C8, 0xC, 0xB8, 0xE;
	int Savefile : 0x8DCE94;
	int CurrentQuest : 0x437BD0, 0xD2670;
	int CompletedQuests : 0x437BD0, 0x13D38;
	int BattlesStarted : 0x437BD0, 0xE3C;
	int EnemiesKilled : 0x437BD0, 0xE40;
	short Firstslot : 0x437BD0, 0x10E34;
	short Secondslot : 0x437BD0, 0x10E36;
	short Thirdslot : 0x437BD0, 0x10E38;
	short Fourthslot : 0x437BD0, 0x10E3A;
	string32 Cutscene : 0x437BD0, 0xf6c;
}
startup
{
	print("Autosplitter loading....");
	
	vars.dot = System.Text.Encoding.GetEncoding("utf-8").GetString(new Byte[] { 0x81, 0x45 });
	vars.InitialBattles = -1;
	vars.InitialKilled = -1;
	vars.SplittedForBattles = false;
	vars.questnames = new [] {	// Unused & TE
								"Zero.", "Kill the Time Eater",
								// BEGIN SATURN
								"Saturn & Neptune * Begin", "Saturn & Neptune * Battle", "Segami & Saturn 1", "Segami & Saturn 2",
								"Segami Transforms!", "Rumor Has it...",  "It's Time to Duel!", "Dogoos Are Funny Though", "Elegant Afternoon", "Dangerous Flying Object", "Sega Saturn Replay",
								"Play it again, Nep", "Pumped Up Kicks", "Cultivation Man", "For Science!", "Stepping Stool", "It's Getting Hot In Here", "99 Problems and a Cat is All of Them",
								"No, Seriously, I Need This",
								// END SATURN; BEGIN MEGA DRIVE; index 21
								"Arrived at Mega Drive Era", "On the Road Rash Again", "Mega Drive's Arrival", "Aaahh! Scary Monsters", "What's Next?", "Battle Mega Drive!", "The Real Battle",
								// index 28
								"Mysterious Invaders?", "Dream Machine", "Poisonous Research", "Dragon Collector", "A Face Only Mama Could Love", "I See Ghost People", "Plus Minus",
								// index 35
								"Rad Dad: the Bug Collector", "Hos to Use Magic Suspiciously", "Energy for the Next Generation!", "Urgent Request",
								// END MEGA DRIVE; BEGIN GAME GEAR; index 39
								"Arrive at Game Gear Era", "Party Surrounded", "The Gang Meets Game Gear", "Help Nepgear!", "Followers of Game Gear", "Assistance Completed!", "Angry Believers",
								// index 46
								"Nepgear is Roadkill?", "Fur Ever", "Leaps and Bounds", "The Perfect Gift", "I Want That Doll", "That String", "Give Me Something Good", "More Dangerous Flying Objects",
								// index 54
								"Perfection", "Watchmen", "The Longing...", "My Knight", "Capture the Spy",
								// END GAME GEAR; BEGIN DREAMCAST; index 59
								"Arrive at Dreamcast Era", "Back to Dreamcast Era", "Convince Uzume", "We're Good... For Now", "Visiting Dreamcast", "Visiting Uzume", "Starting Back Up",
								// index 66
								"Pledge Your Allegiance", "This era's enemy is...", "Dreamcast Era * True End", "The Future of Communication", "Defeat the Annoying Monster", "Memories of Hide and Seek",
								// index 72
								"Major Crime?", "Endangered", "Copied Product Acquistion", "Emergency Request", "Everybody Loves Snacks!", "Get Rich Quick", "Kick Your Rivals", "We Didn't Start the Fire (JK)",
								// index 80
								"Gift for partner", "Father's Collection", "Survivor Hunter", "Romantic Dreams",
								// END DREAMCAST; Macarasco Troll Ruin Questline; index 84
								"Explore the Macarasco Troll Ruin!", "Mystery of the Macarasco Troll Ruin!", "Secrets of the Macarasco Troll Ruin!",
								// Toypolis Missions; index 87
								"Toypolis: 1st Expansion Plan", "Toypolis: 2nd Expansion Plan",
								// Medicine Bills; index 89
								"Medicine Bills: Spring", "Medicine Bills: Summer", "Medicine Bills: Fall", "Medicine Bills: Winter",
								// Broken Robot; index 93
								"Broken Robot 1", "Broken Robot 2", "Broken Robot 3", "Broken Robot 4", "Broken Robot 5", "Broken Robot 6",
								// ????; index 99
								"Cultivation Plan 1", "Cultivation Plan 2", "Cultivation Plan 3",
								// ???; index 102
								"Quest 102",
								// Pudding Quests; index 103
								"Supreme Food", "Extraordinary Pudding!", "The Ultimate Expression of Pudding",
								// Class Level Release; index 106
								"Release Class Level: IF (? 106)", "Release Class Level: Neptune (? 107)", "Release Class Level: Plutia (? 108)", "Release Class Level: Nepgear (? 109)",
								// index 110
								"Release Class Level: Uzume", "Release Class Level: Segami (? 111)", "Release Class Level: Mega Drive", "Release Class Level: Sega Saturn", "Release Class Level: Game Gear", "Release Class Level: Dreamcast (? 115)",
								// Skill Slots; index 116
								"Skill Slot: IF 1", "Skill Slot: IF 2", "Skill Slot: Neptune 1", "Skill Slot: Neptune 2", "Skill Slot: Plutia 1", "Skill Slot: Plutia 2", "Skill Slot: Nepgear 1", "Skill Slot: Nepgear 2", "Skill Slot: Uzume 1", "Skill Slot: Uzume 2",
								// index 126
								"Skill Slot: Segami 1", "Skill Slot: Segami 2", "Skill Slot: Mega Drive 1", "Skill Slot: Mega Drive 2", "Skill Slot: Sega Saturn 1", "Skill Slot: Sega Saturn 2", "Skill Slot: Game Gear 1", "Skill Slot: Game Gear 2",
								// index 134
								"Skill Slot: Dreamcast 1", "Skill Slot: Dreamcast 2",
								// New Classes; index 136
								"New Class: IF", "New Class: Neptune", "New Class: Plutia", "New Class: Nepgear", "New Class: Uzume", "New Class: Segami", "New Class: Mega Drive", "New Class: Sega Saturn", "New Class: Game Gear", "New Class: Dreamcast",
								// Ultimate Gear Quests; index 146
								"Neptune VS IF", "Neptune VS Segami", "Neptune VS Neptune", "Neptune VS Sega Saturn", "Neptune VS Plutia", "Neptune VS Mega Drive", "Neptune VS Nepgear", "Neptune VS Game Gear", "Neptune VS Uzume", "Neptune VS Dreamcast",
								// index 156
								"Neptune VS Sega Hard Girls", "IF's Ultimate Equipment", "Neptune's Ultimate Equipment", "Plutia's Ultimate Equipment", "Nepgear's Ultimate Equipment", "Uzume's Ultimate Equipment", "Segami's Ultimate Equipment",
								// index 163
								"Mega Drive's Ultimate Equipment", "Sega Saturn's Ultimate Equipment", "Game Gear's Ultimate Equipment", "Dreamcast's Ultimate Equipment"
								};
	
	settings.Add("tedeath", true, "Split on Time Eater Death");
	
	settings.Add("startnewgame", false, "Start on New Game (use 0.39 Timer start)");
	
	settings.Add("notfirstfile", true, "I am not using the first Savefile");
	settings.Add("startonfile", true, "Start Timer upon loading a Savefile", "notfirstfile");
	
	settings.Add("twobattlesdone", false, "Split after killing 7 enemies in two fights after loading a file", "startonfile");
	settings.SetToolTip("twobattlesdone", "Alternate Tutorial Dungeon Split, may not like saving/loading during a run.");
	
	// Quest sections
	settings.Add("quests", true, "Split with Quests");
	
	settings.Add("splitafterquestreport", true, "Split after a specific Quest has been reported", "quests");
	settings.Add("splitafterquestretire", false, "Split after a specific Quest has been retired", "quests");
	settings.Add("splitafterquestaccept", false, "Split after a specific Quest has been accepted", "quests");
	
		settings.Add("questssaturn", true, "Saturn Era", "splitafterquestreport");
	
		settings.Add("questsmd", false, "Mega Drive Era", "splitafterquestreport");
	
		settings.Add("questsgg", false, "Game Gear Era", "splitafterquestreport");
		
		settings.Add("questsdc", false, "Dreamcast Era", "splitafterquestreport");
		
		settings.Add("questsmtr", false, "Macarasco Troll Ruin", "splitafterquestreport");
		
		settings.Add("queststp", false, "Toypolis", "splitafterquestreport");
		
		settings.Add("questsmb", false, "Medicine Bills", "splitafterquestreport");
		
		settings.Add("questsbr", false, "Broken Robot", "splitafterquestreport");
		
		settings.Add("questscp", false, "Cultivation Plan", "splitafterquestreport");
		
		settings.Add("questspudding", false, "Pudding", "splitafterquestreport");
		
		settings.Add("questsclr", false, "Class Level Release", "splitafterquestreport");
		
		settings.Add("questsss", false, "Skill Slots", "splitafterquestreport");
		
		settings.Add("questscu", false, "Class unlocks", "splitafterquestreport");
		
		settings.Add("questsug", false, "Ultimate Gear", "splitafterquestreport");
		
		settings.Add("questsother", false, "Other/Unknown", "splitafterquestreport");
		
		
		
		settings.Add("retirequestssaturn", false, "Saturn Era", "splitafterquestretire");
	
		settings.Add("retirequestsmd", false, "Mega Drive Era", "splitafterquestretire");
	
		settings.Add("retirequestsgg", false, "Game Gear Era", "splitafterquestretire");
		
		settings.Add("retirequestsdc", false, "Dreamcast Era", "splitafterquestretire");
		
		settings.Add("retirequestsmtr", false, "Macarasco Troll Ruin", "splitafterquestretire");
		
		settings.Add("retirequeststp", false, "Toypolis", "splitafterquestretire");
		
		settings.Add("retirequestsmb", false, "Medicine Bills", "splitafterquestretire");
		
		settings.Add("retirequestsbr", false, "Broken Robot", "splitafterquestretire");
		
		settings.Add("retirequestscp", false, "Cultivation Plan", "splitafterquestretire");
		
		settings.Add("retirequestspudding", false, "Pudding", "splitafterquestretire");
		
		settings.Add("retirequestsclr", false, "Class Level Release", "splitafterquestretire");
		
		settings.Add("retirequestsss", false, "Skill Slots", "splitafterquestretire");
		
		settings.Add("retirequestscu", false, "Class unlocks", "splitafterquestretire");
		
		settings.Add("retirequestsug", false, "Ultimate Gear", "splitafterquestretire");
		
		settings.Add("retirequestsother", false, "Other/Unknown", "splitafterquestretire");
		
		
		settings.Add("acceptquestssaturn", false, "Saturn Era", "splitafterquestaccept");
	
		settings.Add("acceptquestsmd", false, "Mega Drive Era", "splitafterquestaccept");
	
		settings.Add("acceptquestsgg", false, "Game Gear Era", "splitafterquestaccept");
		
		settings.Add("acceptquestsdc", false, "Dreamcast Era", "splitafterquestaccept");
		
		settings.Add("acceptquestsmtr", false, "Macarasco Troll Ruin", "splitafterquestaccept");
		
		settings.Add("acceptqueststp", false, "Toypolis", "splitafterquestaccept");
		
		settings.Add("acceptquestsmb", false, "Medicine Bills", "splitafterquestaccept");
		
		settings.Add("acceptquestsbr", false, "Broken Robot", "splitafterquestaccept");
		
		settings.Add("acceptquestscp", false, "Cultivation Plan", "splitafterquestaccept");
		
		settings.Add("acceptquestspudding", false, "Pudding", "splitafterquestaccept");
		
		settings.Add("acceptquestsclr", false, "Class Level Release", "splitafterquestaccept");
		
		settings.Add("acceptquestsss", false, "Skill Slots", "splitafterquestaccept");
		
		settings.Add("acceptquestscu", false, "Class unlocks", "splitafterquestaccept");
		
		settings.Add("acceptquestsug", false, "Ultimate Gear", "splitafterquestaccept");
		
		settings.Add("acceptquestsother", false, "Other/Unknown", "splitafterquestaccept");
		
	

	// QUESTS
	for (int i=2;i<=20;i++)
	{
		settings.Add("splitafter" + i, (i==9 || i==11), vars.questnames[i], "questssaturn");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestssaturn");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestssaturn");
	}
	for (int i=21;i<=38;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questsmd");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestsmd");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestsmd");
	}
	for (int i=39;i<=58;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questsgg");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestsgg");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestsgg");
	}
	for (int i=59;i<=83;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questsdc");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestsdc");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestsdc");
	}
	for (int i=84;i<=86;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questsmtr");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestsmtr");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestsmtr");
	}
	for (int i=87;i<=88;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "queststp");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequeststp");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptqueststp");
	}
	for (int i=89;i<=92;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questsmb");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestsmb");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestsmb");
	}
	for (int i=93;i<=98;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questsbr");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestsbr");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestsbr");
	}
	for (int i=99;i<=101;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questscp");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestscp");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestscp");
	}
	settings.Add("splitafter102", false, vars.questnames[102], "questsother");
	settings.Add("splitafter102retire", false, vars.questnames[102], "retirequestsother");
	settings.Add("splitafter102accept", false, vars.questnames[102], "acceptquestsother");
	for (int i=103;i<=105;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questspudding");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestspudding");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestspudding");
	}
	for (int i=106;i<=115;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questsclr");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestsclr");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestsclr");
	}
	for (int i=116;i<=135;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questsss");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestsss");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestsss");
	}
	for (int i=136;i<=145;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questscu");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestscu");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestscu");
	}
	for (int i=146;i<=166;i++)
	{
		settings.Add("splitafter" + i, false, vars.questnames[i], "questsug");
		settings.Add("splitafter" + i + "retire", false, vars.questnames[i], "retirequestsug");
		settings.Add("splitafter" + i + "accept", false, vars.questnames[i], "acceptquestsug");
	}
	
	// Cutscenes
	settings.Add("cutscenes", true, "Split with Cutscene");
	
	settings.Add("Explore Library Cont.", true, "Explore Library Cont.", "cutscenes");
	settings.SetToolTip("Explore Library Cont.", "Tutorial Fights Split");
	
	settings.Add("Neptune Falls", true, "Neptune Falls", "cutscenes");
	settings.SetToolTip("Neptune Falls", "Saturn First Visit Split");
	
	settings.Add("Segami Transforms", true, "Segami Tranforms", "cutscenes");
	settings.SetToolTip("Segami Transforms", "Block Dungeon Split");
	
	settings.Add("It's Time to Duel", true, "It's Time to Duel", "cutscenes");
	settings.SetToolTip("It's Time to Duel", "Nepbike Split");
	
	settings.Add("Observation Complete", true, "Observation Complete", "cutscenes");
	settings.SetToolTip("Observation Complete", "'Menuing' Split after Retiring all remaining missions");
	
	settings.Add("Defeated by Time Eater", false, "Defeated by Time Eater", "cutscenes");
	settings.SetToolTip("Defeated by Time Eater", "Die to Bad End Time Eater Battle");
	
	settings.Add("Convince Dreamcast", false, "Convince Dreamcast", "cutscenes");
	settings.SetToolTip("Convince Dreamcast", "defeat Dreamcast 1");
	
	settings.Add("Discord with Mega Drive", false, "Discord with Mega Drive", "cutscenes");
	settings.SetToolTip("Discord with Mega Drive", "defeat Mega Drive 1");
	
	settings.Add("Plutia Transforms", false, "Plutia Transforms", "cutscenes");
	settings.SetToolTip("Plutia Transforms", "defeat the \"Scary Monsters\"");
	
	settings.Add("Post-Battle", false, "Post-Battle", "cutscenes");
	settings.SetToolTip("Post-Battle", "defeat Mega Drive 2");
	
	settings.Add("Side with Neptune" + vars.dot + "Victory", false, "Side with Neptune・Victory", "cutscenes");
	settings.SetToolTip("Side with Neptune" + vars.dot + "Victory", "defeat Saturn 1 (correct choice, 1st branch)");
	
	settings.Add("Side with Saturn", false, "Side with Saturn", "cutscenes");
	settings.SetToolTip("Side with Saturn", "defeat Purple Heart (wrong choice, 1st branch)");
	
	settings.Add("Nothing's Changed", false, "Nothing's Changed", "cutscenes");
	settings.SetToolTip("Nothing's Changed", "defeat Uzume (correct choice, 2nd branch) OR Dreamcast 2 (wrong choice, 2nd branch)");
	
	settings.Add("Saturn Era" + vars.dot + "True End", false, "Saturn Era・True End", "cutscenes");
	settings.SetToolTip("Saturn Era" + vars.dot + "True End", "defeat Saturn 2");
	
	settings.Add("Mega Drive Era " + vars.dot + "True End", false, "Mega Drive Era ・True End", "cutscenes");
	settings.SetToolTip("Mega Drive Era " + vars.dot + "True End", "defeat Iris Heart");
	
	settings.Add("Defeat Traitor!", false, "Defeat Traitor!", "cutscenes");
	settings.SetToolTip("Defeat Traitor!", "defeat TE Seeds");
	
	settings.Add("Game Gear Era" + vars.dot + "True End", false, "Game Gear Era・True End", "cutscenes");
	settings.SetToolTip("Game Gear Era" + vars.dot + "True End", "defeat TE Sprouts");
	
	print("Startup complete! CREDITS: Marenthyu <marenthyu@marenthyu.de>, Dabomstew");
    
    vars.gameConnected = false;
	
}
init
{

	print("Game found!");
    print("module size: " + modules.First().ModuleMemorySize);
    
    if (modules.First().ModuleMemorySize == 10551296) {
		print("Found and confirmed Steam Version 05.22.2018 Patch");
		version = "SteamCurrent";
		vars.gameConnected = true;
	}
	else {
		print("Unrecognized game version. Disabling functionality.");
		vars.gameConnected = false;
	}

}
exit
{
	vars.gameConnected = false;
}
split
{
    if(!vars.gameConnected)
	{
		return false;
	}
    
	//print("Last enemy defending: " + current.LDN_Enemy + " with " + current.LDHP_Enemy + "HP");
	if (settings["tedeath"] && ((current.CurrentQuest != 46) && (old.LDN_Enemy != null && current.LDN_Enemy != null) && (current.LDN_Enemy.Equals("Time Eater")) && (old.LDN_Enemy.Equals(current.LDN_Enemy)) && (old.LDHP_Enemy > 0 && current.LDHP_Enemy == 0)))
	{
		print("Enemy " + current.LDN_Enemy + " Died! Splitting! - Quest was " + current.CurrentQuest);
		return true;
	}
	
	// Current Quest changed
	if (settings["quests"])
	{
		if (old.CurrentQuest != current.CurrentQuest) {
			// split if set quest got reported
			if (settings["splitafterquestreport"] && (current.CompletedQuests - old.CompletedQuests == 1)  && settings["splitafter" + old.CurrentQuest])
			{
				print("Quest reported: " + old.CurrentQuest);
				return true;
			} // split if set quest got retired
			else if (settings["splitafterquestretire"] && (current.CompletedQuests - old.CompletedQuests == 0) && (old.CurrentQuest != 0) && settings["splitafter" + old.CurrentQuest + "retire"])
			{
				print("Quest retired: " + old.CurrentQuest);
				return true;
			} else if (settings["splitafterquestaccept"] && (current.CompletedQuests - old.CompletedQuests == 0) && (current.CurrentQuest != 0) && settings["splitafter" + current.CurrentQuest + "accept"]) {
				print("quest accepted: " + current.CurrentQuest);
				return true;
			}
		}
	}
	if (settings["notfirstfile"] && settings["startonfile"])
	{
		// split for second battle
		if (settings["twobattlesdone"] && !vars.SplittedForBattles && (current.BattlesStarted - vars.InitialBattles == 2) && (current.EnemiesKilled - vars.InitialKilled == 7))
		{
			print("Second battle split");
			vars.SplittedForBattles = true;
			return true;
		}
		
	}
	
	// split for cutscene
	if (settings["cutscenes"])
	{
		try {
			if (!current.Cutscene.Equals(old.Cutscene) && settings[current.Cutscene])
			{
				return true;
			}
		} catch {}
	}
}
update
{
    if(!vars.gameConnected)
	{
		return false;
	}
    
	if (settings["twobattlesdone"] && (vars.InitialBattles == -1 && !current.Cutscene.Equals(old.Cutscene)))
	{
		print("Initial Battles had not been initialized.");
		vars.InitialKilled = current.EnemiesKilled;
		vars.InitialBattles = current.BattlesStarted;
		print("Corrected to " + vars.InitialKilled + " enemies and " + vars.InitialBattles + " Battles.");
	}
}
start
{
    if(!vars.gameConnected)
	{
		return false;
	}
    
	// New Game
	if (settings["startnewgame"] && current.Cutscene.Equals("New Game"))
	{
		return true;
	}

	// File load
	if ((settings["startnewgame"] && current.Cutscene.Equals("New Game")) || (settings["notfirstfile"] && settings["startonfile"] && old.Savefile == 0 && (current.Savefile > 0 && current.Savefile < 50)))
	{
			if (settings["twobattlesdone"])
			{
				vars.InitialBattles = -1;
				vars.SplittedForBattles = false;
				vars.InitialKilled = -1;
			}
			return true;
	}
}
