life--;

image_alpha -= 0.08;

increase_scale *= 1.1;

if (life <= 0)
{
	instance_destroy();
}

instance_destroy(other);