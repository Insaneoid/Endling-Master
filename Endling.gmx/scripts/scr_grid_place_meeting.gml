///grid_place_meeting(x,y)
var xx = argument[0];
var yy = argument[1];

// Remember position
var xp = x;
var yp = y;

// Update position
x = xx;
y = yy;

// Check meetings
var x_meeting = (obj_level.grid[# bbox_right div CELL, bbox_top div CELL] != FLOOR) || 
                (obj_level.grid[# bbox_left div CELL, bbox_top div CELL] != FLOOR);

var y_meeting = (obj_level.grid[# bbox_right div CELL, bbox_bottom div CELL] != FLOOR) ||
                (obj_level.grid[# bbox_left div CELL, bbox_bottom div CELL] != FLOOR);
                
                
var centre_meeting = obj_level.grid[# xx div CELL, yy div CELL] != FLOOR;

//Move back
x = xp;
y = yp;

// Return
return x_meeting || y_meeting || centre_meeting;
