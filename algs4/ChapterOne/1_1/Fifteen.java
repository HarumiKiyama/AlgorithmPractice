import edu.princeton.cs.algs4.StdOut;

public class Fifteen {
    public static int[] histogram(int[] a, int M){
        int[] Mlist=new int[M];
        int count;
        for(int i=0;i<M;i++){
            count=0;
            for(int j=0;j<a.length;j++){
                if(a[j]==i) count++;
            }
            Mlist[i]=count;
        }
        return Mlist;
    }
    public static void main(String[] args) {
        int[] a=new int[]{1,2,3,4,5};
        int[] res=histogram(a,12);
        for(int i=0;i<res.length;i++){
            StdOut.println(res[i]);
        }
    }
}
