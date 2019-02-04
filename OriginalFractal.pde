public void setup(){
	size(800, 800);
}

public void draw(){
	fractal(400,400,500);
}

public void fractal(int x, int y, int z){
	if(z <= 10){
		fill((int)(Math.random()*255));
		ellipse(x, y, 500-z, 500-z);
	} else {
		fractal(x+20,y+20,z/2);
		fractal(x-20,y-20,z/2);
		fractal(x+20,y-20,z/2);
		fractal(x-20,y+20,z/2);
	}
} 