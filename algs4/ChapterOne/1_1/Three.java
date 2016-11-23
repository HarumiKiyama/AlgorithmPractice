import edu.princeton.cs.algs4.StdOut;

public class Three{
    public static void main(String[] args) {
        int first = Integer.parseInt(args[0]);
        int second = Integer.parseInt(args[1]);
        int third = Integer.parseInt(args[2]);
        if(first==second&&second==third){
            StdOut.println("equal");
        }else{
            StdOut.println("not equal");
        }
    }
}
