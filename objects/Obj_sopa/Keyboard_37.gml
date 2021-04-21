/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74F5A077
/// @DnDArgument : "var" "x+sprite_xoffset"
/// @DnDArgument : "op" "2"
if(x+sprite_xoffset > 0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3298E3A4
	/// @DnDParent : 74F5A077
	/// @DnDArgument : "x" "-6"
	/// @DnDArgument : "x_relative" "1"
	x += -6;
}