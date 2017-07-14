import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class Solution {
	static Map<Integer,Integer> mapval; 
    public static void main(String[] args) {
    	mapval = new HashMap<Integer,Integer>();
        Scanner in = new Scanner(System.in);
        int n = in.nextInt(), best = 1;
        for (int i = 2; i <= n/2; i++) {
        	if(n%i==0){
        		best = compare(best,i);
        	}
		}
        best = compare(best,n);
        System.out.println(best);
    }

	private static int compare(int best, int i) {
		int sumBest = sumVal(best), sumI = sumVal(i);
		if(sumBest==sumI){
			return Math.min(best, i);
		}else{
			return sumBest > sumI ? best : i ; 
		}
	}

	private static int sumVal(int num) {
		if(mapval.get(num)==null){
			String numStr = String.valueOf(num);
			int valTotal = 0;
			for (int i = 0; i < numStr.length(); i++) {
				valTotal += Integer.parseInt(String.valueOf(numStr.charAt(i))); 
			}
			mapval.put(num, valTotal);
		}
		return mapval.get(num);
	}
}
