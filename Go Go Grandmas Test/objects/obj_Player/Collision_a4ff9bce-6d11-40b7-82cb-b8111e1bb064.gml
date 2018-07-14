/// @description Collision with Enemy
if(obj_Enemy.withinAttackDist) // If player is within attacking distance
{
    if(STATE < 6) // If player is walking or standing
    {
        if(other.eSTATE == 3) // If enemy is attacking
        {
            switch(STATE) // Change the players state
            {
                case 0:
                
                case 1:
                
                case 2:
                
                case 3:
                
                case 4:
                
                case 5: // If the player is standing or walking
                if(other.eDir == 0) image_xscale = -1; // Flip players x pos
                else
                if(other.eDir == 1) image_xscale = 1; // Flip players x pos
                image_index = 0; // Set index to player from begining
                sprite_index = spr_PlayerHurt; // Set players animation to Hurt
                image_speed = .8; // Set players animation speed
                hp -= 10; // Take away hit points from player
                alarm[0] = 5; // Set alarm to check if players life is greater than 0
                STATE = 16; // Set players state to Hurt
                break;
            }
        }
    }
}

