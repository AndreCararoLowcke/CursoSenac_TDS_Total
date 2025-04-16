
import java.util.Scanner;


public class UC6Atividade1Problema5a {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        boolean[][] quartos = new boolean[4][3]; // 4 andares e 3 quartos por andar
        String resposta;

        do {
            System.out.println("Informe Andar (1 a 4): ");
            int andar = entrada.nextInt() - 1; // Ajusta para índice 0
            System.out.println("Informe Quarto (1 a 3): ");
            int quarto = entrada.nextInt() - 1; // Ajusta para índice 0

            // Verifica se o andar e o quarto estão dentro dos limites
            if (andar >= 0 && andar < 4 && quarto >= 0 && quarto < 3) {
                quartos[andar][quarto] = true; // Marca o quarto como ocupado
            } else {
                System.out.println("Andar ou quarto inválido. Tente novamente.");
            }

            System.out.println("Deseja informar outra ocupação? (S/N)");
            resposta = entrada.next();
        } while (resposta.equalsIgnoreCase("S"));

        // Exibe a tabela de quartos
        System.out.println("\nTabela de Ocupação dos Quartos:");
        System.out.println("Andar \\ Quarto |  1  |  2  |  3  |");
        System.out.println("-------------------------------");
        for (int i = 0; i < 4; i++) {
            System.out.print("      " + (i + 1) + "      |");
            for (int j = 0; j < 3; j++) {
                if (quartos[i][j]) {
                    System.out.print("  X  |"); // Quarto ocupado
                } else {
                    System.out.print("     |"); // Quarto desocupado
                }
            }
            System.out.println();
        }

        entrada.close(); // Fecha o scanner
    }
}


