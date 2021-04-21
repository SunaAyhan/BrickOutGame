/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 31F8F41E
/// @DnDArgument : "soundid" "sound_sekme"
/// @DnDSaveInfo : "soundid" "sound_sekme"
audio_play_sound(sound_sekme, 0, 0);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 258FB10A
/// @DnDArgument : "x" "Obj_sopa.x"
/// @DnDArgument : "y" "Obj_sopa.y"
direction = point_direction(x, y, Obj_sopa.x, Obj_sopa.y);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
/// @DnDVersion : 1
/// @DnDHash : 33607CF1
/// @DnDArgument : "direction" "180"
/// @DnDArgument : "direction_relative" "1"
direction += 180;