//Cheat code for infinite health
if(keyboard_check_pressed(ord("H")))
{
	if(infinite_health = false)
	{
		temp_hp = hp
		hp = 9999999999
		infinite_health = true
	}
	else
	{
		hp = temp_hp
		infinite_health = false
	}
}