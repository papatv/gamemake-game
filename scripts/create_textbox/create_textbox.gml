///Description create_textbox
///@arg text
///@arg speakers

var tbox = instance_create_layer(0,0,"Text", o_textbox);

with(tbox) {
	text = argument[0];
	speakers = argument[1];
	
	var length = array_length_1d(text)
	var i = 0; repeat(length){
	names[i] = speakers[i].name;
	portraits[i] = speakers[i].portrait_index;
	voices[i] = speakers[i].voice;
	i++
	}
	event_perform(ev_other, ev_user1);
}

return tbox;