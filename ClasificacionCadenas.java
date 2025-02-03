/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package clasificacioncadenas;

/**
 *
 * @author sanch
 */
import java.util.Scanner;

public class ClasificacionCadenas {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Ingresa una cadena de caracteres: ");
        String input = scanner.nextLine().trim();

        if (input.matches("\\d+")) {
            System.out.println("Es un numero");
        } else if (input.matches("[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ]+")) {
            System.out.println("Es una palabra");
        } else {
            System.out.println("Es compuesta");
        }

        scanner.close();
    }
}
