/// player_move()


// Sprites
movement = MOVE;



// Direction
dir = point_direction(0,0, obj_get_input.xaxis, obj_get_input.yaxis);
if (obj_get_input.xaxis ==0 && obj_get_input.yaxis == 0) {
    len = 0;
} else {
    scr_get_face();
    len = obj_score_control.pl_spd;
}

hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len, dir);

// Check collisions
if (place_meeting(x+hspd, y, obj_wall)) {
    while (!place_meeting(x+sign(hspd), y, obj_wall)) {
        x+=sign(hspd);
    }
    hspd = 0;
}
x+= hspd;

if (place_meeting(x, y+vspd, obj_wall)) {
    while (!place_meeting(x, y+sign(vspd), obj_wall)) {
        y+=sign(vspd);
    }
    vspd = 0;
}
      
// Move
y+= vspd;

// Sprite Control
image_speed = .2;

if (len == 0) {
    image_index = 0;
}

