/// @description Check if players hp is greater than 0
if(hp <= 0) // Check health points
{
    switch(STATE) // Switch players state
    {
        case 16: // Hurt
        image_index = 0; // Set image index to 0
        sprite_index = spr_PlayerDeath; // Change players animation to Hurt
        image_speed = .8; // Set players animation speed
        STATE = 17; // Set players state to Dead
        alarm[1] = 60; // Set alarm to restart game
        break;
    }
}

