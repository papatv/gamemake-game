gui_h = display_get_gui_height();
gui_w = display_get_gui_width();

box = s_textbox;
frame = s_portrait_frame;
portrait = s_portraits;
namebox = s_namebox;

box_width = sprite_get_width(box);
box_height = sprite_get_height(box);
port_width = sprite_get_width(portrait);
port_height = sprite_get_height(portrait);
namebox_width = sprite_get_width(namebox);
namebox_height = sprite_get_height(namebox);

port_x = (gui_w - box_width - port_width) * 0.5;
port_y = (gui_h * .98) - port_height;
box_x = port_x + port_width;
box_y = port_y
namebox_x = port_x;
namebox_y = box_y - namebox_height;

x_buffer = 4;
y_buffer = 4;
text_x = box_x + x_buffer;
text_y = box_y + y_buffer;
name_text_x = namebox_x + (namebox_width/2);
name_text_y = namebox_y + (namebox_height/2);

text_max_width = (box_width - (2*x_buffer))*2;
draw_set_font(global.font);
text_height = string_height("M")

portrait_index = 0;
counter = 0;
pause = false;
voice = s_voice1;

text[0] = "";
page = 0;
name = ""

font = global.font;

