package uc6atividade4;

import classes.Pagamento;
import classes.IPI;
import classes.PIS;
// import classes.Imposto;

import java.util.Scanner;

public class UC6Atividade4 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Informe o nome da empresa: ");
        String nomeEmpresa = scanner.nextLine();
        Pagamento pagamentos = new Pagamento(nomeEmpresa);

        while (true) {
            System.out.print("Informe o tipo de imposto (PIS/IPI) ou 'pare' para encerrar: ");
            String tipoImposto = scanner.nextLine();

            if (tipoImposto.equalsIgnoreCase("pare")) {
                break;
            }

            if (tipoImposto.equalsIgnoreCase("PIS")) {
                System.out.print("Informe o valor do débito: ");
                double debito = scanner.nextDouble();
                System.out.print("Informe o valor do crédito: ");
                double credito = scanner.nextDouble();
                scanner.nextLine(); // Limpar o buffer
                pagamentos.adicionarImposto(new PIS(debito, credito));
            } else if (tipoImposto.equalsIgnoreCase("IPI")) {
                System.out.print("Informe o valor do produto: ");
                double valorProduto = scanner.nextDouble();
                System.out.print("Informe o valor do frete: ");
                double frete = scanner.nextDouble();
                System.out.print("Informe o valor do seguro: ");
                double seguro = scanner.nextDouble();
                System.out.print("Informe outras despesas: ");
                double outrasDespesas = scanner.nextDouble();
                System.out.print("Informe a alíquota: ");
                double aliquota = scanner.nextDouble();
                scanner.nextLine(); // Limpar o buffer
                pagamentos.adicionarImposto(new IPI(valorProduto, frete, seguro, outrasDespesas, aliquota));
            } else {
                System.out.println("Tipo de imposto inválido.");

            }

        }
    }
}
