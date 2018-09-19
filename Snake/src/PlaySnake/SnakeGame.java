package PlaySnake;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.util.Timer;
import java.util.TimerTask;

import javax.swing.JFrame;
import javax.swing.JPanel;


public class SnakeGame extends JPanel implements KeyListener{
	public static final int WIDTH = 606; // ����
	public static final int HEIGHT = 636; // ����
	public static final int UP=0;
	public static final int DOWN=1;
	public static final int LEFT=2;
	public static final int RIGHT=3;
	private static final int START = 4;
	private static final int RUNNING = 5;
	private static final int PAUSE = 6;
	private static final int GAME_OVER = 7;
	private int intervel ; // ʱ����(����)
	private Timer timer; // ��ʱ��
	int index=START;
	Cell cells=new Cell();
	Snake snakes=new Snake();
	Food foods=new Food();
	int l=cells.l;
//	private int[][] rocks=new int[SnakeGame.WIDTH][SnakeGame.HEIGHT];
//	//����ǽ

	
	public void paint(Graphics g){
		//��ͼ����  
		g.setColor(Color.LIGHT_GRAY);
		
		//panel������ɫ
		for(int i=0;i<SnakeGame.WIDTH-l;i+=l){
			for(int j=0;j<SnakeGame.HEIGHT-l*2;j+=l)
			g.fillRoundRect(i, j, l-1, l-1, 8, 8);                  //�����γ䵱����
		}
		paintScore(g);
		paintSnake(g);
		paintFood(g);
		paintState(g);
	}
	
	protected void paintSnake(Graphics g){//��ͼ����  
		g.setColor(Color.GRAY);
		for(Cell cell:snakes.list){
			    g.fillRoundRect(cell.getX(), cell.getY(), l-1, l-1, 8, 8);
		}
	}
	
	protected void paintFood(Graphics g){                      //��ͼ����  
		g.setColor(Color.CYAN);
		//panel������ɫ
		int x=foods.getX();
		int y=foods.getY();
		g.fillRoundRect(x*l, y*l, l-1, l-1, 8, 8);
		
	}
	
	public void paintScore(Graphics g){
		int c=snakes.getScore();
		g.setColor(Color.red);      //�����ַ�����ɫ
		g.setFont(new Font(Font.SANS_SERIF,Font.BOLD,20));
		g.drawString("Score:"+c, 0, 20);
	}
	
	public void paintState(Graphics g){
		switch(index){
		case START:
			g.setColor(Color.white);      //�����ַ�����ɫ
			g.setFont(new Font(Font.SANS_SERIF,Font.BOLD,70));
			g.drawString("Play-Snake", 100, 280); 
			g.drawString("��ENT����ʼ��Ϸ", 10, 400); 
			break;
		case PAUSE:
			g.setColor(Color.white);      //�����ַ�����ɫ
			g.setFont(new Font(Font.SANS_SERIF,Font.BOLD,70));
			g.drawString("PAUSE", 100, 280); 
			break;
		case GAME_OVER:
			g.setColor(Color.white);      //�����ַ�����ɫ
			g.setFont(new Font(Font.SANS_SERIF,Font.BOLD,70));
			g.drawString("GAMEOVER", 100, 280); 
			g.drawString("���ո������", 90, 400);
			g.drawString("�ٰ�ENT����ʼ��Ϸ", 10, 520);
			break;
		}
	}
	
	@Override
	public void keyTyped(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void keyPressed(KeyEvent e) {
		if(e.getKeyCode()==KeyEvent.VK_ENTER){
			index=RUNNING;
		}else if(e.getKeyCode()==KeyEvent.VK_P){
			index=PAUSE;
		}else if(index==GAME_OVER){
			if(e.getKeyCode()==KeyEvent.VK_SPACE){
				snakes=new Snake();
				foods=new Food();
			}
		}
		if(index==RUNNING){
			switch(e.getKeyCode()){
			case KeyEvent.VK_UP:
				if(snakes.index!=1){
					snakes.index=0;
					snakes.step();
					break;
				}
			case KeyEvent.VK_DOWN:
				if(snakes.index!=0){
				snakes.index=1;
				snakes.step();
				break;}
			case KeyEvent.VK_RIGHT:
				if(snakes.index!=3){
				snakes.index=2;
				snakes.step();
				break;}
			case KeyEvent.VK_LEFT:
				if(snakes.index!=2){
				snakes.index=3;
				snakes.step();
				break;}
			}
			repaint();
		}
		
		
	}

	@Override
	public void keyReleased(KeyEvent e) {
		// TODO Auto-generated method stub
		
	}
	
	

	public static void main(String[] args) {
		JFrame frame=new JFrame("Play-Snake");
		SnakeGame game=new SnakeGame();
		frame.add(game);//�������ӵ�������
		frame.setSize(WIDTH,HEIGHT);
		frame.setAlwaysOnTop(true);//����һֱ����
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);//����Ĭ�Ϲرճ���
		frame.setLocationRelativeTo(null);//���ô���λ�þ���
		frame.setVisible(true);//���ô��ڿɼ�
		frame.setResizable(false);
		frame.addKeyListener(game);
		game.action();
	}
	
	public void action() {
        intervel=10;
        timer = new Timer(); // ��ײ�������
        timer.schedule(new TimerTask() {
        public void run() {
	          if(index==RUNNING){
	        	        checkFood();
	                    MoveSnake();
		                BangAction();
	                    BangSnake();
	                    BangWall();
	          }
	          repaint();
           	}          
        },intervel, intervel);

	} 
	
	
	
	public void checkFood(){
		int x=foods.getX()*l;
		int y=foods.getY()*l;
		for(Cell cell:snakes.list){
			if(cell.getX()==x&&cell.getY()==y){
				foods=new Food();
			}
		}
	}

	public void MoveSnake() {
		snakes.step();
	}
	
	public void BangAction(){
		int s=snakes.list.size();
			if(snakes.list.get(s-1).getX()==foods.getX()*l&&snakes.list.get(s-1).getY()==foods.getY()*l){
				Cell c=new Cell(snakes.list.get(0).getX(),snakes.list.get(0).getY());
				snakes.list.add(0,c);
				snakes.addScore();
				foods=new Food();
			}
	}
	public void BangSnake(){
		int s=snakes.list.size();
		int x=snakes.list.get(s-1).getX();
		int y=snakes.list.get(s-1).getY();
		for(int i=s-2;i>=0;i--){
			Cell cell=new Cell(snakes.list.get(i).getX(),snakes.list.get(i).getY());
			if(x==cell.getX()&&y==cell.getY()){
				index=GAME_OVER;
			}
		}
	}
	public void BangWall(){
		int s=snakes.list.size();
		int x=snakes.list.get(s-1).getX();
		int y=snakes.list.get(s-1).getY();
		if(x<0||y<0||x>(SnakeGame.WIDTH-l)||y>(SnakeGame.HEIGHT-l*2)){
			index=GAME_OVER;
		}
	}
	
	public void jianpan(){
		switch(snakes.index){
		case UP:
			index=DOWN;
		}
	}
	
	
}
