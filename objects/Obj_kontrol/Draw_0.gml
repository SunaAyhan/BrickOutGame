/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4A7FFE21
/// @DnDArgument : "x" "635"
/// @DnDArgument : "y" "31"
/// @DnDArgument : "caption" ""SKOR: ""
/// @DnDArgument : "var" "global.player_score"
draw_text(635, 31, string("SKOR: ") + string(global.player_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 747C857D
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1491E01B
/// @DnDArgument : "x" "635"
/// @DnDArgument : "y" "45"
/// @DnDArgument : "caption" ""HIGH SCORE: ""
/// @DnDArgument : "var" "global.high_score"
draw_text(635, 45, string("HIGH SCORE: ") + string(global.high_score));

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 6005EC55
/// @DnDArgument : "x" "15"
/// @DnDArgument : "y" "40"
/// @DnDArgument : "sprite" "Spr_lives"
/// @DnDArgument : "stackorder" "1"
/// @DnDArgument : "number" "global.player_lives"
/// @DnDSaveInfo : "sprite" "Spr_lives"
var l6005EC55_0 = sprite_get_height(Spr_lives);
var l6005EC55_1 = 0;
for(var l6005EC55_2 = global.player_lives; l6005EC55_2 > 0; --l6005EC55_2) {
	draw_sprite(Spr_lives, 0, 15, 40 + l6005EC55_1);
	l6005EC55_1 += l6005EC55_0;
}