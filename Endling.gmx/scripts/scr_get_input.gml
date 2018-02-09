//get keyboard input
right       = keyboard_check(vk_right);
left        = keyboard_check(vk_left);
down        = keyboard_check(vk_down);
up          = keyboard_check(vk_up);

attack      = keyboard_check_pressed(vk_space);
dash        = keyboard_check_pressed(vk_shift);
interact    = keyboard_check_pressed(vk_control);
pause       = keyboard_check_pressed(ord('P'));
inv         = keyboard_check_pressed(ord('I'));

xaxis = (right-left);
yaxis = (down-up);

//gamepad input
if (gamepad_is_connected(0)) {
    gamepad_set_axis_deadzone(0, 0.5);
    xaxis       = (gamepad_axis_value(0, gp_axislh));
    yaxis       = (gamepad_axis_value(0, gp_axislv));
    attack      = (gamepad_button_check_pressed(0, gp_shoulderlb));
    dash        = (gamepad_button_check_pressed(0, gp_shoulderrb));
    interact    = (gamepad_button_check_pressed(0, gp_face1));
    pause       = (gamepad_button_check_pressed(0, gp_start));
    inv         = (gamepad_button_check_pressed(0, gp_face3));
    right       = (gamepad_button_check_pressed(0, gp_padr));
    left        = (gamepad_button_check_pressed(0, gp_padl));
    down        = (gamepad_button_check_pressed(0, gp_padd));
    up          = (gamepad_button_check_pressed(0, gp_padu));
}
