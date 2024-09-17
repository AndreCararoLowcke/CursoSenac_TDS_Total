
import java.util.Scanner;


public class atividade1Problema3a {

    public static void main(String[] args) {
         Scanner entrada = new Scanner(System.in);
        
        // Recebe o valor padrão da diária
        System.out.print("Digite o valor padrão da diária: R$ ");
        double valorDiaria = entrada.nextDouble();
        entrada.nextLine(); 

        String nome;
        int idade;
        int quantidadeGratuidade = 0;
        int quantidadeMeia = 0;
        double valorTotal = 0;

        while (true) {
            System.out.print("Digite o nome do hóspede (ou 'PARE' para encerrar): ");
            nome = entrada.nextLine();

            if (nome.equalsIgnoreCase("PARE")) {
                break; // Interrompe a entrada de dados
            }

            System.out.print("Digite a idade do hóspede: ");
            idade = entrada.nextInt();
            entrada.nextLine(); // Limpa o buffer

            if (idade < 4) {
                System.out.println(nome + " possui gratuidade");
                quantidadeGratuidade++;
            } else if (idade > 80) {
                System.out.println(nome + " paga meia");
                valorTotal += valorDiaria / 2;
                quantidadeMeia++;
            } else {
                valorTotal += valorDiaria; // Hóspede paga o valor total
            }
        }

        // Exibe o resultado final
        System.out.printf("Total de hospedagens: R$%.2f; %d gratuidade(s); %d meia(s)\n", valorTotal, quantidadeGratuidade, quantidadeMeia);
        
        entrada.close(); // Fecha o scanner
    }

}

// 