/// @description Initial Variables
ranNum = 0;
hp = 100; // Enemy health points
eSTATE = 0; // Enemy state
moveSpeed = 10; // Speed enemy can move by
canAttack = 1; // Allows enemy to attack
eDir = 0; // Direction enemy is facing
withinAttackDist = 0; // If the player is close enough to player to attack
fade = 0; // Used to fade out and destroy enemy when dead
movementTimer = 60; // Triggers timer for movement
attackTimer = 15; // Triggers timer for attack

image_speed = .5; // Initial animation speed
randomize(); // Ensures random number
image_blend = random(123456789); // Set enemy to random color
shadow = instance_create(x,y,obj_PlayerShadow); // Creates a shadow under enemy

alarm[0] = movementTimer; // Movement alarm
alarm[1] = attackTimer; // Attack alarm

/* Enemy states

0: Stand
1: Walk right
2: Walk left
3: Attack
4: Hurt
5: Death

*/

/* */
/*  */
