import java.util.HashMap;
import java.util.Scanner;

public class Solution {
   public static void main(String[] args) {
	 Scanner in = new Scanner(System.in);
	 int n,q;
	 String word;
	 n = Integer.parseInt(in.nextLine());
	 HashMap<String,Integer> words = new HashMap<String,Integer>();
	 for (int i = 0; i < n; i++) {
		word = in.nextLine();
		if(words.containsKey(word)){
			words.put(word, words.get(word) + 1);
		}else{
			words.put(word,1);
		}
	 }
	 n = Integer.parseInt(in.nextLine());
	 for (int i = 0; i < n; i++) {
		 word = in.nextLine();
		 if(words.containsKey(word)){
			System.out.println(words.get(word));
		}else{
			System.out.println("0");
		}
	 }
         
   }
    /**
     * 
4
aba
baba
aba
xzxb
3
aba
xzxb
ab

https://www.hackerrank.com/challenges/sparse-arrays
     */
}


