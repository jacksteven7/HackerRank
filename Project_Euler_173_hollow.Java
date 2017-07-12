import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {
  public static void main(String[] args) {
    Scanner s = new Scanner(System.in);
		long n = s.nextLong();
		long act1 = 8, act2 = 12, div1 = 8, div2 = 12, count = 0, acc1 = 0, acc2 = 0	;
		while(act1<n){
		  acc1 = (n-act1)%div1==0?1:0 ;
			acc2 = (n-act2)%div1==0?1:0 ;
			count = (long) (count + Math.ceil((double)(n-act1)/div1) + acc1);
			count = (long) (count + Math.ceil((double)(n-act2)/div1) + acc2);
			div1 += 8;
			div2 += 8;
			act1 += div1;
			act2 += div2;
		}
		System.out.println(count);
    }
}
