class_name GameDataHolder extends Node

static var Data : GameData = null;
static var FileID = 0;  #This should be set on the title sceen

static func LoadFile():
	var fileName = str("user://File", FileID, ".res");
	if ResourceLoader.exists(fileName):
		Data = ResourceLoader.load(fileName).duplicate();
	else:
		Data = GameData.new();
		Data.NewFile();
		SaveFile();
	
#Returns false if it failed
static func SaveFile():
	var fileName = str("user://File", FileID, ".res");
	var err = ResourceSaver.save(Data, fileName);
	if err:
		print("Save failed.");
		return false;
	else:
		print("Save successful.");
		return true;
