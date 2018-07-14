/// @description Check if hp is greater than 0
if(hp <= 0) // If health is all gone
{
    hp = 0; // Not neccessary, but sets health points to 0
    image_index = 0; // Resets image index to 0
    sprite_index = spr_EnemyDeath; // Set enemy animation to Death
    image_speed = .8; // Set enemy animation speed
    eSTATE = 5; // Set enemy state to Death
    if(enemyCount < totalEnemies) // If enemyCount is less than desired enemies
    {
        instance_create(random(room_width),y,obj_Enemy); // Create a new enemy at random pos
        enemyCount += 1; // Add to enemyCount
    }
    else
    if(enemyCount == totalEnemies) // If all enemies are dead
    {
        instance_create(1000, 200, obj_GO); // Create the GO obj to let player know its time to move
        canMoveOn = true; // Allows player to proceed
    }
    fade = 1; // Fade enemy alpha and destroy him
}

