state("Squidlit")
{
	int levelID : 0x00101320, 0x00;
}

startup
{
	settings.Add("town", true, "Town");
	settings.Add("cave", true, "Cave");
	settings.Add("fields", true, "Fields");
	settings.Add("farm", true, "Farm");
	settings.Add("sharkerfly", true, "Sharkerfly");
	settings.Add("postSfScene1", false, "First Cutscene After Sharkerfly");
	settings.Add("postSfScene2", false, "Second Cutscene After Sharkerfly");
	settings.Add("jail", true, "Jail");
	settings.Add("guards", true, "Guards");
	settings.Add("oone", true, "Oonebilu and Oonebiru");
	settings.Add("castleTown", false, "Castle Town");
	settings.Add("library", true, "Library");
	settings.Add("cellar", true, "Cellar");
	settings.Add("grimwar", true, "Grimwar");
	settings.Add("postGwScene", false, "Cutscene After Grimwar");
	settings.Add("stairs", true, "Stairs Before Castle");
	settings.Add("castle", true, "Castle");
	settings.Add("skwit", true, "Skwit Skwot Fight");
	settings.Add("end", true, "Final Dialogue");
}

start
{
	return current.levelID > old.levelID && current.levelID == 2;
}

split
{
	return current.levelID != old.levelID && current.levelID != 28 && old.levelID != 28 &&
		((settings["town"] && current.levelID == 3) ||
		(settings["cave"] && current.levelID == 4) ||
		(settings["fields"] && current.levelID == 5) ||
		(settings["farm"] && current.levelID == 6) ||
		(settings["sharkerfly"] && current.levelID == 7) ||
		(settings["postSfScene1"] && current.levelID == 8) ||
		(settings["postSfScene2"] && current.levelID == 9) ||
		(settings["jail"] && current.levelID == 10) ||
		(settings["guards"] && current.levelID == 11) ||
		(settings["oone"] && current.levelID == 12 && old.levelID == 11) ||
		(settings["castleTown"] && current.levelID == 13) ||
		(settings["library"] && current.levelID == 14) ||
		(settings["cellar"] && current.levelID == 15) ||
		(settings["grimwar"] && current.levelID == 17) ||
		(settings["postGwScene"] && current.levelID == 12 && old.levelID == 17) ||
		(settings["stairs"] && current.levelID == 18) ||
		(settings["castle"] && current.levelID == 19) ||
		(settings["skwit"] && current.levelID == 21) ||
		(settings["end"] && current.levelID == 24));
}
