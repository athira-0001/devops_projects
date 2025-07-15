import java.util.Scanner;

public class CalculatorApp {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Hi Athira, I am a calculator app ....");

        while (true) {
            System.out.print("Enter any calculation (Example: 1 + 2 or 2 * 5 -> Please maintain spaces as shown in example): ");
            String input = scanner.nextLine().trim();

            if (input.equalsIgnoreCase("exit")) {
                System.out.println("Goodbye!");
                break;
            }

            String[] parts = input.split(" ");
            if (parts.length != 3) {
                System.out.println("Invalid input. Try again.");
                continue;
            }

            try {
                int left = Integer.parseInt(parts[0]);
                String operator = parts[1];
                int right = Integer.parseInt(parts[2]);

                int result = 0;
                boolean validOperation = true;

                switch (operator) {
                    case "+":
                        result = left + right;
                        break;
                    case "-":
                        result = left - right;
                        break;
                    case "*":
                        result = left * right;
                        break;
                    case "/":
                        if (right == 0) {
                            System.out.println("Cannot divide by zero.");
                            continue;
                        }
                        result = left / right;
                        break;
                    default:
                        validOperation = false;
                        System.out.println("Invalid operator. Try again.");
                }

                if (validOperation) {
                    System.out.println("Result: " + result);
                }

            } catch (NumberFormatException e) {
                System.out.println("Invalid number. Try again.");
            }
        }

        scanner.close();
    }
}

