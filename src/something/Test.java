package something;

import java.util.Scanner;

public class Test {
    public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        int a = cin.nextInt();
        int b = cin.nextInt();
        int c = cin.nextInt();
        System.out.println(a+b+c);
        cin.close();
    }
}
