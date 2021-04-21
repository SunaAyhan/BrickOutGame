/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 2F4BFA19
/// @DnDArgument : "soundid" "sound_sekme"
/// @DnDSaveInfo : "soundid" "sound_sekme"
audio_play_sound(sound_sekme, 0, 0);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 3B9D62F0
/// @DnDArgument : "var" "tuglasayisi"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "Obj_tugla"
/// @DnDSaveInfo : "object" "Obj_tugla"
var tuglasayisi = instance_number(Obj_tugla);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2AEFB147
/// @DnDArgument : "var" "tuglasayisi"
/// @DnDArgument : "op" "3"
if(tuglasayisi <= 0)
{

}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 43D6FB8A
/// @DnDArgument : "var" "bbox_left"
/// @DnDArgument : "op" "1"
if(bbox_left < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 06484EB3
	/// @DnDParent : 43D6FB8A
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 208C5500
/// @DnDArgument : "var" "bbox_right"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_width"
if(bbox_right > room_width)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 6FC139C0
	/// @DnDParent : 208C5500
	/// @DnDArgument : "speed" "-hspeed"
	/// @DnDArgument : "type" "1"
	hspeed = -hspeed;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4FBA9955
/// @DnDArgument : "var" "bbox_top"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "-8"
if(bbox_top < -8)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 52CC9C7A
	/// @DnDParent : 4FBA9955
	/// @DnDArgument : "speed" "-vspeed"
	/// @DnDArgument : "type" "2"
	vspeed = -vspeed;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D6AE079
/// @DnDArgument : "var" "bbox_bottom"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height"
if(bbox_bottom > room_height)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 302C196A
	/// @DnDParent : 4D6AE079
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "player_lives"
	global.player_lives += -1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3A3F26BA
	/// @DnDParent : 4D6AE079
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66B7643A
	/// @DnDParent : 4D6AE079
	/// @DnDArgument : "var" "player_lives"
	/// @DnDArgument : "op" "3"
	if(player_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 029D6991
		/// @DnDApplyTo : {Obj_kontrol}
		/// @DnDParent : 66B7643A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "gameover"
		with(Obj_kontrol) {
		gameover = true;
		
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1683D0EA
		/// @DnDParent : 66B7643A
		/// @DnDArgument : "var" "global.player_score"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "global.high_score"
		if(global.player_score > global.high_score)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 096742EC
			/// @DnDParent : 1683D0EA
			/// @DnDArgument : "expr" "global.player_score"
			/// @DnDArgument : "var" "global.high_score"
			global.high_score = global.player_score;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3D35D9BA
	/// @DnDParent : 4D6AE079
	else
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 28078DCD
		/// @DnDParent : 3D35D9BA
		/// @DnDArgument : "xpos" "xstart"
		/// @DnDArgument : "ypos" "ystart"
		/// @DnDArgument : "objectid" "Obj_top"
		/// @DnDSaveInfo : "objectid" "Obj_top"
		instance_create_layer(xstart, ystart, "Instances", Obj_top);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D523885
		/// @DnDParent : 3D35D9BA
		/// @DnDArgument : "expr" "xstart"
		/// @DnDArgument : "var" "x"
		x = xstart;
	}
}