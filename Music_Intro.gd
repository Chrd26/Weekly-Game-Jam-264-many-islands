extends AudioStreamPlayer
var playNext = RandomNumberGenerator.new();
var playNextConfirm;
var playParts = RandomNumberGenerator.new();
var playPartsConfirm;
var playNextRegion = false;
var hasSFXPlayed = false;


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_Music_Intro_finished():
	playNext.randomize();
	playNextConfirm = playNext.randi_range(0,1);
	if playNextConfirm == 1:
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"202_Bridge_Bass".play();
			$"202_Bridge_Percs".play();
		elif playPartsConfirm == 1:
			$"202_Bridge_Guitar_Chords".play();
			$"202_Bridge_Guitar_Harmonies".play();
			$"202_Bridge_Percs".play();
		elif playPartsConfirm == 2:
			$"202_Bridge_Synth".play();
			$"202_Bridge_Percs".play();
		else:
			$"202_Bridge_Bass".play();
			$"202_Bridge_Percs".play();
			$"202_Bridge_Guitar_Chords".play();
			$"202_Bridge_Guitar_Harmonies".play();
			$"202_Bridge_Synth".play();
			playNextRegion = true;
	else:
		play();


func _on_202_Bridge_Percs_finished():
	playNext.randomize();
	playNextConfirm = playNext.randi_range(0,1);
	if playNextConfirm == 1 || playNextRegion || playNextConfirm == 1 && playNextRegion:
		playNextRegion = false;
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"303_Bridge_2_Bass".play();
			$"303_Bridge_2_Percs".play();
		elif playPartsConfirm == 1:
			$"303_Bridge_2_Guitar_Chords".play();
			$"303_Bridge_2_Guitar_Harmonies".play();
			$"303_Bridge_2_Percs".play();
		elif playPartsConfirm == 2:
			$"303_Bridge_2_Synth".play();
			$"303_Bridge_2_Percs".play();
		else:
			$"303_Bridge_2_Bass".play();
			$"303_Bridge_2_Guitar_Chords".play();
			$"303_Bridge_2_Guitar_Harmonies".play();
			$"303_Bridge_2_Percs".play();
			$"303_Bridge_2_Synth".play();
			playNextRegion = true;
	else:
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"202_Bridge_Bass".play();
			$"202_Bridge_Percs".play();
		elif playPartsConfirm == 1:
			$"202_Bridge_Guitar_Chords".play();
			$"202_Bridge_Guitar_Harmonies".play();
			$"202_Bridge_Percs".play();
		elif playPartsConfirm == 2:
			$"202_Bridge_Synth".play();
			$"202_Bridge_Percs".play();
		else:
			$"202_Bridge_Bass".play();
			$"202_Bridge_Percs".play();
			$"202_Bridge_Guitar_Chords".play();
			$"202_Bridge_Guitar_Harmonies".play();
			$"202_Bridge_Synth".play();
			playNextRegion = true;


func _on_303_Bridge_2_Percs_finished():
	playNext.randomize();
	playNextConfirm = playNext.randi_range(0,1);
	if playNextConfirm == 1 || playNextRegion || playNextConfirm == 1 && playNextRegion:
		playNextRegion = false;
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"404_Break_1_Bass".play();
			$"404_Break_1_Percs".play();
		elif playPartsConfirm == 1:
			$"404_Break_1_Guitar_Chords".play();
			$"404_Break_1_Guitar_Harmonies".play();
			$"404_Break_1_Percs".play();
		elif playPartsConfirm == 2:
			$"404_Break_1_Synths".play();
			$"404_Break_1_Percs".play();
		else:
			$"404_Break_1_Bass".play();
			$"404_Break_1_Guitar_Chords".play();
			$"404_Break_1_Guitar_Harmonies".play();
			$"404_Break_1_Percs".play();
			$"404_Break_1_Synths".play();
			playNextRegion = true;
	else:
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"303_Bridge_2_Bass".play();
			$"303_Bridge_2_Percs".play();
		elif playPartsConfirm == 1:
			$"303_Bridge_2_Guitar_Chords".play();
			$"303_Bridge_2_Guitar_Harmonies".play();
			$"303_Bridge_2_Percs".play();
		elif playPartsConfirm == 2:
			$"303_Bridge_2_Synth".play();
			$"303_Bridge_2_Percs".play();
		else:
			$"303_Bridge_2_Bass".play();
			$"303_Bridge_2_Guitar_Chords".play();
			$"303_Bridge_2_Guitar_Harmonies".play();
			$"303_Bridge_2_Percs".play();
			$"303_Bridge_2_Synth".play();
			playNextRegion = true;



func _on_404_Break_1_Percs_finished():
	playNext.randomize();
	playNextConfirm = playNext.randi_range(0,1);
	if playNextConfirm == 1 || playNextRegion || playNextConfirm == 1 && playNextRegion:
		playNextRegion = false;
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"505_Bridge_3_Bass".play();
			$"505_Bridge_3_Percs".play();
		elif playPartsConfirm == 1:
			$"505_Bridge_3_Guitar_Chords".play();
			$"505_Bridge_3_Guitar_Harmonies".play();
			$"505_Bridge_3_Percs".play();
		elif playPartsConfirm == 2:
			$"505_Bridge_3_Synths".play();
			$"505_Bridge_3_Percs".play();
		else:
			$"505_Bridge_3_Bass".play();
			$"505_Bridge_3_Guitar_Harmonies".play();
			$"505_Bridge_3_Guitar_Chords".play();
			$"505_Bridge_3_Percs".play();
			$"505_Bridge_3_Synths".play();
			playNextRegion = true;
	else:
		playNextRegion = false;
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"404_Break_1_Bass".play();
			$"404_Break_1_Percs".play();
		elif playPartsConfirm == 1:
			$"404_Break_1_Guitar_Chords".play();
			$"404_Break_1_Guitar_Harmonies".play();
			$"404_Break_1_Percs".play();
		elif playPartsConfirm == 2:
			$"404_Break_1_Synths".play();
			$"404_Break_1_Percs".play();
		else:
			$"404_Break_1_Bass".play();
			$"404_Break_1_Guitar_Chords".play();
			$"404_Break_1_Guitar_Harmonies".play();
			$"404_Break_1_Percs".play();
			$"404_Break_1_Synths".play();
			playNextRegion = true;


func _on_505_Bridge_3_Percs_finished():
	playNext.randomize();
	playNextConfirm = playNext.randi_range(0,1);
	if playNextConfirm == 1 || playNextRegion || playNextConfirm == 1 && playNextRegion:
		playNextRegion = false;
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"606_Break_2_Bass".play();
			$"606_Break_2_Percs".play();
		elif playPartsConfirm == 1:
			$"606_Break_2_Guitar_Chords".play();
			$"606_Break_2_Guitar_Harmonies".play();
			$"606_Break_2_Percs".play();
		elif playPartsConfirm == 2:
			$"606_Break_2_Synth".play();
			$"606_Break_2_Percs".play();
		else:
			$"606_Break_2_Bass".play();
			$"606_Break_2_Guitar_Chords".play();
			$"606_Break_2_Guitar_Harmonies".play();
			$"606_Break_2_Percs".play();
			$"606_Break_2_SFX".play();
			$"606_Break_2_Synth".play();
			playNextRegion = true;
	else:
		playNextRegion = false;
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"505_Bridge_3_Bass".play();
			$"505_Bridge_3_Percs".play();
		elif playPartsConfirm == 1:
			$"505_Bridge_3_Guitar_Chords".play();
			$"505_Bridge_3_Guitar_Harmonies".play();
			$"505_Bridge_3_Percs".play();
		elif playPartsConfirm == 2:
			$"505_Bridge_3_Synths".play();
			$"505_Bridge_3_Percs".play();
		else:
			$"505_Bridge_3_Bass".play();
			$"505_Bridge_3_Guitar_Harmonies".play();
			$"505_Bridge_3_Guitar_Chords".play();
			$"505_Bridge_3_Percs".play();
			$"505_Bridge_3_Synths".play();
			playNextRegion = true;


func _on_606_Break_2_Percs_finished():
	playNext.randomize();
	playNextConfirm = playNext.randi_range(0,1);
	if playNextConfirm == 1 && !playNextRegion:
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"707_Bridge_4_Bass".play();
			$"707_Bridge_4_Percs".play();
		elif playPartsConfirm == 1:
			$"707_Bridge_4_Guitar_Chords".play();
			$"707_Bridge_4_Guitar_Harmonies".play();
			$"707_Bridge_4_Percs".play();
		elif playPartsConfirm == 2:
			$"707_Bridge_4_Synth".play();
			$"707_Bridge_4_Percs".play();
		elif playPartsConfirm ==3:
			$"707_Bridge_4_Bass".play();
			$"707_Bridge_4_Guitar_Chords".play();
			$"707_Bridge_4_Guitar_Harmonies".play();
			$"707_Bridge_4_Percs".play();
			$"707_Bridge_4_Synth".play();
			$"707_Bridge_4_SFX".play();
			playNextRegion = true;
	elif playNextRegion:
		playNextRegion = false;
		$"707_Bridge_4_Bass".play();
		$"707_Bridge_4_Guitar_Chords".play();
		$"707_Bridge_4_Guitar_Harmonies".play();
		$"707_Bridge_4_Percs".play();
		$"707_Bridge_4_Synth".play();
		$"707_Bridge_4_SFX".play();
		playNextRegion = true;
	else:
		playNextRegion = false;
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"606_Break_2_Bass".play();
			$"606_Break_2_Percs".play();
		elif playPartsConfirm == 1:
			$"606_Break_2_Guitar_Chords".play();
			$"606_Break_2_Guitar_Harmonies".play();
			$"606_Break_2_Percs".play();
		elif playPartsConfirm == 2:
			$"606_Break_2_Synth".play();
			$"606_Break_2_Percs".play();
		else:
			$"606_Break_2_Bass".play();
			$"606_Break_2_Guitar_Chords".play();
			$"606_Break_2_Guitar_Harmonies".play();
			$"606_Break_2_Percs".play();
			$"606_Break_2_SFX".play();
			$"606_Break_2_Synth".play();
			playNextRegion = true;


func _on_707_Bridge_4_Percs_finished():
	playNext.randomize();
	playNextConfirm = playNext.randi_range(0,1);
	if playNextConfirm == 1 || playNextRegion || playNextConfirm == 1 && playNextRegion:
		playNextRegion = false;
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"808_Bridge_5_Bass".play();
			$"808_Bridge_5_Percs".play();
		elif playPartsConfirm == 1:
			$"808_Bridge_5_Guitar_Chords".play();
			$"808_Bridge_5_Guitar_Harmonies".play();
			$"808_Bridge_5_Percs".play();
		elif playPartsConfirm == 2:
			$"808_Bridge_5_Synth".play();
			$"808_Bridge_5_Percs".play();
		else:
			$"808_Bridge_5_Bass".play();
			$"808_Bridge_5_Guitar_Chords".play();
			$"808_Bridge_5_Guitar_Harmonies".play();
			$"808_Bridge_5_Percs".play();
			$"808_Bridge_5_Synth".play();
			playNextRegion = true;
	else:
		playNextRegion = false;
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"707_Bridge_4_Bass".play();
			$"707_Bridge_4_Percs".play();
		elif playPartsConfirm == 1:
			$"707_Bridge_4_Guitar_Chords".play();
			$"707_Bridge_4_Guitar_Harmonies".play();
			$"707_Bridge_4_Percs".play();
		elif playPartsConfirm == 2:
			$"707_Bridge_4_Synth".play();
			$"707_Bridge_4_Percs".play();
		else:
			$"707_Bridge_4_Bass".play();
			$"707_Bridge_4_Guitar_Chords".play();
			$"707_Bridge_4_Guitar_Harmonies".play();
			$"707_Bridge_4_Percs".play();
			$"707_Bridge_4_Synth".play();
			playNextRegion = true;


func _on_808_Bridge_5_Percs_finished():
	playNext.randomize();
	playNextConfirm = playNext.randi_range(0,1);
	if playNextConfirm == 1 || playNextRegion || playNextConfirm == 1 && playNextRegion:
		$"909_Outro_Percs".play();
		$"909_Outro_Synth".play();
	else:
		playNextRegion = false;
		playParts.randomize();
		playPartsConfirm = playParts.randi_range(0,3)
		if playPartsConfirm == 0:
			$"808_Bridge_5_Bass".play();
			$"808_Bridge_5_Percs".play();
		elif playPartsConfirm == 1:
			$"808_Bridge_5_Guitar_Chords".play();
			$"808_Bridge_5_Guitar_Harmonies".play();
			$"808_Bridge_5_Percs".play();
		elif playPartsConfirm == 2:
			$"808_Bridge_5_Synth".play();
			$"808_Bridge_5_Percs".play();
		else:
			$"808_Bridge_5_Bass".play();
			$"808_Bridge_5_Guitar_Chords".play();
			$"808_Bridge_5_Guitar_Harmonies".play();
			$"808_Bridge_5_Percs".play();
			$"808_Bridge_5_Synth".play();
			playNextRegion = true;


func _on_909_Outro_Percs_finished():
	playNext.randomize();
	playNextConfirm = playNext.randi_range(0,1);
	if playNextConfirm == 1 || playNextRegion || playNextConfirm == 1 && playNextRegion:
		play();
	else:
		$"909_Outro_Percs".play();
		$"909_Outro_Synth".play();
