public void setup()
{
	size(160, 160);
}
public void draw()
{
	sierpinski(0,0,160);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20){
		triangle(x,y,len+x,y,len/2+x,len+y);
	}
	else {
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y+len/2,len/2);
	}
}