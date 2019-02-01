import java.util.Arrays;
import java.util.Scanner;
import java.util.List;

public class Main {

    public static void main(String[] args) {

        int[] denomination = {1, 2, 5, 10, 20, 50, 100, 200, 500, 1000, 2000, 5000, 10000, 20000, 50000};
        System.out.println("Podaj kwotę:");
        int amount;
        Scanner given = new Scanner(System.in);
        amount = given.nextInt();
        for (Integer i : DynamicChange.solve_change_dynamic(denomination,amount)) {
            System.out.println(i);
        }
    }
}
