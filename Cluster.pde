public class Cluster{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    private float p;

    public Cluster(int len, int x, int y){
      p=(float)(Math.random()*2*PI);
      Tendril[]a = new Tendril[7];
      for(int i=0;i<7;i++){
        a[i]= new Tendril(len, p += 2 * PI/10,x,y);
        a[i].show();
      }
        // your code here
    }
    public void show(){
    
    }
}
