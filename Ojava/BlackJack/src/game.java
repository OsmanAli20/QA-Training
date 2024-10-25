
import java.util.Scanner;

public class game {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Give me a number");
        int num1 = scanner.nextInt();
        System.out.println("Give me a number");
        int num2 = scanner.nextInt();

        checkConditon(num1, num2);
        //int target = 21;
    }

    public static void checkConditon(int num1, int num2) {
        int target = 21;
        if (num1 > target && num2 > target) {
            System.out.println("Both numbers are above " + target);
        }

        else if (num1 < target && num2 > target) {
            System.out.println(num1 + "is closer 21");
        }


        else if (num1 > target && num2 < target) {
            System.out.println(num2 + "is closer 21");
        }

      else if (num1 < num2 ){
            System.out.println(num2 + "is closer to 21");
        }

      else {
            System.out.println(num1 + "is closer to 21");
        }



      

    }


//        int num3 = num1 + num2;


//        if (num3 > 0 && num3 < 21) {
//            System.out.println(num3 + " is a valid number");
//        }else{
//            System.out.println(num3 + " is over 21 and so the game is over");
//        }

}


