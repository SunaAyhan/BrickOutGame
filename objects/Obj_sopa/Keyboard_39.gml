/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54CE9052
/// @DnDArgument : "var" "x + sprite_xoffset"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1300"
if(x + sprite_xoffset < 1300)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 204E85B7
	/// @DnDParent : 54CE9052
	/// @DnDArgument : "x" "+6"
	/// @DnDArgument : "x_relative" "1"
	x += +6;
}