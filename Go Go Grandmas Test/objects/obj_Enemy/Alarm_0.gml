/// @description Random Movement Code
if(eSTATE < 3) // If enemy state is stand/walk
{
    eSTATE = round(random(2)); // Randomly make enemy stand or walk
}
alarm[0] = movementTimer; // Reset alarm to do it all again

