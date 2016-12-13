import edu.princeton.cs.algs4.StdOut;
public class Twenty{
    public static double Ln(int n){
        if(n==1) return 0;
        return Math.log(n)+Ln(n-1);
    }
    public static void main(String[] args) {
        StdOut.println(Ln(12));
    }
}
