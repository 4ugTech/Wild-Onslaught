function scr_push_away(obj)
{
	//Keep enemies from overlapping by pushing away from each other
	with (obj)
	{
		var collision_radius = 10
	    // Skip checking with myself
	    if (id != other.id) 
		{
	        var dx = x - other.x;
	        var dy = y - other.y;
	        var dist = sqrt(dx*dx + dy*dy);

	        // If they overlap, push them apart
	        if (dist > 0 && dist < 2 * collision_radius) 
			{
	            // Calculate how far they're overlapping
	            var overlap = (2 * collision_radius) - dist;
            
	            // Direction from 'other' to 'this enemy'
	            var push_dir = point_direction(other.x, other.y, x, y);
            
	            // Push them both away half the overlap
	            x += lengthdir_x(overlap / 2, push_dir);
	            y += lengthdir_y(overlap / 2, push_dir);
            
	            other.x -= lengthdir_x(overlap / 2, push_dir);
	            other.y -= lengthdir_y(overlap / 2, push_dir);
	        }
	    }
	}
	with (obj)
	{
		var collision_radius = 10
	    // Skip checking with myself
	    if (id != other.id) 
		{
	        var dx = x - other.x;
	        var dy = y - other.y;
	        var dist = sqrt(dx*dx + dy*dy);

	        // If they overlap, push them apart
	        if (dist > 0 && dist < 2 * collision_radius) 
			{
	            // Calculate how far they're overlapping
	            var overlap = (2 * collision_radius) - dist;
            
	            // Direction from 'other' to 'this enemy'
	            var push_dir = point_direction(other.x, other.y, x, y);
            
	            // Push them both away half the overlap
	            x += lengthdir_x(overlap / 2, push_dir);
	            y += lengthdir_y(overlap / 2, push_dir);
            
	            other.x -= lengthdir_x(overlap / 2, push_dir);
	            other.y -= lengthdir_y(overlap / 2, push_dir);
	        }
	    }
	}
}