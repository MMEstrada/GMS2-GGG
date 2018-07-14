/// @description Initial Variables
jumpHeight = 10; // Height the player can jump
walkXSpeed = 6; // Horizontal walk speed
walkYSpeed = 3; // Vertical walk speed
runSpeed = 8; // Horizontal run speed
hp = 100; // Health Points
STATE = 0; // The state the player is currently in
yMinDist = 496; // Minimum distance the player can go upwards
yMaxDist = 686; // Max distance the player can go downwards
xMinDist = abs(sprite_width / 4); // Minimum distance the player can left. abs returns the absolute value(a positive number)
xMaxDist = abs(room_width - sprite_width / 4); // Max distance the player can go right. abs returns the absolute value(a positive number)
image_speed = .5; // Set the initial idle animation speed
shadow = instance_create(x,y,obj_PlayerShadow); // Creates the shadow under player

// PLAYER STATES //
/*
// 0: Standing Right
// 1: Standing Left
// 2: Walking Up
// 3: Walking Right
// 4: Walking Down
// 5: Walking Left
// 6: Punch
// 7: Combo Punch
// 8: Jumping
// 9: Kick
// 10: Combo Kick
// 11: Jumping Right
// 12: Jumping Left
// 13: Jump Kick
// 14: Jump Kick Move Right
// 15: Jump Kick Move Left
// 16: Hurt
// 17: Death
// 18: Throw
*/

/* */
/*  */
