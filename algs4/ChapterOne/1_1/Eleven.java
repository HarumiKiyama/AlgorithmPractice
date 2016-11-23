import edu.princeton.cs.algs4.StdOut;

public class Eleven {
    public static void main(String[] args) {
        boolean[][] a;
        int M = 2;
        int N = 3;
        a = new boolean[M][N];
        a[0][0]=true;
        a[1][1]=true;
        for(int i =0;i<M;i++){
            for(int j=0;j<N;j++){
                if(a[i][j]){
                    StdOut.print('*');
                }else{StdOut.print(' ');}
            }
            StdOut.println();
        }
    }
}
