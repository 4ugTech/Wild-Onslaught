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

// Cheat code to set health to zero for instant death
if(keyboard_check_pressed(ord("D")))
{
    hp = 0;
}

if(keyboard_check_pressed(ord("P")))
{
    instance_create_layer(x, y, "Instances_1", obj_ability_menu)
}