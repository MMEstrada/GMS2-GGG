/// @description Jump Key
switch(STATE)
{
    case 0: // Standing Right
    image_index = 0; // Reset animation index
    sprite_index = spr_PlayerJump; // Set players animation to Jump
    image_speed = .8; // Set players animation speed
    STATE = 8; // Set players state to Jump
    break;
    
    case 1: // Standing Left
    image_index = 0; // Reset animation index
    sprite_index = spr_PlayerJump; // Set players animation to Jump
    image_speed = .8; // Set players animation speed
    STATE = 8; // Set players state to Jump
    break;
    
    case 2: // Walking Upwards
    image_index = 0; // Reset animation index
    sprite_index = spr_PlayerJump; // Set players animation to Jump
    image_speed = .8; // Set players animation speed
    STATE = 8; // Set players state to Jump
    break;
    
    case 3: // Walking Right
    image_index = 0; // Reset animation index
    sprite_index = spr_PlayerJump; // Set players animation to Jump Right
    image_speed = .8; // Set players animation speed
    STATE = 11; // Set players state to Jump Right
    break;
    
    case 4: // Walking Downwards
    image_index = 0; // Reset animation index
    sprite_index = spr_PlayerJump; // Set players animation to Jump
    image_speed = .8; // Set players animation speed
    STATE = 8; // Set players state to Jump
    break;
    
    case 5: // Walking Left
    image_index = 0; // Reset animation index
    sprite_index = spr_PlayerJump; // Set players animation to Jump Left
    image_speed = .8; // Set players animation speed
    STATE = 12; // Set players state to Jump Left
    break;
}

