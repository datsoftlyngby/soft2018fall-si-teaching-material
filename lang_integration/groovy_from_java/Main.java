public class Main {
    public static void main(String[] args) {

		int[][] matrix = new int[][]{
		  { 1, 2, 3, 4, 5 },
		  { 9, 8, 7, 6, 5, 4, 3, 1 },
		};
    
        Script script = new Script();
        System.out.println(script.computeAvg(matrix));
    }
}