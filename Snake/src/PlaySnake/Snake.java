package PlaySnake;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Snake {
	public static final int UP=0;
	public static final int DOWN=1;
	public static final int RIGHT=2;
	public static final int LEFT=3;
	int index=2;
	List<Cell> list=new ArrayList<Cell>(); 
	Random r=new Random();
	int x=r.nextInt(20);
	int y=r.nextInt(20);
	Cell cs=new Cell();
	int score=0;
	int cl=cs.l;
	public Snake() {
		Cell cell0=new Cell(cl*x, cl*y);
		Cell cell1=new Cell(cl*(x+1), cl*y);
		Cell cell2=new Cell(cl*(x+2), cl*y);
		list.add(cell0);
		list.add(cell1);
		list.add(cell2);
	} 
	public void addScore(){
		score+=5;
	}
	public int getScore(){
		return score;
	}
	public void addCell(){
		Cell c=new Cell(cl*(x+list.size()),cl*y);
		list.add(c);
	}
	
	

    public void BAction(){
        sintervel++;
       if(sintervel%50==0){
              
       }
}
    
    int sintervel=0;
	public void step(){
		sintervel++;
	       if(sintervel%35==0){
	    	   int l=list.size()-2;
	   		list.remove(list.get(0));
	   		Cell cell;
	   		switch (index) {
	   		case UP:
	   			
	   			cell=new Cell(list.get(l).getX(),list.get(l).getY()-cl);
	   			list.add(cell);
	   			break;
	   		case DOWN:
	   			
	   			cell=new Cell(list.get(l).getX(),list.get(l).getY()+cl);
	   			list.add(cell);
	   			break;
	   		case RIGHT:
	   			
	   			cell=new Cell(list.get(l).getX()+cl,list.get(l).getY());
	   			list.add(cell);
	   			break;
	   		case LEFT:
	   			
	   			cell=new Cell(list.get(l).getX()-cl,list.get(l).getY());
	   			list.add(cell);
	   			break;
	   		} 
	       }
		
		
	}

}
