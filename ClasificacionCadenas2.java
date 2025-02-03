/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package clasificacioncadenas;

/**
 *
 * @author sanch
 */
import java.util.Scanner;

public class ClasificacionCadenas2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int contadorEnteros = 0;
        int contadorPalabras = 0;
        int contadorCompuestas = 0;
        
        System.out.print("Ingresa una linea de texto: ");
        String input = scanner.nextLine().trim();

        String[] palabras = input.split("\\s+");

        for (String palabra : palabras) {
            if (palabra.matches("\\d+")) {
                contadorEnteros++;
            } else if (palabra.matches("[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ]+")) {
                contadorPalabras++;
            } else {
                contadorCompuestas++;
            }
        }

        if (contadorEnteros > 0) {
            System.out.print(contadorEnteros + " -enteros \n");
        }
        if (contadorPalabras > 0) {
            System.out.print(contadorPalabras + " -palabras\n");
        }
        if (contadorCompuestas > 0) {
            System.out.print(contadorCompuestas + " -compuestas\n");
        }

        scanner.close();
    }
}

