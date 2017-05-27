import java.util.Scanner;

public class Solution {
   public static void main(String[] args) {
	 Scanner in = new Scanner(System.in);
	 int n,o,l,r,val;
	 n = in.nextInt();
	 long v[] = new long[n+1];
	 o = in.nextInt();
	 for (int i = 0; i < o; i++) {
		l = in.nextInt();
		r = in.nextInt();
		val = in.nextInt();
		v[l-1] = v[l-1] + val;
		v[r] = v[r] - val;
	 }
	 long max = v[0];
	 for (int i = 1; i < v.length; i++) {
		v[i] = v[i-1] + v[i];
		max = Math.max(max, v[i]);
	 }
	 System.out.println(max);
   }
    /**
     * 
5 3
1 1 100
4 4 100
3 3 100

https://www.hackerrank.com/challenges/crush
     */
}
