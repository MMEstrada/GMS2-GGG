/// @description Movement Code
shadow.x = x; // Keeps the shadow x pos with own x pos
shadow.y = y; // Keeps the shadow y pos with own y pos

depth = -y; // Sets depth of character based on y pos in level

// This code checks wether or not the player is within attacking range
if(obj_Player.x < x + abs(sprite_width / 2) && obj_Player.x > x - abs(sprite_width / 2) && obj_Player.y < y + 10 && obj_Player.y > y - 10) withinAttackDist = 1;
else // If not
withinAttackDist = 0; // Enemy cannot attack

if(hp > 0) // If the enemy has health stills
{
    if(obj_Player.x < x - 50) eDir = 1; // Sets enemy direction facing left
    else
    if(obj_Player.x > x + 50) eDir = 0; // Sets enemy direction facing right
    if(eDir == 1) image_xscale = -1; // Sets x scale accordingly
    else
    if(eDir == 0) image_xscale = 1; // Sets x scale accordingly
}

if(eSTATE == 0) // Standing
{
    sprite_index = spr_EnemyStand; // Set enemy animation to Stand
    image_speed = .5; // Set enemy animation speed
}

if(eSTATE == 1) // Walking
{
    sprite_index = spr_EnemyWalk; // Set enemy animation to Walk
    image_speed = 1; // Set enemy animation speed
    if(eDir == 0) x += moveSpeed; // Makes enemy move Right accordingly
    else
    if(eDir == 1) eSTATE = 2; // Set enemy state to Walk(other direction)
    if(obj_Player.y > y + 10) y += moveSpeed / 2; // Walking down towards player
    else
    if(obj_Player.y < y - 10) y -= moveSpeed / 2; // Walking up towards player
}

if(eSTATE == 2) // Walking
{
    sprite_index = spr_EnemyWalk; // Set enemy animation to Walk
    image_speed = 1; // Set enemy animation speed
    if(eDir == 0) eSTATE = 1; // Set enemy state to Walk(other direction)
    else
    if(eDir == 1) x -= moveSpeed; // Makes enemy move left accordingly
    if(obj_Player.y > y + 10) y += moveSpeed / 2; // Walking down towards player
    else
    if(obj_Player.y < y - 10) y -= moveSpeed / 2; // Walking up towards player
}

if(eSTATE == 3) // Attack
{
    if(image_index >= image_number - 1) // If animation is finished
    {
        sprite_index = spr_EnemyStand; // Set enemy animation to Stand
        image_speed = .5; // Set enemy animation speed
        eSTATE = 0; // Set enemy state to Stand
    }
}

if(eSTATE == 4) // Hurt
{
    if(image_index >= image_number - 1) // If animation is finished
    {
        sprite_index = spr_EnemyStand; // Set enemy animation to Stand
        image_speed = .5; // Set enemy animation speed
        eSTATE = 0; // Set enemy state to Stand
    }
}

if(eSTATE == 5) // Death
{
    if(image_index >= image_number - 1) // If death animation is finished
    {
        image_speed = 0; // Set enemy animation to 0 so it stops the animation
    }
}

if(fade == 1) // If enemy is dead
{
    image_alpha -= .05; // Gradually decrease enemy alpha
    if(image_alpha <= 0) // If enemy alpha is fully decreased
    {
        instance_destroy(); // Destroy enemy
        with(shadow) instance_destroy(); // Destroy enemy shadow
    }
}

