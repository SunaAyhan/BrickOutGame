/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A53C110
/// @DnDArgument : "var" "gameover"
/// @DnDArgument : "value" "true"
if(gameover == true)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 17DD7735
	/// @DnDParent : 2A53C110
	var l17DD7735_0;
	l17DD7735_0 = keyboard_check_pressed(vk_space);
	if (l17DD7735_0)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 73938F96
		/// @DnDInput : 2
		/// @DnDParent : 17DD7735
		/// @DnDArgument : "var" "player_score"
		/// @DnDArgument : "var_1" "player_lives"
		global.player_score = 0;
		global.player_lives = 0;
	
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 61AC4768
		/// @DnDParent : 17DD7735
		room_restart();
	}
}