/// @description Random Attack
if(eSTATE == 0 || eSTATE == 1 || eSTATE == 2) // If enemy is not attacking already
{
    if(withinAttackDist) // If enemy is close enough to player to attack
    {
       image_index = 0; // Reset animation index to 0
       sprite_index = spr_EnemyPunch; // Set enemy animation to Attack
       image_speed = .8; // Set enemy animation speed
       eSTATE = 3; // Set enemy state to Attack
    }
}

alarm[1] = attackTimer; // Reset attackTimer to do it again

