x = oPlayer.x;
y = oPlayer.y + 10;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay -=1
recoil =
if (mouse_check_button(mb_left)) && (firingdelay <0)
{
	recoil=4;
	firingdelay = 5;
	with(instance_create_layer(x,y,"Bullet",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}