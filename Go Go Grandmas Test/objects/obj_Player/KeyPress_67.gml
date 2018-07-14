/// @description Kick Key
switch(STATE)
{
    case 0: // Standing Right
    
    case 1: // Standing Left
    
    case 2: // Walking Upwards
    
    case 3: // Walking Right
    
    case 4: // Walking Downwards
    
    case 5: // Walking Left
    image_index = 0; // Makes sure the animation plays from the beggining
    sprite_index = spr_PlayerKick; // Set player animation to Kick
    image_speed = .6; // Set players animation speed
    STATE = 9; // Change players state to Kick
    break;
    
    case 8: // Jumping
    if(image_index <= 7) // Player is still on his way upwards
    {
        sprite_index = spr_PlayerJumpKick; // Set player animation to Jump Kick
        image_speed = .8; // Set players animation speed
        STATE = 13; // Change players state to Jump Kick
    }
    break;
    
    case 9: // Kicking
    tempIndex = image_index;
    image_index = tempIndex;
    sprite_index = spr_PlayerComboKick; // Set players animation to Combo Kick
    image_speed = .6; // Set players animation speed
    STATE = 10; // Change players state to Combo Kick
    break;
    
    case 11: // Jumping Right
    if(image_index <= 7) // Player is still on his way upwards
    {
        sprite_index = spr_PlayerJumpKick; // Set player animation to Jump Kick
        image_speed = .8; // Set players animation speed
        STATE = 14; // Change players state to Jump Kick Right
    }
    break;
    
    case 12: // Jumping Left
    if(image_index <= 7) // Player is still on his way upwards
    {
        sprite_index = spr_PlayerJumpKick; // Set player animation to Jump Kick
        image_speed = .8; // Set players animation speed
        STATE = 15; // Change players state to Jump Kick Left
    }
    break;
}

