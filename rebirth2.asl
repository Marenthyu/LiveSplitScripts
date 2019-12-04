state("NeptuniaRebirth2", "Steam")
{
	int SaveBlock : 0x442F50;
	string64 Cutscene : 0x442F50, 0xEEC;
	int EnemyBookSize : 0x442F50, 0x783F4;
	int InventorySize : 0x442F50, 0xCA4C;
	byte PlaneptuneShares : 0x442F50, 0xF1C;
	byte LeanboxShares : 0x442F50, 0xF20;
	byte LastationShares : 0x442F50, 0xF24;
	byte LoweeShares : 0x442F50, 0xF28;
	byte LeanboxConquestFlag : 0x442F50, 0x7ED;
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
	byte LeanboxConquestFlag : 0x424F60, 0x7ED;
}
startup
{
	print("Autosplitter loading....");
	
	settings.Add("startnewgame", true, "Start on New Game");
	settings.SetToolTip("startnewgame", "Start on New Game select - use timer offset 0.33");
	
	settings.Add("startngplus", false, "Start on New Game Plus");
	settings.SetToolTip("startngplus", "Start on New Game Plus file load - use timer offset 0.05");
	
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
	
	// Event Flags
	settings.Add("eventflags", true, "Split with Event Flags");
	
	settings.Add("leanboxcq", true, "Split on Leanbox Conquest Event Flag", "eventflags");
	
	
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
	
	settings.Add("Ch. 2 - The Crossroads of Defeat", false, "Start Chapter 2", "ch2");
	
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
	
	settings.Add("Ch. 2 - Lowee", false, "Entered Lowee for the first time", "ch2");
	
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
	
	settings.Add("Ch. 2 - Leanbox", false, "Entered Leanbox for the first time", "ch2");
	
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
	
	settings.Add("Ch. 5 - Approaching Shadows", false, "Start Chapter 5", "ch5");
	
	settings.Add("Ch. 5 - CPU Support", true, "Lose to CFW Magic", "ch5");
	
	settings.Add("Ch. 5 - Giant Warechu Defeated!", true, "Killed Venomous Warechu", "ch5");
	
	settings.Add("Ch. 5 - CFW Brave, Again", true, "Killed Linda 9999", "ch5");
	
	settings.Add("Ch. 5 - An Inherited Will", true, "Killed CFW Brave", "ch5");
	
	settings.Add("Ch. 5 - No Regrets", true, "Killed CFW Trick 2", "ch5");
	
	settings.Add("Ch. 5 - Deity of Sin Revives", true, "Killed CFW Magic", "ch5");
	
	// Conquest
	settings.Add("cq", true, "Conquest", "cutscenes");
	
	settings.Add("Apocalypse - Savior's Sorrow", false, "Start ASavior's Sorrow", "cq");
	
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
	vars.timerStartedSinceBoot = false;
	vars.timer_OnStart = (EventHandler)((s, e) =>
	{
		vars.timerJustStarted = true;
	});
	timer.OnStart += vars.timer_OnStart;

	// offsets that can't be in state
	vars.enemyBookData = 0x783F8;
	vars.inventoryData = 0xCA50;
	vars.endingNames = new[] { "Normal End", "Planeptune End", "Lastation End", "Lowee End", "Leanbox End", "Maker End", "True Ending", "Conquest Ending", "Holy Sword Ending"};
	
	settings.Add("startingparty", false, "Custom Starting Party");
	
	settings.Add("char1", false, "Neptune", "startingparty"); 
	settings.Add("char2", false, "Noire", "startingparty"); 
	settings.Add("char3", false, "Blanc", "startingparty"); 
	settings.Add("char4", false, "Vert", "startingparty"); 
	settings.Add("char5", false, "Nepgear", "startingparty"); 
	settings.Add("char6", false, "Uni", "startingparty"); 
	settings.Add("char7", false, "Rom", "startingparty"); 
	settings.Add("char8", false, "Ram", "startingparty"); 
	settings.Add("char9", false, "IF", "startingparty"); 
	settings.Add("char10", false, "Compa", "startingparty"); 
	settings.Add("char11", false, "Falcom", "startingparty"); 
	settings.Add("char12", false, "Cyberconnect2", "startingparty"); 
	settings.Add("char13", false, "Broccoli", "startingparty"); 
	settings.Add("char14", false, "MarvelousAQL", "startingparty"); 
	settings.Add("char15", false, "Tekken", "startingparty"); 
	settings.Add("char16", false, "Histoire", "startingparty"); 
	settings.Add("char17", false, "Red", "startingparty"); 
	settings.Add("char18", false, "Cave", "startingparty"); 
	settings.Add("char19", false, "5pb.", "startingparty"); 
	settings.Add("char20", false, "Kei Jinguji", "startingparty"); 
	settings.Add("char21", false, "Mina Nishizawa", "startingparty"); 
	settings.Add("char22", false, "Chika Hakozaki", "startingparty");
	
	vars.backupPartySlots = new List<int>();
	vars.backupDataSlots = new List<int>();
	vars.backupLeaders = new List<bool>();
	vars.backupCharacters = new List<ushort>();
	vars.backupSkills = new List<byte[]>();
	
	vars.getPartyLeader = (Func<Process, int, ushort>) ((mem, saveBlock) => {
		return BitConverter.ToUInt16(mem.ReadBytes((System.IntPtr)(saveBlock + 0xCA30), 2), 0);
	});
	
	vars.setPartyLeader = (Func<Process, int, ushort, bool>) ((mem, saveBlock, character) => {
		mem.WriteBytes((System.IntPtr)(saveBlock + 0xCA30), BitConverter.GetBytes(character));
		return true;
	});
	
	vars.getMemberAtPartySlot = (Func<Process, int, int, ushort>) ((mem, saveBlock, slot) => {
		return BitConverter.ToUInt16(mem.ReadBytes((System.IntPtr)(saveBlock + 0xCA44 + 2*slot), 2), 0);
	});
	
	vars.setMemberAtPartySlot = (Func<Process, int, int, ushort, bool>) ((mem, saveBlock, slot, character) => {
		mem.WriteBytes((System.IntPtr)(saveBlock + 0xCA44 + 2*slot), BitConverter.GetBytes(character));
		return true;
	});
	
	vars.getMemberAtDataSlot = (Func<Process, int, int, ushort>) ((mem, saveBlock, slot) => {
		return BitConverter.ToUInt16(mem.ReadBytes((System.IntPtr)(saveBlock + 0xF34 + 0x508*slot), 2), 0);
	});
	
	vars.getStatusByte = (Func<Process, int, int, byte>) ((mem, saveBlock, slot) => {
		return mem.ReadBytes((System.IntPtr)(saveBlock + 0xF30 + 0x508*slot), 1)[0];
	});
	
	vars.setStatusByte = (Func<Process, int, int, byte, bool>) ((mem, saveBlock, slot, status) => {
		mem.WriteBytes((System.IntPtr)(saveBlock + 0xF30 + 0x508*slot), new byte[] { status });
		return true;
	});
	
	vars.dataIndexOfCharacter = (Func<Process, int, int, int>) ((mem, saveBlock, character) => {
		int slot = 0;
		while(true) {
			ushort sChar = vars.getMemberAtDataSlot(mem, saveBlock, slot);
			if(sChar == 0) {
				return -1;
			}
			if(sChar == character) {
				return slot;
			}
			slot++;
		}
		return -1; // should be impossible to reach
	});
	
	vars.setModelBytes = (Func<Process, int, int, byte, byte, bool>) ((mem, saveBlock, slot, modelByte1, modelByte2) => {
		mem.WriteBytes((System.IntPtr)(saveBlock + 0xF30 + 0x32 + 0x508*slot), new byte[] { modelByte1, modelByte2 });
		return true;
	});
	
	vars.setModelRecolorByte = (Func<Process, int, int, byte, bool>) ((mem, saveBlock, slot, recolorByte) => {
		mem.WriteBytes((System.IntPtr)(saveBlock + 0xF30 + 0x34 + 0x508*slot), new byte[] { recolorByte });
		return true;
	});
	
	vars.deleteCostumeBytes = (Func<Process, int, int, bool>) ((mem, saveBlock, slot) => {
		mem.WriteBytes((System.IntPtr)(saveBlock + 0xF30 + 0xB8 + 0x508*slot), new byte[] { 0x00, 0x00 });
		return true;
	});
	
	// data for when nepgear is required
	vars.nepgearCutscenes = new Dictionary<string, string>();
	vars.nepgearCutscenes.Add("Ch. 1 - Nepgear Awakens", "BAEAAAYAAQBOZXBnZWFyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAN8AAAAGAAQABgApAAEA/wEAAgAAAAAAAB4FAAAAAAAAFQQAAGQAAAAeBQAAoAAAABUEAACeAAAAlAAAAIwAAACPAAAAjQAAAJYAAABkAAAAdgAAAAUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIwAAAE4EAABYBgAACQcAAG0HAAA1CAAAIwwAACQMAAAnDAAAJQwAACYMAAAoDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG8AAAABAAAAAAAAAHAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABQAAAAAAAAAJAAAAAAAAAAoAAAAFAAAADQAAAAAAAAAVAAAAAAAAAB0AAAAAAAAAHwAAAAIAAAAiAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYAAQAGAAAABgAEAAYAAQAGAAAABgAEAAAAAAAGAAAABgAEAAAAAAAAAAAAAAAAAAAAAACamZk9mpkZPgAAAAAAAAAAAAAAAAYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACMzBKg==");
	vars.nepgearCutscenes.Add("Ch. 2 - Lastation's CPU Candidate", "BAEAAAYAAQBOZXBnZWFyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACwCAAAGAAUABgApAAEA/wEAAgAAAAAAAJYFAAAAAAAALgQAAGQAAACWBQAAogAAAC4EAACkAAAAmgAAAJMAAACVAAAAkQAAAJsAAABkAAAAeAAAAAUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIwAAAE4EAABYBgAACQcAAG0HAAA1CAAAIwwAACQMAAAnDAAAJQwAACYMAAAoDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG8AAAABAAAAAAAAAHAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABQAAAAAAAAAJAAAAAAAAAAoAAAAFAAAADQAAAAAAAAAVAAAAAAAAAB0AAAAAAAAAHwAAAAIAAAAiAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYAAQAGAAAABgAEAAYAAQAGAAAABgAEAAAAAAAGAAAABgAEAAAAAAAAAAAAAAAAAAAAAACamZk9mpkZPgAAAAAAAAAAAAAAAAYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACMzBKg==");
	vars.nepgearCutscenes.Add("Ch. 2 - Underling - 0, Party - 2", "BAEAAAYAAQBOZXBnZWFyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFQRAAAGAAoABgApAAEA/wEAAgAAAAAAAKQLAAAAAAAAqwQAAGQAAAC8BwAAswAAAKsEAADGAAAAuQAAALIAAACxAAAAqAAAALEAAABkAAAAiAAAAAUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIwAAAE4EAABbBgAAJQcAAG0HAAA1CAAAIwwAACQMAAAnDAAAJQwAACYMAAAoDAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG8AAAABAAAAAAAAAHAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABQAAAAAAAAAJAAAAAAAAAAoAAAAMAAAADQAAAAAAAAAVAAAAAQAAAB0AAAAAAAAAHwAAAAQAAAAiAAAAAAAAACQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYAAQAGAAAABgAEAAYAAQAGAAAABgAEAAAAAAAGAAAABgAEAAAAAAAGAAYAAAAAAAAAAACamZk9mpkZPgAAAAAAAAAAAAAAAAYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACMzBKg==");
	vars.nepgearCutscenes.Add("Ch. 3 - Nepgear and Uni",  "BAEAAAYAAQBOZXBnZWFyAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAE2RAQAGABwABgApAAEA/wEAAgAAAAAAAEYPAAAAAAAATwYAAGQAAABGDwAA5wAAAE8GAABGAQAAKgEAACQBAAAeAQAA/wAAAAoBAABkAAAAwwAAAAUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIwAAAFUEAABmBgAALgcAAG0HAAA1CAAAIwwAAEMNAABGDQAAJQwAAEUNAABHDQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAG8AAAABAAAAAAAAAHAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAAAAAABQAAAAYAAAAJAAAAAAAAAAoAAAATAAAADQAAAAAAAAAVAAAAAQAAAB0AAAAAAAAAHwAAAAQAAAAiAAAAAAAAACQAAAAAAAAAFgAAAAAAAAALAAAAAAAAAA4AAAAAAAAAGgAAAAAAAAAGAAAAAAAAABEAAAAAAAAAEgAAAAAAAAATAAAAAAAAABQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYAAgAGAAAABgAAAAYAAgAGAAAABgAAAAYAAgAGAAAABgAAAAAAAAAGAAAABgAAAAAAAACamZk9mpkZPgAAAAAAAAAAAAAAAAYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACMzBKg==");
	
	// data for when uni is required
	vars.uniCutscenes = new Dictionary<string, string>();
	vars.uniCutscenes.Add("Ch. 2 - Lastation's CPU Candidate", "BCEAAAgAAQBVbmkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAL8PAAAIAgoACAAzAAEAAwIEAgAAAAAAAAgHAAAAAAAATAQAAAAAAAAIBwAAswAAAEwEAAC0AAAApgAAALIAAACmAAAAugAAALYAAABkAAAAlQAAAAUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAGMEAABCBgAACgcAAHQHAABqCAAAOwwAADwMAAA/DAAAPQwAAD4MAABADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHMAAAABAAAAAAAAAHQAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMwAAAAAAAAAzQAAAAAAAADQAAAAAAAAANQAAAAAAAAA1QAAAAAAAADdAAAAAAAAAOUAAAAAAAAA5wAAAAAAAADoAAAAAAAAAOwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAQAIAAQACAADAAgAAQAIAAQACAADAAAAAAAIAAQACAADAAAAAAAAAAAAAAAAAAAAAACamZk9mpkZPgAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgJzAKg==");
	vars.uniCutscenes.Add("Ch. 3 - Nepgear and Uni",  "RAEAAAgAAQBVbmkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALoRAAAIAgoACAAzAAEAAwIEAgAAAAAAAAgHAAAAAAAATAQAAGQAAAAIBwAAswAAAEwEAAC0AAAApgAAALIAAACmAAAAugAAALYAAABkAAAAlQAAAAUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAAGMEAABCBgAACgcAAHQHAABqCAAAOwwAADwMAAA/DAAAPQwAAD4MAABADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHMAAAABAAAAAAAAAHQAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMwAAAAAAAAAzQAAAAAAAADQAAAAAAAAANQAAAAAAAAA1QAAAAAAAADdAAAAAAAAAOUAAAAAAAAA5wAAAAAAAADoAAAAAAAAAOwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAQAIAAQACAADAAgAAQAIAAQACAADAAAAAAAIAAQACAADAAAAAAAAAAAAAAAAAAAAAACamZk9mpkZPgAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgMzBKg==");
	
	vars.inGhostNepgear = false;
	vars.inGhostUni = false;
	vars.partyCheckTick = 0;
	
	vars.delGearCutscenes = new String[] { "Ch. 1 - Planeptune's Mascot", "Ch. 2 - Good-bye, Uni", "Ch. 2 - Uni's Defeat", "Ch. 4 - Goddess Awakening"};
	vars.delUniCutscenes = new String[] { "Ch. 2 - Good-bye, Uni", "Ch. 4 - Goddess Awakening"};
	vars.introCutscenes = new String[] { "New Game", "Prelude to the End", "Prologue - Gamindustri Graveyard", "Prologue - Escaping Judgment", "Prologue - The Trio Escape", "Ch. 1 - Divine Oratorio"};
	
	// Other Memory Edit Settings
	
	settings.Add("memoryedits", false, "Other Memory Edits");
	settings.Add("randommodels", false, "Randomize Character Models each Cutscene", "memoryedits");
	settings.Add("randommodel0", false, "First Party Member", "randommodels");
	settings.Add("randommodel1", false, "Second Party Member", "randommodels");
	settings.Add("randommodel2", false, "Third Party Member", "randommodels");
	settings.Add("randommodel3", false, "Fourth Party Member", "randommodels");
	
	vars.models = new byte[,] {{0x05, 0x00}, {0x0F, 0x00}, {0x18, 0x00}, {0x22, 0x00}, {0x29, 0x00}, {0x2A, 0x00}, {0x2B, 0x00}, {0x2C, 0x00}, {0x33, 0x00}, {0x34, 0x00}, {0x35, 0x00}, {0x36, 0x00}, {0x3D, 0x00}, {0x3E, 0x00}, {0x3F, 0x00}, {0x40, 0x00}, {0x47, 0x00}, {0x48, 0x00}, {0x49, 0x00}, {0x4A, 0x00}, {0x51, 0x00}, {0x65, 0x00}, {0x83, 0x00}, {0x8D, 0x00}, {0x97, 0x00}, {0x98, 0x00}, {0x99, 0x00}, {0x9A, 0x00}, {0xA1, 0x00}, {0xA2, 0x00}, {0xA3, 0x00}, {0xA4, 0x00}, {0xBF, 0x00}, {0xC0, 0x00}, {0xC1, 0x00}, {0xC2, 0x00}, {0xC9, 0x00}, {0xCA, 0x00}, {0xCB, 0x00}, {0xCC, 0x00}, {0xD3, 0x00}, {0xD4, 0x00}, {0xD5, 0x00}, {0xD6, 0x00}, {0xDD, 0x00}, {0xDE, 0x00}, {0xDF, 0x00}, {0xE0, 0x00}, {0xE7, 0x00}, {0xE8, 0x00}, {0xE9, 0x00}, {0xEA, 0x00}, {0x05, 0x01}, {0x0F, 0x01}, {0x19, 0x01}, {0x23, 0x01}, {0x2D, 0x01}, {0x2F, 0x01}, {0x31, 0x01}, {0x33, 0x01}, {0x35, 0x01}, {0x36, 0x01}, {0x37, 0x01}, {0x38, 0x01}, {0x3B, 0x01}, {0x3C, 0x01}, {0x3D, 0x01}, {0x3E, 0x01}, {0x41, 0x01}, {0x42, 0x01}, {0x43, 0x01}, {0x44, 0x01}, {0x45, 0x01}, {0x46, 0x01}, {0x47, 0x01}, {0x48, 0x01}, {0x49, 0x01}, {0x4A, 0x01}, {0x4B, 0x01}, {0x4C, 0x01}, {0x4D, 0x01}, {0x4E, 0x01}, {0x4F, 0x01}, {0x50, 0x01}, {0x51, 0x01}, {0x52, 0x01}, {0x53, 0x01}, {0x54, 0x01}, {0x55, 0x01}, {0x56, 0x01}, {0x57, 0x01}, {0x58, 0x01}, {0x59, 0x01}, {0x5A, 0x01}, {0x5B, 0x01}, {0x5C, 0x01}, {0x5E, 0x01}, {0x5F, 0x01}, {0x60, 0x01}, {0x61, 0x01}, {0x62, 0x01}, {0x63, 0x01}, {0x64, 0x01}, {0x66, 0x01}, {0x67, 0x01}, {0x68, 0x01}, {0x69, 0x01}, {0x6A, 0x01}, {0x6D, 0x01}, {0x6E, 0x01}, {0x70, 0x01}, {0x71, 0x01}, {0x72, 0x01}, {0x73, 0x01}, {0x74, 0x01}, {0x75, 0x01}, {0x76, 0x01}, {0x77, 0x01}, {0x78, 0x01}, {0x79, 0x01}, {0x7A, 0x01}, {0x7B, 0x01}, {0x7C, 0x01}, {0x7D, 0x01}, {0x7E, 0x01}, {0x7F, 0x01}, {0x80, 0x01}, {0x81, 0x01}, {0x82, 0x01}, {0x83, 0x01}, {0x84, 0x01}, {0x85, 0x01}, {0x86, 0x01}, {0x87, 0x01}, {0x88, 0x01}, {0xA1, 0x01}, {0xA3, 0x01}, {0xAD, 0x01}, {0xB1, 0x01}, {0xB4, 0x01}, {0xB5, 0x01}, {0xB6, 0x01}, {0xB7, 0x01}, {0xB8, 0x01}, {0xB9, 0x01}, {0xBA, 0x01}, {0xBB, 0x01}, {0xBC, 0x01}, {0xBD, 0x01}, {0xBE, 0x01}, {0xBF, 0x01}, {0xC0, 0x01}, {0xC1, 0x01}, {0xC2, 0x01}, {0xC3, 0x01}, {0xC4, 0x01}, {0xC5, 0x01}, {0xC6, 0x01}, {0xC7, 0x01}, {0xC8, 0x01}, {0xC9, 0x01}, {0xCA, 0x01}, {0xCB, 0x01}, {0xCC, 0x01}, {0xCD, 0x01}, {0xCE, 0x01}, {0xCF, 0x01}, {0xD0, 0x01}, {0xD1, 0x01}, {0xD2, 0x01}, {0xD3, 0x01}, {0xD4, 0x01}, {0xD5, 0x01}, {0xD9, 0x01}, {0xDA, 0x01}, {0xDB, 0x01}, {0xDC, 0x01}, {0xDF, 0x01}, {0xE0, 0x01}, {0xE1, 0x01}, {0xE2, 0x01}, {0xE3, 0x01}, {0xE4, 0x01}, {0xE5, 0x01}, {0xE7, 0x01}, {0xE8, 0x01}, {0xEA, 0x01}, {0xEB, 0x01}, {0xEC, 0x01}, {0xED, 0x01}, {0xEF, 0x01}, {0xF2, 0x01}, {0xF3, 0x01}, {0xF4, 0x01}, {0xF7, 0x01}, {0xF8, 0x01}, {0x01, 0x02}, {0x02, 0x02}, {0x03, 0x02}, {0x04, 0x02}, {0x05, 0x02} };
	
	vars.random = new Random();
	
	print("Startup complete! CREDITS: Marenthyu <marenthyu@marenthyu.de>, Dabomstew");
	
}
shutdown
{
	try {
	timer.OnStart -= vars.timer_OnStart;
	} catch {}
	vars.gameConnected = false;
	vars.timerStartedSinceBoot = false;
}
init
{

	print("Game found!");
	print("module size: " + modules.First().ModuleMemorySize);
	vars.timerStartedSinceBoot = false;
	
	if (modules.First().ModuleMemorySize == 10620928) {
		print("Found and confirmed GoG Version");
		version = "GoG";
		vars.gameConnected = true;
	}
	else if (modules.First().ModuleMemorySize == 10752000) {
		print("Found and confirmed Steam Version 04.15.2019 Patch");
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
	vars.timerStartedSinceBoot = false;
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
		
		vars.canSplitLeanboxCQ = false;
		vars.leanboxCQSplit = false;
		
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
		byte[] enemyBook = memory.ReadBytes((System.IntPtr) (current.SaveBlock + vars.enemyBookData), (int) (current.EnemyBookSize*8));
		for(int i = 0; i < current.EnemyBookSize; i++) {
			vars.initialKills[BitConverter.ToInt16(enemyBook, i*8)] = BitConverter.ToInt16(enemyBook, i*8 + 4);
		}
		vars.timerJustStarted = false;
		vars.timerStartedSinceBoot = true;
		// read initial party data from memory
		if (settings["startingparty"]) {
			// find stcharaplayer.gbin in ram
			var target = new SigScanTarget(0, "47 42 4E 4C 01 00 02 00 10 00 00 00 04 00 00 00 01 00 00 00 00 00 00 00 17 00 00 00 08 05 00 00 55 01 00 00 C0 73");
			int scanOffset = 0;
			foreach(var page in memory.MemoryPages()) {
				var scanner = new SignatureScanner(memory, page.BaseAddress, (int)page.RegionSize);
				if ((scanOffset = (int)scanner.Scan(target)) != 0)
					break;
			}
			if(scanOffset == 0) {
				print("Could not find stcharaplayer data, aborting");
				return false;
			}
			vars.characterData = memory.ReadBytes((System.IntPtr)(scanOffset - 0x87F0), 0x8830);
			print("Loaded initial character data.");
		}
		
	}
	// Do not run if the timer has not been started as that means some data has not yet been properly set up.
	if (!vars.timerStartedSinceBoot) {
	    return true;
	}
	
	if(settings["startingparty"]) {
		try {
			if(current.Cutscene.Equals("Ch. 1 - Divine Oratorio") && !old.Cutscene.Equals("Ch. 1 - Divine Oratorio")) {
				// write starting party
				print("Trying to write party.");
				int partyIdx = 0xF30;
				vars.numCharacters = 0;
				vars.characters = new List<ushort>();
				print("Getting wanted characters from settings...");
				for(int i=1;i<23;i++) {
					if(settings["char"+i]) {
						print("You want character " + i);
						byte[] data = new byte[0x508];
						System.Array.Copy(vars.characterData, i*0x508, data, 0, 0x508);
						vars.characters.Add(BitConverter.ToUInt16(data, 4));
						// get the character alive
						System.Array.Copy(data, 0x50, data, 0x40, 0x10);
						memory.WriteBytes((System.IntPtr) (current.SaveBlock + partyIdx), data);
						if(vars.numCharacters<4) {
							byte[] id = new byte[2];
							System.Array.Copy(data, 4, id, 0, 2);
							memory.WriteBytes((System.IntPtr)(current.SaveBlock + 0xCA44 + vars.numCharacters*2), id);
							if(vars.numCharacters == 0) {
								// leader
								memory.WriteBytes((System.IntPtr)(current.SaveBlock + 0xCA30), id);
							}
						}
						partyIdx += 0x508;
						vars.numCharacters++;
					}
				}
				// clear the rest of the party
				if(vars.numCharacters<4) {
					byte[] emptyParty = new byte[(4-vars.numCharacters)*2];
					memory.WriteBytes((System.IntPtr)(current.SaveBlock + 0xCA44 + vars.numCharacters*2), emptyParty);
				}
				
				// add ghost nepgear for 1v1 fights if she's absent (the game will take care of uni for us)
				if(!settings["char5"]) {
					byte[] data = new byte[0x508];
					System.Array.Copy(vars.characterData, 5*0x508, data, 0, 0x508);
					// get the character alive
					System.Array.Copy(data, 0x50, data, 0x40, 0x10);
					// disable character
					data[0x00] = (byte) 0x44;
					memory.WriteBytes((System.IntPtr) (current.SaveBlock + partyIdx), data);
				}
				
				vars.inGhostNepgear = false;
			}
			
			// ghost nepgear
			if(!settings["char5"]) {
				// when we need gear for a fixed party fight, add her back and load appropriate data from an any% speedrun to make it fair
				if(vars.nepgearCutscenes.ContainsKey(current.Cutscene) && !old.Cutscene.Equals(current.Cutscene)) {
					byte[] data = System.Convert.FromBase64String(vars.nepgearCutscenes[current.Cutscene]);
					int ngIndex = vars.dataIndexOfCharacter(memory, current.SaveBlock, 6);
					print("Nepgear Index="+ngIndex);
					print("Data Length="+data.Length);
					memory.WriteBytes((System.IntPtr) (current.SaveBlock + 0xF30 + ngIndex*0x508), data);
					vars.inGhostNepgear = true;
				}
				if(System.Array.Exists((String[]) vars.delGearCutscenes, element => element.Equals(current.Cutscene)) && !old.Cutscene.Equals(current.Cutscene)) {
					// re-disable nepgear
					int ngIndex = vars.dataIndexOfCharacter(memory, current.SaveBlock, 6);
					vars.setStatusByte(memory, current.SaveBlock, ngIndex, (byte) 0x44);
					vars.inGhostNepgear = false;
				}
			}
			
			// ghost uni
			if(!settings["char6"]) {
				if(vars.uniCutscenes.ContainsKey(current.Cutscene) && !old.Cutscene.Equals(current.Cutscene)) {
					byte[] data = System.Convert.FromBase64String(vars.uniCutscenes[current.Cutscene]);
					int uIndex = vars.dataIndexOfCharacter(memory, current.SaveBlock, 8);
					print("Uni Index="+uIndex);
					print("Data Length="+data.Length);
					memory.WriteBytes((System.IntPtr) (current.SaveBlock + 0xF30 + uIndex*0x508), data);
					vars.inGhostUni = true;
				}
				if(System.Array.Exists((String[]) vars.delUniCutscenes, element => element.Equals(current.Cutscene)) && !old.Cutscene.Equals(current.Cutscene)) {
					int uIndex = vars.dataIndexOfCharacter(memory, current.SaveBlock, 8);
					vars.setStatusByte(memory, current.SaveBlock, uIndex, (byte) 0x44);
					vars.inGhostUni = false;
				}
			}
			
			// deal with any party members we dont want / do want
			try {
			if(!((IDictionary<String, object>)vars).ContainsKey("characters") || vars.characters.Count == 0) {
				// re-establish characters from preferences
				print("Re-establishing wanted characters from Settings");
				vars.characters = new List<ushort>();
				for(int i=1;i<23;i++) {
					if(settings["char"+i]) {
						vars.characters.Add(BitConverter.ToUInt16(vars.characterData, i*0x508 + 4));
					}
				}
				print(String.Join("; ", vars.characters));
			}
			} catch {
			print("you dun goofed up");
			}
			if(!vars.inGhostNepgear && !vars.inGhostUni && !System.Array.Exists((String[]) vars.introCutscenes, element => element.Equals(current.Cutscene))) {
				vars.partyCheckTick++;
				if(vars.partyCheckTick % 10 == 0)
				{
					//print("Checking party...");
					//print(String.Join("; ", vars.characters)); 
					int dataIdx = 0;
					while(vars.getMemberAtDataSlot(memory, current.SaveBlock, dataIdx) > 0) {
						byte status = vars.getStatusByte(memory, current.SaveBlock, dataIdx);
						
						if(((status & 0x40) == 0) != vars.characters.Contains(vars.getMemberAtDataSlot(memory, current.SaveBlock, dataIdx))) {
							// get them back in or remove them again
							vars.setStatusByte(memory, current.SaveBlock, dataIdx, (byte) (status ^ 0x40));
						}
						dataIdx++;
					}
					
					int partyMembers = 0;
					for(int p=0;p<4;p++) {
						if(vars.getMemberAtPartySlot(memory, current.SaveBlock, p) > 0) {
							if(!vars.characters.Contains(vars.getMemberAtPartySlot(memory, current.SaveBlock, p))) {
								// clear bad characters
								vars.setMemberAtPartySlot(memory, current.SaveBlock, p, (ushort) 0);
							}
							else {
								partyMembers++;
							}
						}
					}
					
					if(partyMembers == 0) {
						// attempt to rescue a crash by force-setting a single party member
						vars.setMemberAtPartySlot(memory, current.SaveBlock, 0, vars.characters[0]);
						vars.setPartyLeader(memory, current.SaveBlock, vars.characters[0]);
					}
				}
			}
			
		} catch {}
	}
	
	if (settings["memoryedits"]) {
		if (settings["randommodels"]) {
			
				if(!current.Cutscene.Equals(old.Cutscene)) {
					print("Changing models as cutscene changed...");
					for (int i = 0;i<4;i++) {
						try {
							if (settings["randommodel" + i]) {
								// Two-dimensional array has weird lengths...
								int r = vars.random.Next(vars.models.Length/2);
								int member = vars.getMemberAtPartySlot(memory, current.SaveBlock, i);
								//print("Member ID at slot " + i + " is " + member);
								int index = vars.dataIndexOfCharacter(memory, current.SaveBlock, member);
								//print("Character dataIndex: " + index);
								vars.setModelBytes(memory, current.SaveBlock, index, vars.models[r, 0], vars.models[r, 1]);
								vars.deleteCostumeBytes(memory, current.SaveBlock, index);
							}
						} catch (Exception e) {
							print("Error checking for character " + i + ", skipping model swap");
							print(e.Message);
						}
					}
				}
			
		}
	}
}
split
{
	if(!vars.gameConnected || vars.timerJustStarted || !vars.timerStartedSinceBoot) {
		// edge case, don't try anything this cycle
		return false;
	}
	
	// arm leanbox conquest split
	try {
		if(current.Cutscene.Equals("Ch. 2 - Leanbox")) {
			vars.canSplitLeanboxCQ = true;
		}
	} catch {}
	
	// split for cutscene
	if (settings["cutscenes"])
	{
		try {
			if(!current.Cutscene.Equals(old.Cutscene)) {
				print("Cutscene changed to: "+current.Cutscene);
			}
		} catch {}
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
		byte[] enemyBook = memory.ReadBytes((System.IntPtr) (current.SaveBlock + vars.enemyBookData), (int) (current.EnemyBookSize*8));
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
		byte[] inventory = memory.ReadBytes((System.IntPtr) (current.SaveBlock + vars.inventoryData), (int) (current.InventorySize*4));
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
	
	if(settings["eventflags"]) {
		if(settings["leanboxcq"] && !vars.leanboxCQSplit && current.LeanboxConquestFlag == 1 && old.LeanboxConquestFlag == 0 && vars.canSplitLeanboxCQ) {
			vars.leanboxCQSplit = true;
			print("Split for Leanbox Conquest event flag");
			return true;
		}
	}
}
start
{
	// New Game
	if(!current.Cutscene.Equals(old.Cutscene)) {
		print("Cutscene changed, new cutscene: " + current.Cutscene);
	}
	if (settings["startnewgame"] && (current.Cutscene != null && current.Cutscene.Equals("New Game")))
	{
		return true;
	}
	if (settings["startngplus"] && current.Cutscene != null && Array.IndexOf(vars.endingNames, current.Cutscene.ToString()) > -1)
	{
		return true;
	}
}
