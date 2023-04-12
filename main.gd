extends Node2D

var STEAM_ID

func _ready():
	var INIT: Dictionary = Steam.steamInit()
	print("Did Steam initialize?: "+str(INIT))
	var TICKET = Steam.getAuthenticationStatus()
	print(TICKET)
	
	var IS_ONLINE: bool = Steam.loggedOn()
	STEAM_ID = Steam.getSteamID()
	var IS_OWNED: bool = Steam.isSubscribed()
	print("Is online:", IS_ONLINE)
	print("Steam ID:", STEAM_ID)
	print("Is owned:", IS_OWNED)


func _process(delta):
	Steam.run_callbacks()
	pass

func _on_button_pressed():
	print("Check overlay enabled:")
	print(Steam.isOverlayEnabled())
	Steam.activateGameOverlayInviteDialog(STEAM_ID)
	pass # Replace with function body.
