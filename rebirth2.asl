state("NeptuniaRebirth2", "Steam")
{
	int SaveBlock : 0x429060;
	string64 Cutscene : 0x429060, 0xEEC;
	int EnemyBookSize : 0x429060, 0x783F4;
	int InventorySize : 0x429060, 0xCA4C;
	byte PlaneptuneShares : 0x429060, 0xF1C;
	byte LeanboxShares : 0x429060, 0xF20;
	byte LastationShares : 0x429060, 0xF24;
	byte LoweeShares : 0x429060, 0xF28;
	int LDHP_Enemy : 0x4371A0, 0xC, 0xA0, 0x40;
	int LDN_Enemy : 0x4371A0, 0xC, 0xA0, 0x8;
}
state("NeptuniaRebirth2", "GoG")
{
	int SaveBlock : 0x424F60;
	string64 Cutscene : 0x424F60, 0xEEC;
	int EnemyBookSize : 0x424F60, 0x783F4;
	int InventorySize : 0x424F60, 0xCA4C;
	byte PlaneptuneShares : 0x424F60, 0xF1C;
	byte LeanboxShares : 0x424F60, 0xF20;
	byte LastationShares : 0x424F60, 0xF24;
	byte LoweeShares : 0x424F60, 0xF28;
	int LDHP_Enemy : 0x4330A0, 0xC, 0xA0, 0x40;
	int LDN_Enemy : 0x4330A0, 0xC, 0xA0, 0x8;
}
startup
{
	print("Autosplitter loading....");
	
	settings.Add("startnewgame", true, "Start on New Game");
	settings.SetToolTip("startnewgame", "Start on New Game select - use timer offset 0.66");
	
	settings.Add("startngplus", false, "Start on New Game Plus");
	settings.SetToolTip("startngplus", "Start on New Game Plus file load - use timer offset 3.83");
	
	settings.Add("killenemies", true, "Kill Enemies");
	
	settings.Add("viraltulips", true, "Kill 4 Viral Tulips", "killenemies");
	settings.Add("metalshell", true, "Kill 1 Metal Shell (storyline enemy, first Disc materials)", "killenemies");
	settings.Add("dosdeath", true, "Deity Of Sin Arfoire (Normal)", "killenemies");
	settings.SetToolTip("dosdeath", "End Split, times on last boss hit.");
	settings.Add("dosdeathcq", true, "Deity Of Sin Arfoire (Conquest)", "killenemies");
	settings.SetToolTip("dosdeathcq", "End Split, times on last boss hit.");
	settings.Add("dosdeathholy", false, "Deity Of Sin Arfoire (Holy Sword)", "killenemies");
	settings.SetToolTip("dosdeathholy", "End Split, times on last boss hit of second form.");
	settings.Add("truedeath", false, "True Arfoire (True Ending)", "killenemies");
	settings.SetToolTip("truedeath", "End Split, times on last boss hit of second form.");
	
	settings.Add("items", true, "Split when acquiring certain items");
	
	
	settings.Add("spiderwebs", true, "Acquire 2 Spider Webs", "items");
	settings.Add("d60Mats", true, "Get Darkness 60 Materials", "items");
	settings.Add("colosseum", true, "Get colosseum", "items");
	
	settings.Add("sagitems", true, "Symbol Attack Gains Item Splits", "items");
	
	settings.Add("rebeatAE", false, "Rebeat Resort Add Enemies Materials", "sagitems");
	settings.Add("midcompanyAE", false, "Midcompany Add Enemies Materials", "sagitems");
	settings.Add("midcompanyCD", false, "Midcompany Change Dungeon Materials", "sagitems");
	settings.Add("lgeCD", false, "Lowee Global Expo Change Dungeon Materials", "sagitems");
	settings.Add("graveyardAE", false, "Gamindustri Graveyard Add Enemies Materials", "sagitems");
	settings.Add("sag", false, "Symbol Attack Gains Plan", "sagitems");
	settings.Add("woodshell", false, "Wood Shell", "sagitems");
	
	settings.Add("slowrefreshonitems", false, "Slow Refresh Rate w/ Items");
	settings.SetToolTip("slowrefreshonitems", "Slow down the refresh rate while inventory-related splits are being tested to reduce CPU usage.");
	
	// Shares
	settings.Add("shares", true, "Split with Shares");
	
	settings.Add("leanbox50", true, "Split on 50% Leanbox Shares", "shares");
	settings.Add("lowee50", true, "Split on 50% Lowee Shares", "shares");
	settings.Add("lastation50", true, "Split on 50% Lastation Shares", "shares");
	settings.Add("planeptune55", true, "Split on 55% Planeptune Shares", "shares");
	settings.Add("all15", false, "All Nations 15% Shares", "shares");
	settings.SetToolTip("all15", "Split when all nations have 15% shares *after* you get 50% Lastation/Lowee/Leanbox.");
	
	
	// Cutscenes
	settings.Add("cutscenes", true, "Split with Cutscene");
	
	// Chapter 1
	settings.Add("ch1", true, "Chapter 1", "cutscenes");
	
	settings.Add("Ch. 1 - Nepgear's Slump", true, "Kill Grandogoo for the first time", "ch1");
	
	settings.Add("Ch. 1 - Item Development", true, "Ch. 1 - Item Development", "ch1");
	settings.SetToolTip("Ch. 1 - Item Development", "CS After handing in First 2 quests");
	
	settings.Add("Ch. 1 - Planeptune's Mascot", true, "Killed Linda", "ch1");
	settings.SetToolTip("Ch. 1 - Planeptune's Mascot", "Underling. But her real name is Linda. Be nice to her.");
	
	// Chapter 2
	settings.Add("ch2", true, "Chapter 2", "cutscenes");
	
	settings.Add("Ch. 2 - The Crossroads of Defeat", false, "Begin Chapter 1", "ch2");
	
	settings.Add("Ch. 2 - Good-bye, Uni", true, "Killed Linda. For the second time.", "ch2");
	settings.SetToolTip("Ch. 2 - Good-bye, Uni", "Uni leaves. <sadface>");
	
	settings.Add("Ch. 2 - The Great Wifey Hunt!?", true, "Killed Ancient Dragon", "ch2");
	settings.SetToolTip("Ch. 2 - The Great Wifey Hunt!?", "Another Boss down.");
	
	settings.Add("Ch. 2 - New Friend", true, "Killed M3 Customs", "ch2");
	settings.SetToolTip("Ch. 2 - New Friend", "Too many bosses");
	
	settings.Add("Ch. 2 - Warechu", true, "Killed Sea Hunter", "ch2");
	
	settings.Add("Ch. 2 - Underling - 0, Party - 2", true, "Killed Tae Kwon Cats", "ch2");
	
	settings.Add("Ch. 2 - Uni's Defeat", true, "Killed Uni", "ch2");
	
	settings.Add("Ch. 2 - Warechu Defeated", true, "Killed Warechu 1", "ch2");
	
	settings.Add("Ch. 2 - Lowee's Twins", false, "Before Underling 3 Fight (Menuing Split)", "ch2");
	
	settings.Add("Ch. 2 - Rom and Ram", true, "Killed Linda for the 3rd Time", "ch2");
	
	settings.Add("Ch. 2 - Rom and Ram Safe", true, "Killed Rom+Ram", "ch2");
	
	settings.Add("Ch. 2 - Killachine Revival", true, "Icy Hedgehogs", "ch2");
	
	settings.Add("Ch. 2 - Let's Ditch!", true, "Killed Killachine 1", "ch2");
	
	settings.Add("Ch. 2 - Got the Materials!", true, "Killed Dr. Kawashina", "ch2");
	settings.SetToolTip("Ch. 2 - Got the Materials!", "Lowee Gathering Mission completed");
	
	settings.Add("Ch. 2 - Killachine Defeated!", true, "Killed Killachine 2", "ch2");
	
	settings.Add("Ch. 2 - CPU Breaker Defeated", true, "Killed CPU Breaker", "ch2");
	
	settings.Add("Ch. 2 - Gathered Materials", true, "Ch. 2 - Gathered Materials", "ch2");
	settings.SetToolTip("Ch. 2 - Gathered Materials", "Hand in Boat Parts to enter Leanbox");
	
	settings.Add("Ch. 2 - Underling Retaliates", true, "Killed Underling+Warechu", "ch2");
	
	settings.Add("Ch. 2 - Report to Chika", true, "Round 2", "ch2");
	
	// Chapter 3
	settings.Add("ch3", true, "Chapter 3", "cutscenes");
	
	settings.Add("Ch. 3 - A Divine Hunger", false, "Start Chapter 3", "ch3");
	
	settings.Add("Ch. 3 - Easy Win", true, "Killed Ryu-o", "ch3");
	
	settings.Add("Ch. 3 - Washed Up Rat", true, "Killed Warechu Solo", "ch3");
	
	settings.Add("Ch. 3 - CFW Trick", true, "Killed Rom+Ram 2", "ch3");
	
	settings.Add("Ch. 3 - CFW Trick Defeated", true, "Killed CFW Trick", "ch3");
	
	settings.Add("Ch. 3 - CFW Brave", true, "Killed CFW Brave", "ch3");
	
	// Chapter 4
	settings.Add("ch4", true, "Chapter 4", "cutscenes");
	
	settings.Add("Ch. 4 - Goddess Awakening", false, "Start Chapter 4", "ch4");
	
	settings.Add("Ch. 4 - Judged Again", false, "Start CFW Judge Fight", "ch4");
	settings.SetToolTip("Ch. 4 - Judged Again", "Menuing split");
	
	settings.Add("Ch. 4 - CPUs Rescued", true, "Killed CFW Judge", "ch4");
	
	// Chapter 5
	settings.Add("ch5", true, "Chapter 5", "cutscenes");
	
	settings.Add("Ch. 5 - CPU Support", true, "Lose to CFW Magic", "ch5");
	
	settings.Add("Ch. 5 - Giant Warechu Defeated!", true, "Killed Venomous Warechu", "ch5");
	
	settings.Add("Ch. 5 - CFW Brave, Again", true, "Killed Linda 9999", "ch5");
	
	settings.Add("Ch. 5 - An Inherited Will", true, "Killed CFW Brave", "ch5");
	
	settings.Add("Ch. 5 - No Regrets", true, "Killed CFW Trick 2", "ch5");
	
	settings.Add("Ch. 5 - Deity of Sin Revives", true, "Killed CFW Magic", "ch5");
	
	// Conquest
	settings.Add("cq", true, "Conquest", "cutscenes");
	
	settings.Add("Apocalypse - Noire's Farewell", false, "Preparations", "cq");
	settings.SetToolTip("Apocalypse - Noire's Farewell", "Menuing split, splits when watching Noire Cutscene");
	
	settings.Add("Apocalypse - Loss", true, "Lastation Fight Done", "cq");
	
	settings.Add("Apocalypse - Don't Wanna Die", true, "Lowee Fight Done", "cq");
	
	settings.Add("Apocalypse - Vert in Danger", true, "Killed Vert", "cq");
	
	settings.Add("Apocalypse - No Dying in Vain", true, "Killed Linda. Finally.", "cq");
	
	// Holy Sword
	settings.Add("hsq", true, "Holy Sword", "cutscenes");
	
	settings.Add("Apocalypse - Cursed Sword Crushed", false, "Defeat Noire and Uni", "hsq");
	settings.Add("Apocalypse - Warrior's Finale", false, "Kill CFW Brave", "hsq");
	settings.Add("Apocalypse - Perverse Finale", false, "Kill CFW Trick", "hsq");
	settings.Add("Apocalypse - Berserk Finale", false, "Kill CFW Judge", "hsq");
	settings.Add("Apocalypse - Gamindustri's Hope", false, "Kill CFW Magic", "hsq");
	settings.Add("Apocalypse - Gleam of the Holy Sword", false, "Kill First Phase DoS Arfoire", "hsq");
	
	// True End
	settings.Add("trueq", true, "True End", "cutscenes");
	
	settings.Add("Ch. 6 - Vessel Destroyed", false, "Defeat Normal End final boss and enter True End path", "trueq");
	settings.Add("Ch. 7 - Bond of Beliefs", false, "Kill resurrected Brave", "trueq");
	settings.Add("Ch. 7 - CFW Judge Destroyed", false, "Kill resurrected Judge", "trueq");
	settings.Add("Ch. 7 - Nightmare's End", false, "Kill resurrected Trick", "trueq");
	settings.Add("Ch. 7 - Battle of Fate", false, "Kill resurrected Magic", "trueq");
	settings.Add("Final - All-Time Losers", false, "Defeat the All-Time Losers (Underling & Warechu)", "trueq");
	settings.Add("Final - Nepgear VS. True Arfoire", false, "Defeat first phase of True Arfoire", "trueq");
	
	vars.gameConnected = false;
	vars.timerJustStarted = false;
	vars.timer_OnStart = (EventHandler)((s, e) =>
	{
		vars.timerJustStarted = true;
	});
	timer.OnStart += vars.timer_OnStart;
	
	print("Startup complete! CREDITS: Marenthyu <marenthyu@marenthyu.de>, Dabomstew");
	
}
shutdown
{
	timer.OnStart -= vars.timer_OnStart;
}
init
{

	print("Game found!");
	print("module size: " + modules.First().ModuleMemorySize);
	
	if (modules.First().ModuleMemorySize == 10620928) {
		print("Found and confirmed GoG Version");
		version = "GoG";
		vars.gameConnected = true;
	}
	else if (modules.First().ModuleMemorySize == 10637312) {
		print("Found and confirmed Steam Version 05.18.2018 Patch");
		version = "Steam";
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
update
{
	if(!vars.gameConnected)
	{
		return false;
	}
	
	if(vars.timerJustStarted) {
		vars.slowRefresh = false;
		refreshRate = 60;
		vars.itemSplitsHit = 0;
		vars.itemSplitsActive = 0;
		vars.enemySplitsHit = 0;
		vars.enemySplitsActive = 0;
		
		vars.tulipsSplit = false;
		vars.shellSplit = false;
		vars.arfSplitNormal = false;
		vars.arfSplitConquest = false;
		vars.arfSplitHoly = false;
		vars.arfSplitTrue = false;
		
		vars.websSplit = false;
		vars.d60Mats = false;
		vars.colosseum = false;
		vars.rebeatAE = false;
		vars.midcompanyAE = false;
		vars.midcompanyCD = false;
		vars.lgeCD = false;
		vars.graveyardAE = false;
		vars.sag = false;
		vars.woodshell = false;
		
		vars.leanboxSharesSplit = false;
		vars.loweeSharesSplit = false;
		vars.lastationSharesSplit = false;
		vars.planeptuneSharesSplit = false;
		vars.allSharesSplit = false;
		
		// count item splits
		vars.itemSplitsActive += settings["spiderwebs"] ? 1 : 0;
		vars.itemSplitsActive += settings["d60Mats"] ? 1 : 0;
		vars.itemSplitsActive += settings["colosseum"] ? 1 : 0;
		vars.itemSplitsActive += settings["rebeatAE"] ? 1 : 0;
		vars.itemSplitsActive += settings["midcompanyAE"] ? 1 : 0;
		vars.itemSplitsActive += settings["midcompanyCD"] ? 1 : 0;
		vars.itemSplitsActive += settings["lgeCD"] ? 1 : 0;
		vars.itemSplitsActive += settings["graveyardAE"] ? 1 : 0;
		vars.itemSplitsActive += settings["woodshell"] ? 1 : 0;
		
		// count enemy splits
		vars.enemySplitsActive += settings["viraltulips"] ? 1 : 0;
		vars.enemySplitsActive += settings["metalshell"] ? 1 : 0;
		vars.enemySplitsActive += settings["dosdeath"] ? 1 : 0;
		vars.enemySplitsActive += settings["dosdeathcq"] ? 1 : 0;
		vars.enemySplitsActive += settings["dosdeathholy"] ? 1 : 0;
		vars.enemySplitsActive += settings["truedeath"] ? 1 : 0;
		
		// read initial kill values
		vars.initialKills = new short[5009]; // highest enemy id is 5008
		byte[] enemyBook = memory.ReadBytes((System.IntPtr) (current.SaveBlock + 0x783F8), (int) (current.EnemyBookSize*8));
		for(int i = 0; i < current.EnemyBookSize; i++) {
			vars.initialKills[BitConverter.ToInt16(enemyBook, i*8)] = BitConverter.ToInt16(enemyBook, i*8 + 4);
		}
		vars.timerJustStarted = false;
	}
}
split
{
	if(vars.timerJustStarted) {
		// edge case, don't try anything this cycle
		return false;
	}
	// split for cutscene
	if (settings["cutscenes"])
	{
		try {
			if (!current.Cutscene.Equals(old.Cutscene) && settings[current.Cutscene])
			{
				print("Split for " + current.Cutscene + " Cutscene.");
				return true;
			}
		} catch {}
	}
	
	// split for shares
	if(settings["shares"])
	{
		if(settings["leanbox50"] && current.LeanboxShares >= 50 && !vars.leanboxSharesSplit) {
			vars.leanboxSharesSplit = true;
			print("Split for Leanbox Shares >= 50%");
			return true;
		}
		if(settings["lowee50"] && current.LoweeShares >= 50 && !vars.loweeSharesSplit) {
			vars.loweeSharesSplit = true;
			print("Split for Lowee Shares >= 50%");
			return true;
		}
		if(settings["lastation50"] && current.LastationShares >= 50 && !vars.lastationSharesSplit) {
			vars.lastationSharesSplit = true;
			print("Split for Lastation Shares >= 50%");
			return true;
		}
		if(settings["planeptune55"] && current.PlaneptuneShares >= 55 && !vars.planeptuneSharesSplit) {
			vars.planeptuneSharesSplit = true;
			print("Split for Planeptune Shares >= 55%");
			return true;
		}
		if(settings["all15"] && vars.lastationSharesSplit && vars.loweeSharesSplit && vars.leanboxSharesSplit && !vars.allSharesSplit && current.PlaneptuneShares >= 15 && current.LastationShares >= 15 && current.LoweeShares >= 15 && current.LeanboxShares >= 15) {
			vars.allSharesSplit = true;
			print("Split for all shares >= 15%");
			return true;
		}
	}
	
	// split for enemy kills
	if(vars.enemySplitsHit < vars.enemySplitsActive) {
		byte[] enemyBook = memory.ReadBytes((System.IntPtr) (current.SaveBlock + 0x783F8), (int) (current.EnemyBookSize*8));
		for(int i = 0; i < current.EnemyBookSize; i++) {
			short enemyID = BitConverter.ToInt16(enemyBook, i*8);
			int kills = BitConverter.ToInt16(enemyBook, i*8 + 4) - vars.initialKills[enemyID];
			if(settings["viraltulips"] && !vars.tulipsSplit && enemyID == 1003 && kills >= 4) {
				vars.tulipsSplit = true;
				vars.enemySplitsHit++;
				print("Split for viral Tulips");
				return true;
			}
			else if(settings["metalshell"] && !vars.shellSplit && enemyID == 1018 && kills > 0) {
				vars.shellSplit = true;
				vars.enemySplitsHit++;
				print("Split for Metal Shell");
				return true;
			}
			else if(settings["dosdeath"] && !vars.arfSplitNormal && enemyID == 1039 && kills > 0) {
				vars.arfSplitNormal = true;
				vars.enemySplitsHit++;
				print("Split for Normal Ending DoS Arfoire");
				return true;
			}
			else if(settings["dosdeathcq"] && !vars.arfSplitConquest && enemyID == 1055 && kills > 0) {
				vars.arfSplitConquest = true;
				vars.enemySplitsHit++;
				print("Split for Conquest Ending DoS Arfoire");
				return true;
			}
			else if(settings["dosdeathholy"] && !vars.arfSplitHoly && enemyID == 1062 && kills > 0) {
				vars.arfSplitHoly = true;
				vars.enemySplitsHit++;
				print("Split for Holy Sword Ending DoS Arfoire second phase");
				return true;
			}
			else if(settings["truedeath"] && !vars.arfSplitTrue && enemyID == 1047 && kills > 0) {
				vars.arfSplitTrue = true;
				vars.enemySplitsHit++;
				print("Split for True Ending True Arfoire second phase");
				return true;
			}
		}
	}
	
	// Acquire Items

	if(vars.itemSplitsHit < vars.itemSplitsActive) {
		if(settings["slowrefreshonitems"] && !vars.slowRefresh) {
			refreshRate = 20;
			vars.slowRefresh = true;
		}
		int d60ItemCount = 0;
		int rebeatAEItemCount = 0;
		int midcompanyAEItemCount = 0;
		int midcompanyCDItemCount = 0;
		int graveyardAEItemCount = 0;
		byte[] inventory = memory.ReadBytes((System.IntPtr) (current.SaveBlock + 0xCA50), (int) (current.InventorySize*4));
		for(int i = 0; i < current.InventorySize; i++) {
			short itemID = BitConverter.ToInt16(inventory, i*4);
			byte amount = inventory[i*4 + 2];
			if(itemID == 919 && settings["spiderwebs"] && !vars.websSplit && amount >= 2) {
				vars.websSplit = true;
				vars.itemSplitsHit++;
				print("Split for Spider Webs");
				return true;
			}
			else if ((itemID == 906 || itemID == 805) && settings["d60Mats"] && !vars.d60Mats && amount >= 2) {
				d60ItemCount++;
			}
			else if (itemID == 652 && settings["colosseum"] && !vars.colosseum) {
				vars.colosseum = true;
				vars.itemSplitsHit++;
				print("Split for getting colosseum");
				return true;
			}
			else if (settings["rebeatAE"] && !vars.rebeatAE && ((itemID == 871 && amount >= 2) || (itemID == 813 && amount >= 2) || (itemID == 965))) {
				rebeatAEItemCount++;
			}
			else if (settings["midcompanyAE"] && !vars.midcompanyAE && ((itemID == 897 && amount >= 2) || (itemID == 835 && amount >= 2) || (itemID == 984) || (itemID == 802 && amount >= 3))) {
				midcompanyAEItemCount++;
			}
			else if (settings["midcompanyCD"] && !vars.midcompanyCD && ((itemID == 913 && amount >= 2) || (itemID == 907 && amount >= 2))) {
				midcompanyCDItemCount++;
			}
			else if (settings["lgeCD"] && !vars.lgeCD && itemID == 950 && amount >= 5) {
				vars.lgeCD = true;
				vars.itemSplitsHit++;
				print("Split for Lowee Global Expo Change Dungeon");
				return true;
			}
			else if (settings["graveyardAE"] && !vars.graveyardAE && ((itemID == 877 && amount >= 4) || (itemID == 951 && amount >= 3))) {
				graveyardAEItemCount++;
			}
			else if (itemID == 650 && settings["sag"] && !vars.sag) {
				vars.sag = true;
				vars.itemSplitsHit++;
				print("Split for getting Symbol Attack Gains");
				return true;
			}
			else if (itemID == 988 && settings["woodshell"] && !vars.woodshell) {
				vars.woodshell = true;
				vars.itemSplitsHit++;
				print("Split for getting Wood Shell");
				return true;
			}
		}
		if (settings["d60Mats"] && d60ItemCount == 2 && !vars.d60Mats) {
			vars.d60Mats = true;
			vars.itemSplitsHit++;
			print("Split for d60Mats");
			return true;
		}
		if (settings["rebeatAE"] && rebeatAEItemCount == 3 && !vars.rebeatAE) {
			vars.rebeatAE = true;
			vars.itemSplitsHit++;
			print("Split for Rebeat Resort Add Enemies");
			return true;
		}
		if (settings["midcompanyAE"] && midcompanyAEItemCount == 4 && !vars.midcompanyAE) {
			vars.midcompanyAE = true;
			vars.itemSplitsHit++;
			print("Split for Midcompany Add Enemies");
			return true;
		}
		if (settings["midcompanyCD"] && midcompanyCDItemCount == 2 && !vars.midcompanyCD) {
			vars.midcompanyCD = true;
			vars.itemSplitsHit++;
			print("Split for Midcompany Change Dungeon");
			return true;
		}
		if (settings["graveyardAE"] && graveyardAEItemCount == 2 && !vars.graveyardAE) {
			vars.graveyardAE = true;
			vars.itemSplitsHit++;
			print("Split for Gamindustri Graveyard Add Enemies");
			return true;
		}
	}
	else if(vars.slowRefresh) {
		vars.slowRefresh = false;
		refreshRate = 60;
	}
}
start
{
	// New Game
	if (settings["startnewgame"] && (current.Cutscene != null && current.Cutscene.Equals("New Game")))
	{
		return true;
	}
	if (settings["startngplus"] && (current.Cutscene != null && current.Cutscene.Equals("Prelude to the End")))
	{
		return true;
	}
}
