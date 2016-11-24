import edu.princeton.cs.algs4.StdOut;
import edu.princeton.cs.algs4.StdIn;

public class Twenty_one{
    public static void main(String[] args) {
        while(!StdIn.isEmpty()){
            String name = StdIn.readString();
            int first = StdIn.readInt();
            int second = StdIn.readInt();
            StdOut.printf("%4s%4d%4d%6.3f\n",name,first,second,first/(float)second);
        }
    }
}
