size(1024,1024);
//color blue = color(0, 0, 255, 0);
color blue = color(200, 220, 255, 0);
//color red = color(255, 0, 0, 0);
color red = color(255, 190, 150, 0);
color white = color(255, 255, 255, 255);
background(0, 0, 20, 255);
noStroke();
for (int i = 0; i < width; i++)
{
    for (int j = 0; j < height; j++)
    {
        float r = random(1);
        if (r > .999)
        {
            r = (1 - r) * 1000;
            r = pow(r,12);
            float t = random(1);
            for (float f = 0; f < r; f +=.1)
            {
                fill(lerpColor(white, lerpColor(red,blue,t), pow((f / r),2)));
                ellipse(i, j, f * 14,f * 14);
            }
        }
    }
}
