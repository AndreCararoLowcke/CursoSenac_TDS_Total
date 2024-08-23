
import java.util.Scanner;
import problema4.CodigoProblema4;

public class atividade1 {

    public static void main(String[] args) {
        // TODO code application logic here
        Scanner scanner = new Scanner(System.in);
        CodigoProblema4 hospede = new CodigoProblema4();
        int opcao;

        do {
            System.out.println("Digite 1- cadastrar; 2- pesquisar; 3- sair");
            opcao = scanner.nextInt();
            scanner.nextLine(); // Consumir a nova linha

            switch (opcao) {
                case 1:
                    System.out.print("Nome do hóspede: ");
                    String nome = scanner.nextLine();
                    if (hospede.cadastrar(nome)) {
                        System.out.println("Hóspede cadastrado com sucesso.");
                    } else {
                        System.out.println("Máximo de cadastros atingido.");
                    }
                    break;

                case 2:
                    System.out.print("Nome do hóspede a pesquisar: ");
                    String nomePesquisa = scanner.nextLine();
                    String resultado = hospede.pesquisar(nomePesquisa);
                    System.out.println(resultado);
                    break;

                case 3:
                    System.out.println("Você saiu do sistema!");
                    break;

                default:
                    System.out.println("Opção inválida. Tente novamente.");
            }
        } while (opcao != 3);

        scanner.close();
    }
}

