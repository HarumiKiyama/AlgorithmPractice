import edu.princeton.cs.algs4.StdOut;

public class Fourteen{
    public static int power(int M){
        int res=1;
        for(int i=0;i<M;i++){
            res*=2;
        }
        return res;
    }
    public static int lg(int N){
        int i;
        for(i=0;power(i)<=N;i++){}
        return i-1;
    }
    public static void main(String[] args) {
        StdOut.println(lg(12));
    }
}
