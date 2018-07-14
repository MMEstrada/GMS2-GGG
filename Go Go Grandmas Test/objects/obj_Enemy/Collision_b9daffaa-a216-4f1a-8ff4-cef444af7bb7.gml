/// @description Collision with the Player
if(withinAttackDist) // Players punch
{
    if(eSTATE < 3)
    {
        if(obj_Player.STATE == 6) // Player punching
        {
            hp -= 15; // Take away hit points
            alarm[2] = 5; // Alarm checks if enemy is dead
            image_index = 0; // Set image index to 0
            sprite_index = spr_EnemyHurt; // Set players animation to hurt
            image_speed = .8; // Set players animation speed
            eSTATE = 4; // Set players state to Hurt
        }
        else
        if(obj_Player.STATE == 7) // Player Combo Punching
        {
            hp -= 20; // Take away hit points
            alarm[2] = 5; // Alarm checks if enemy is dead
            image_index = 0; // Set image index to 0
            sprite_index = spr_EnemyHurt; // Set players animation to hurt
            image_speed = .8; // Set players animation speed
            eSTATE = 4; // Set players state to Hurt
        }
        else
        if(obj_Player.STATE == 9) // Player Kicking
        {
            hp -= 15; // Take away hit points
            alarm[2] = 5; // Alarm checks if enemy is dead
            image_index = 0; // Set image index to 0
            sprite_index = spr_EnemyHurt; // Set players animation to hurt
            image_speed = .8; // Set players animation speed
            eSTATE = 4; // Set players state to Hurt
        }
        else
        if(obj_Player.STATE == 10) // Player Combo Kicking
        {
            hp -= 20; // Take away hit points
            alarm[2] = 5; // Alarm checks if enemy is dead
            image_index = 0; // Set image index to 0
            sprite_index = spr_EnemyHurt; // Set players animation to hurt
            image_speed = .8; // Set players animation speed
            eSTATE = 4; // Set players state to Hurt
        }
        else
        if(obj_Player.STATE == 13) // Jump Kick
        {
            hp -= 15; // Take away hit points
            alarm[2] = 5; // Alarm checks if enemy is dead
            image_index = 0; // Set image index to 0
            sprite_index = spr_EnemyHurt; // Set players animation to hurt
            image_speed = .8; // Set players animation speed
            eSTATE = 4; // Set players state to Hurt
        }
        else
        if(obj_Player.STATE == 14) // Jump Kicking Right
        {
            hp -= 20; // Take away hit points
            x += 50;
            alarm[2] = 5; // Alarm checks if enemy is dead
            image_index = 0; // Set image index to 0
            sprite_index = spr_EnemyHurt; // Set players animation to hurt
            image_speed = .8; // Set players animation speed
            eSTATE = 4; // Set players state to Hurt
        }
        else
        if(obj_Player.STATE == 15) // Jump Kicking Left
        {
            hp -= 20; // Take away hit points
            x -= 50;
            alarm[2] = 5; // Alarm checks if enemy is dead
            image_index = 0; // Set image index to 0
            sprite_index = spr_EnemyHurt; // Set players animation to hurt
            image_speed = .8; // Set players animation speed
            eSTATE = 4; // Set players state to Hurt
        }
    }
}

