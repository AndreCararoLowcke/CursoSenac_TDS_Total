
import java.util.Scanner;


public class UC6Atividade1Problema4a {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        String[] hospedes = new String[15]; // Array para armazenar até 15 hóspedes
        int contador = 0; // Contador para o número de hóspedes cadastrados

        while (true) {
            // Exibe o menu
            System.out.println("Digite 1- cadastrar; 2- pesquisar; 3- sair");
            int opcao = entrada.nextInt();
            entrada.nextLine(); 

            if (opcao == 1) { // Cadastrar hóspede
                if (contador < 15) {
                    System.out.print("Digite o nome do hóspede: ");
                    String nome = entrada.nextLine();
                    hospedes[contador] = nome; // Armazena o nome no array
                    contador++; // Incrementa o contador
                } else {
                    System.out.println("Máximo de cadastros atingido");
                }
            } else if (opcao == 2) { // Pesquisar hóspede
                System.out.print("Digite o nome do hóspede a ser pesquisado: ");
                String nomePesquisa = entrada.nextLine();
                boolean encontrado = false;

                for (int i = 0; i < contador; i++) {
                    if (hospedes[i].equals(nomePesquisa)) {
                        System.out.println("Hóspede " + nomePesquisa + " foi encontrado no índice " + i);
                        encontrado = true;
                        break; // Encerra o loop se o hóspede for encontrado
                    }
                }

                if (!encontrado) {
                    System.out.println("Hóspede não encontrado");
                }
            } else if (opcao == 3) { // Sair
                System.out.println("Saindo do programa...");
                break; // Encerra o loop
            } else {
                System.out.println("Opção inválida. Tente novamente.");
            }
        }

        entrada.close(); // Fecha o scanner
    }
    }
    

