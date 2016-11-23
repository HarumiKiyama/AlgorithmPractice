import edu.princeton.cs.algs4.StdOut;
import edu.princeton.cs.algs4.StdRandom;

public class Thirteen{
    public static void main(String[] args) {
        int M = 3;
        int N = 2;
        int a[][]=new int[M][N];
        for(int i=0;i<M;i++){
            for(int j=0;j<N;j++){
                a[i][j]=StdRandom.uniform(10);
                StdOut.print(a[i][j]);
            }
            StdOut.println();
        }
        for(int i=0;i<N;i++){
            for(int j=0;j<M;j++){
                StdOut.print(a[j][i]);
            }
            StdOut.println();
        }
    }
}
