package PlaySnake;

import java.util.Random;

public class Food {
	int x;
	int y;
	Food(){
		Random rand=new Random();
		x=rand.nextInt(20);
		y=rand.nextInt(20);
	}
	
	public int getX(){
		return x;
	}
	public int getY(){
		return y;
	}
}
