public class Cluster
{
    public final static int NUM_STEMS = 7; //number of tendrils per cluster
    private ArrayList<Tendril> bam;
    public Cluster(int len, int x, int y)
    {
          bam = new ArrayList <Tendril> ();
       
       for(int i =0; i < NUM_STEMS; i++) {
        double boomAngle = i * (2 * Math.PI / NUM_STEMS);
        Tendril boom = new Tendril(len, boomAngle,x, y); 
        bam.add(boom);
        boom.show();
        
       }
       
    }
}

