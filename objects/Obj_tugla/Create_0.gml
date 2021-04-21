/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 287B3AE7
/// @DnDArgument : "soundid" "sound_patlama"
/// @DnDSaveInfo : "soundid" "sound_patlama"
audio_play_sound(sound_patlama, 0, 0);

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 4F8A3F0E
/// @DnDInput : 3
/// @DnDArgument : "var" "renk"
/// @DnDArgument : "option" "c_blue"
/// @DnDArgument : "option_1" "c_gray"
/// @DnDArgument : "option_2" "c_purple"
renk = choose(c_blue, c_gray, c_purple);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 651BA966
/// @DnDArgument : "value" "renk"
/// @DnDArgument : "instvar" "14"
image_blend = renk;