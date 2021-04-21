/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5574CA99
/// @DnDArgument : "var" "basla"
/// @DnDArgument : "value" "false"
if(basla == false)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7282F426
	/// @DnDParent : 5574CA99
	/// @DnDArgument : "soundid" "sound_baslangic"
	/// @DnDSaveInfo : "soundid" "sound_baslangic"
	audio_play_sound(sound_baslangic, 0, 0);

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Random
	/// @DnDVersion : 1.1
	/// @DnDHash : 017BCFF5
	/// @DnDParent : 5574CA99
	/// @DnDArgument : "direction" "135,90,45"
	direction = choose(135,90,45);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 229957EA
	/// @DnDParent : 5574CA99
	/// @DnDArgument : "speed" "3"
	speed = 3;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C6AB7C3
	/// @DnDParent : 5574CA99
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "basla"
	basla = true;
}