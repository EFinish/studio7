extends Control

@onready var buildMenu = $BuildPanelContainer
@onready var buildActionButton = $actionButtonsContainer/buildButton
@onready var buildOptionsWallButton = $BuildPanelContainer/BuildOptionsContainer/wallButton
@onready var buildOptionsDoorButton = $BuildPanelContainer/BuildOptionsContainer/doorButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	buildActionButton.pressed.connect(onBuildActionButtonPressed)
	buildOptionsWallButton.pressed.connect(onWallButtonPressed)
	buildOptionsDoorButton.pressed.connect(onDoorButtonPressed)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func onBuildActionButtonPressed():
	buildMenu.visible = not buildMenu.visible  # Toggle menu visibility
	
func onWallButtonPressed():
	# Logic for selecting the 'Wall' build option
	buildMenu.visible = false
	print("Wall build option selected")

func onDoorButtonPressed():
	# Logic for selecting the 'Door' build option
	buildMenu.visible = false
	print("Door build option selected")
