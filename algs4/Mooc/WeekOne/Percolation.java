import edu.princeton.cs.algs4.StdOut;

public class Percolation{
    private boolean[][] matrix;
    public Percolation(int n){
        if(n<=0){
            throw new java.lang.IllegalArgumentException();
        }else{
            matrix = new int[n][n];
            for(int i=0;i<matrix.length;i++){
                for(int j=0;j<matrix[0].length;j++){
                    matrix[i][j]=false;
                }
            }
        }
    }
    private void throwException(int row, int col) {
        if(row<1&&row>length){
            throw new java.lang.IndexOutOfBoundsException();
        }
        if(col<1&&col>length){
            throw new java.lang.IndexOutOfBoundsException();
        }
    }
    public void open(int row, int col){
        throwException(row, col);
        matrix[row][col]=true;
    }
    public boolean isOpen(int row, int col){
        throwException(row, col);
        return matrix[row][col];
    }
    public boolean isFull(int row, int col){
        throwException(row, col);
        
    }
    public boolean percolates(){
        
    }
    public static void main(String[] args) {
        
    }
}
