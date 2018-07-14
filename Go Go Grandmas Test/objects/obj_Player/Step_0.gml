/// @description Movement Code
keyUp = keyboard_check(vk_up) // Up key
keyDown = keyboard_check(vk_down) // Down key
keyLeft = keyboard_check(vk_left) // Left key
keyRight = keyboard_check(vk_right) // Right key

shadow.x = x; // Keeps shadows x pos with players x pos
shadow.y = y; // Keeps shadows y pos with players y pos

depth = -y; // Sets depth of character based on y pos in level

if(keyUp) // Up key is pressed
{
    if(y > yMinDist) // If our players y pos is low enough to move upwards
    {
        switch(STATE)
        {
            case 0: // Standing Right
            STATE = 2; // Change player state to walking upwards
            sprite_index = spr_PlayerWalk; // Change player animation to walking
            image_speed = 1; // Set player animation speed
            break;
            
            case 1: // Standing Left
            STATE = 2; // Change player state to walking upwards
            sprite_index = spr_PlayerWalk; // Change player animation to walking
            image_speed = 1; // Set player animation speed
            break;
            
            case 2: // Walking Upwards
            y -= walkYSpeed; // Move players y pos upwards 
            break;
            
            case 3: // Walking Right
            y -= walkYSpeed; // Move players y pos upwards
            break;
            
            case 5: // Walking Downwards
            y -= walkYSpeed; // Move players y pos upwards
            break;
        }
    }
}

if(keyDown) // Down key is pressed
{
    if(y < yMaxDist) // If our players y pos is high enough to move downwards
    {
        switch(STATE)
        {
            case 0: // Standing Right
            STATE = 4; // Change players state to walking downwards
            sprite_index = spr_PlayerWalk; // Change players animation to walking
            image_speed = 1; // Set players animation speed
            break;
            
            case 1: // Standing Left
            STATE = 4; // Change players state to walking downwards
            sprite_index = spr_PlayerWalk; // Change players animation to walking
            image_speed = 1; // Set players animation speed
            break;
            
            case 3: // Walking Right
            y += walkYSpeed; // Move players y pos downwards
            break;
            
            case 4: // Walking downwards
            y += walkYSpeed; // Move players y pos downwards
            break;
            
            case 5: // Walking left
            y += walkYSpeed; // Move players y pos downwards
            break;
        }
    }
}

if(keyLeft) // Left key is pressed
{
    if(x > xMinDist) // If our players x pos is greater than the room width
    {
        switch(STATE)
        {
            case 0: // Standing right
            sprite_index = spr_PlayerWalk; // Change players animation to walking
            image_speed = 1; // Set players animation speed
            image_xscale = -1; // Set players x scale to facing left
            STATE = 5; // Change players state to walking left
            break;
            
            case 1: // Standing left
            sprite_index = spr_PlayerWalk; // Change players animation to walking
            image_speed = 1; // Set players animation speed
            image_xscale = -1; // Set players x scale to facing left
            STATE = 5; // Change players state to walking left
            break;
            
            case 2: // Walking upwards
            image_xscale = -1; // Set players x scale to facing left
            x -= walkXSpeed; // Move players x pos left
            break;
            
            case 4: // Walking downwards
            image_xscale = -1; // Set players x scale to facing left
            x -= walkXSpeed; // Move players x pos left
            break;
            
            case 5: // Walking left
            x -= walkXSpeed; // Move players x pos left
            break;
        }
    }
}

if(keyRight) // Right key is pressed
{
    if(x < xMaxDist) // If our players x pos is less than then the room width
    {
        switch(STATE)
        {
            case 0: // Standing Right
            sprite_index = spr_PlayerWalk; // Change players animation to walking
            image_speed = 1; // Set players animation speed
            image_xscale = 1; // Set players x scale to facing right
            STATE = 3; // Change players state to walking right
            break;
            
            case 1: // Standing Left
            sprite_index = spr_PlayerWalk; // Change players animation to walking
            image_speed = 1; // Set players animation speed
            image_xscale = 1; // Set players x scale to facing right
            STATE = 3; // Change players state to walking right
            break;
            
            case 2: // Walking upwards
            image_xscale = 1; // Set players x scale to facing right
            x += walkXSpeed; // Move players x pos right
            break;
            
            case 3: // Walking Right
            x += walkXSpeed; // Move players x pos right
            break;
            
            case 4: // Walking downwards
            image_xscale = 1; // Set players x scale facing right
            x += walkXSpeed; // Move players x pos right
            break;
        }
    }
}

if(!keyUp) // Up key is released
{
    switch(STATE)
    {
        case 2: // Walking upwards
        sprite_index = spr_PlayerStand; // Change players animation to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
        break;
    }
}

if(!keyDown) // Down key is released
{
    switch(STATE)
    {
        case 4: // Walking downwards
        sprite_index = spr_PlayerStand; // Change players animation to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
        break;
    }
}

if(!keyLeft) // Left key is released
{
    switch(STATE)
    {
        case 5: // Walking left
        sprite_index = spr_PlayerStand; // Change players animation to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
        break;
    }
}

if(!keyRight) // Right key is released
{
    switch(STATE)
    {
        case 3: // Walking right
        sprite_index = spr_PlayerStand; // Change players animation to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
        break;
    }
}

if(canMoveOn == true && x >= xMaxDist) // If all enemies are dead and player is on the right side of the screen
{
    if(room == rm_01) room_goto(rm_02); // If current level is 1, Go to level 2
    if(room == rm_02) room_goto(rm_03); // If current level is 2, Go to level 3
}

///Animation finish
switch(STATE)
{
    case 6: // Punching
    if(image_index >= image_number - 1) // When animation is finished
    {
        sprite_index = spr_PlayerStand; // Change players animation back to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
    }
    break;
    
    case 7: // Combo Punching
    if(image_index >= image_number - 1) // When animation is finished
    {
        sprite_index = spr_PlayerStand; // Change players animation back to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
    }
    break;
    
    case 8: // Jumping
    if(image_index >= image_number - 1) // When animation is finished
    {
        sprite_index = spr_PlayerStand; // Change players animation back to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
    }
    break;
    
    case 9: // Kicking
    if(image_index >= image_number - 1) // When animation is finished
    {
        sprite_index = spr_PlayerStand; // Change players animation back to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
    }
    break;
    
    case 10: // Combo Kicking
    if(image_index >= image_number - 1) // When animation is finished
    {
        sprite_index = spr_PlayerStand; // Change players animation back to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
    }
    break;
    
    case 11: // Jumping Right
    x += walkXSpeed; // Makes player move to the right accordingly
    if(image_index >= image_number - 1) // When animation is finished
    {
        sprite_index = spr_PlayerStand; // Change players animation back to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
    }
    break;
    
    case 12: // Jumping Left
    x -= walkXSpeed; // Makes player move to the left accordingly
    if(image_index >= image_number - 1) // When animation is finished
    {
        sprite_index = spr_PlayerStand; // Change players animation back to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
    }
    break;
    
    case 13: // Jump Kick
    if(image_index >= image_number - 1) // When animation is finished
    {
        sprite_index = spr_PlayerStand; // Change players animation back to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
    }
    break;
    
    case 14:
    x += walkXSpeed; // Makes player move to the right accordingly
    if(image_index >= image_number - 1) // When animation is finished
    {
        sprite_index = spr_PlayerStand; // Change players animation back to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
    }
    break;
    
    case 15:
    x -= walkXSpeed; // Makes player move to the left accordingly
    if(image_index >= image_number - 1) // When animation is finished
    {
        sprite_index = spr_PlayerStand; // Change players animation back to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
    }
    break;
    
    case 16: // Hurt
    if(image_index >= image_number - 1) // When animation is finished
    {
        sprite_index = spr_PlayerStand; // Change players animation back to standing
        image_speed = .5; // Set players animation speed
        STATE = 0; // Set players state to standing
    }
    break;
    
    case 17: // Death
    {
        if(image_index >= image_number - 1) // When animation is finished
        {
            image_speed = 0; // Set players animation speed
        }
    }
}

