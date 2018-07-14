/// @description Punch Key
switch(STATE) // Change the players state accordingly
{
    case 0: // Standing right
    
    case 1: // Standing left
    
    case 2: // Walking upwards
    
    case 3: // Walking right
    
    case 4: // Walking downwards
    
    case 5: // Walking left
    image_index = 0; // Set the image index to 0 so the punch begins at the first frame
    sprite_index = spr_PlayerPunch; // Change players animation to punch
    image_speed = .8; // Set players speed
    STATE = 6; // Change players state to Punching
    break;
    
    case 6: // The punching state
    if(image_index <= 5) // If players image index is low enough to trigger combo attack
    {
        tempNum = image_index; // Used to set the Combo Punch at the same frame as the Punch
        image_index = tempNum; // Used to set the Combo Punch at the same frame as the Punch
        sprite_index = spr_PlayerComboPunch; // Change the players animation to Combo Punch
        image_speed = .6; // Set the players animation speed
        STATE = 7; // Change players state to combo punch
    }
    break;
}

