package jisuanke;

import java.util.Scanner;

public class P2 {
    public static void main(String[] args) {
        Scanner cin = new Scanner(System.in);
        while (cin.hasNext()) {
            int a = cin.nextInt();
            int b = cin.nextInt();
            if (a % b == 0)
                System.out.println("YES");
            else
                System.out.println("NO");
        }
        cin.close();
    }
}
