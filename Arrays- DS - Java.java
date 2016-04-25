import java.util.Scanner;
public class ArrayJack {
	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		String n = s.nextLine();
		String v[] = s.nextLine().split("\\s+");
		String res =  "";
		for (int i = 0; i < v.length; i++) {
			res += v[v.length-i-1]+ " ";
		}
		System.out.println(res.trim());
	}
}
