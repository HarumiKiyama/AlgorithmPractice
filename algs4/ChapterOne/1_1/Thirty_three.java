import edu.princeton.cs.algs4.StdOut;

public class Thirty_three{
    public static double dot(double[] x, double[] y){
        double res=0;
        for(int i=0;i<x.length;i++){
            res+=x[i]*y[i];
        }
        return res;
    }
    public static double[][] mult(double[][] a, double[][] b){
        double[][] res=new double[a[0].length][b.length];
        for(int i=0;i<res.length;i++){
            res[i]=mult(a,b[i]);
        }
        return res;
    }
    public static double[][] transpose(double[][] a){
        double[][] res=new double[a[0].length][a.length];
        for(int i;i<res.length;i++){
            for(int j;j<a.length;j++){
                res[i][j]=a[j][i];
            }
        }
        return res;
    }
    public static double[] mult(double[][] a, double[] x){
        double[] res=new double[a[0].length];
        for(int j=0;j<res.length;j++){
            for(int i=0;i<a.length;i++){
                res[j]+=a[j][i]*x[i];
            }
        }
        return res;
    }
    public static double[] mult(double[] y, double[][] a){
        double[] res=new double[1];
        for(int i=0;i<a.length;i++){
            res[0]+=y[i]*a[i][0];
        }
        return res;
    }
    public static void main(String[] args) {}
}
