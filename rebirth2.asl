state("NeptuniaRebirth2", "Steam")
{
	int SaveBlock : 0x42C0B0;
    string64 Cutscene : 0x42C0B0, 0xEEC;
	int EnemyBookSize : 0x42C0B0, 0x783F4;
	int InventorySize : 0x42C0B0, 0xCA4C;
    byte PlaneptuneShares : 0x42C0B0, 0xF1C;
    byte LeanboxShares : 0x42C0B0, 0xF20;
    byte LastationShares : 0x42C0B0, 0xF24;
    byte LoweeShares : 0x42C0B0, 0xF28;
    int LDHP_Enemy : 0x43A1F0, 0xC, 0xA0, 0x40;
    int LDN_Enemy : 0x43A1F0, 0xC, 0xA0, 0x8;
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
	settings.SetToolTip("startnewgame", "Start on New Game select - use timer offset xxxx (TBD)");
	
	settings.Add("viraltulips", true, "Kill 4 Viral Tulips", "startnewgame");
	settings.SetToolTip("viraltulips", "Requires a special variable, so only usable if splitter is started automatically.");
	
	settings.Add("spiderwebs", true, "Acquire 2 Spider Webs", "startnewgame");
	settings.SetToolTip("spiderwebs", "Requires a special variable, so only usable if splitter is started automatically.");
	
	settings.Add("d60Mats", true, "Get Darkness 60 Materials", "startnewgame");
	settings.SetToolTip("d60Mats", "Requires a special variable, so only usable if splitter is started automatically.");
	
	settings.Add("colosseum", true, "Get colosseum", "startnewgame");
	settings.SetToolTip("colosseum", "Requires a special variable, so only usable if splitter is started automatically.");
	
	settings.Add("enemydeath", true, "Split on specific enemy deaths");
	
	settings.Add("dosdeath", true, "Deity Of Sin Arfoire", "enemydeath");
	settings.SetToolTip("dosdeath", "End Split, times on last boss hit.");
	
	settings.Add("metalshelldeath", true, "Metal Shell", "enemydeath");
	settings.SetToolTip("metalshelldeath", "Lowee Gathering Mission (never killed anywhere else under normal circumstances)");
	
	
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
	
	settings.Add("Apocalypse - Noire's Farewell", false, "Preperations", "cq");
	settings.SetToolTip("Apocalypse - Noire's Farewell", "Menuing split, splits when watching Noire Cutscene");
	
	settings.Add("Apocalypse - Loss", true, "Lastation Fight Done", "cq");
	
	settings.Add("Apocalypse - Don't Wanna Die", true, "Lowee Fight Done", "cq");
	
	settings.Add("Apocalypse - Vert in Danger", true, "Killed Vert", "cq");
	
	settings.Add("Apocalypse - No Dying in Vain", true, "Killed Linda. Finally.", "cq");
	
	
	
	print("Startup complete! CREDITS: Marenthyu <marenthyu@marenthyu.de>, Dabomstew");
	
}
init
{

	print("Game found!");
	print("module size: " + modules.First().ModuleMemorySize);
	
	vars.tulipsSplit = false;
	vars.websSplit = false;
	vars.d60Mats = false;
	vars.colosseum = false;
    vars.itemSplitsHit = 0;
    vars.itemSplitsActive = 0;
	
    if (modules.First().ModuleMemorySize == 10620928) {
		print("Found and confirmed GoG Version");
        version = "GoG";
	}
    else if (modules.First().ModuleMemorySize == 10649600) {
		print("Found and confirmed Steam Version");
        version = "Steam";
	}


}
split
{
	if (settings["enemydeath"]) {
		//print("Last enemy defending: " + current.LDN_Enemy + " with " + current.LDHP_Enemy + "HP");
		if (settings["dosdeath"] && ((old.LDN_Enemy != null && current.LDN_Enemy != null) && (current.LDN_Enemy.Equals("Deity Of Sin Arfoire")) && (old.LDN_Enemy.Equals(current.LDN_Enemy)) && (old.LDHP_Enemy > 0 && current.LDHP_Enemy == 0)))
		{
			print("Enemy " + current.LDN_Enemy + " Died! Splitting!");
			return true;
		}
		if (settings["metalshelldeath"] && ((old.LDN_Enemy != null && current.LDN_Enemy != null) && (current.LDN_Enemy.Equals("Metal Shell")) && (old.LDN_Enemy.Equals(current.LDN_Enemy)) && (old.LDHP_Enemy > 0 && current.LDHP_Enemy == 0)))
		{
			print("Enemy " + current.LDN_Enemy + " Died! Splitting!");
			return true;
		}
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
	
	// split for Viral Tulips
	if(settings["startnewgame"] && settings["viraltulips"] && !vars.tulipsSplit) {
        byte[] enemyBook = memory.ReadBytes((System.IntPtr) (current.SaveBlock + 0x783F8), (int) (current.EnemyBookSize*8));
        for(int i = 0; i < current.EnemyBookSize; i++) {
            short enemyID = BitConverter.ToInt16(enemyBook, i*8);
            if(enemyID == 1003) {
                short kills = BitConverter.ToInt16(enemyBook, i*8 + 4);
                if(kills >= 4) {
                    // do split
                    vars.tulipsSplit = true;
                    print("Split for viral Tulips");
					return true;
                }
                break;
            }
        }
    }
	
	// Acquire Items

	if(settings["startnewgame"] && vars.itemSplitsHit < vars.itemSplitsActive) {
		bool hasHBWs = false;
		bool hasGDs = false;
        byte[] inventory = memory.ReadBytes((System.IntPtr) (current.SaveBlock + 0xCA50), (int) (current.InventorySize*4));
        for(int i = 0; i < current.InventorySize; i++) {
            short itemID = BitConverter.ToInt16(inventory, i*4);
            if(itemID == 919 && settings["spiderwebs"] && !vars.websSplit) {
                byte amount = inventory[i*4 + 2];
                if(amount >= 2) {
                    // do split
                    vars.websSplit = true;
                    vars.itemSplitsHit++;
					print("Split for Spider Webs");
					
                    return true;
                }
                continue;
            }
			if (itemID == 906 && settings["d60Mats"] && !vars.d60Mats) {
				byte amount = inventory[i*4 + 2];
				if (amount >= 2) {
					hasHBWs = true;
				}
				continue;
			}
			if (itemID == 805 && settings["d60Mats"] && !vars.d60Mats) {
				byte amount = inventory[i*4 + 2];
				if (amount >= 2) {
					hasGDs = true;
				}
				continue;
			}
			if (itemID == 652 && settings["colosseum"] && !vars.colosseum) {
				vars.colosseum = true;
                vars.itemSplitsHit++;
				print("Split for getting colosseum");
				return true;
			}
        }
		if (settings["d60Mats"] && hasGDs && hasHBWs && !vars.d60Mats) {
			vars.d60Mats = true;
            vars.itemSplitsHit++;
			print("Split for d60Mats");
			return true;
		}
    }
}
start
{
	// New Game
	
	if (settings["startnewgame"] && (current.Cutscene != null && current.Cutscene.Equals("New Game")))
	{
		vars.tulipsSplit = false;
		vars.websSplit = false;
		vars.d60Mats = false;
		vars.colosseum = false;
        vars.itemSplitsHit = 0;
        vars.itemSplitsActive = 0;
        
        // count item splits
        vars.itemSplitsActive += settings["spiderwebs"] ? 1 : 0;
        vars.itemSplitsActive += settings["d60Mats"] ? 1 : 0;
        vars.itemSplitsActive += settings["colosseum"] ? 1 : 0;
		return true;
	}
	
}
