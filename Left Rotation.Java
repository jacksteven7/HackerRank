import java.util.Arrays;
import java.util.Scanner;

public class Solution {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		String l = s.nextLine(), res = "";
		String v[] = l.split("\\s+");
		int n = Integer.parseInt(v[0]);
		int r = Integer.parseInt(v[1]);
		l = s.nextLine();
		v = l.split("\\s+");
		if(r%n!=0){
			String a1[] = Arrays.copyOfRange(v, r%n, v.length);
			String a2[] = Arrays.copyOfRange(v, 0, r%n);
			String a[] = new String[n];
			System.arraycopy(a1, 0, a, 0, a1.length);
			System.arraycopy(a2, 0, a, a1.length, a2.length);		
			res = String.join(" ", a);		
			System.out.println(res);
		}else{
			System.out.println(l);
		}	
	}
}
