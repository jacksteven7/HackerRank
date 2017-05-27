import java.util.Scanner;

public class Solution {
   public static void main(String[] args) {
	Scanner in = new Scanner(System.in);
	int n = in.nextInt();
	int px, py, qx, qy, rx, ry;
	for (int i = 0; i < n; i++) {
		px = in.nextInt();
		py = in.nextInt();
		qx = in.nextInt();
		qy = in.nextInt();
		rx = px + 2 * (qx -px);
		ry = py + 2 * (qy -py);
		System.out.println(rx+" "+ry);
	}
   }
    /**
     * 
2
0 0 1 1
1 1 2 2

https://www.hackerrank.com/challenges/find-point
     */
}
