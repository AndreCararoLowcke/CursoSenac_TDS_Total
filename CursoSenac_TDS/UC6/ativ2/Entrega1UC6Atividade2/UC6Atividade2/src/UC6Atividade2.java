
import java.util.Scanner;
import classes.Transporte;
import classes.Hospedagem;
import classes.PacoteViagem;
import classes.Venda; 

public class UC6Atividade2 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Cadastro do transporte
        System.out.print("Informe o tipo de transporte: ");
        String tipoTransporte = scanner.nextLine();
        System.out.print("Informe o valor do transporte (em dólar): ");
        double valorTransporte = scanner.nextDouble();
        Transporte transporte = new Transporte(tipoTransporte, valorTransporte);

        // Cadastro da hospedagem
        scanner.nextLine(); // Limpar o buffer
        System.out.print("Informe a descrição da hospedagem: ");
        String descricaoHospedagem = scanner.nextLine();
        System.out.print("Informe o valor da diária (em dólar): ");
        double valorDiaria = scanner.nextDouble();
        Hospedagem hospedagem = new Hospedagem(descricaoHospedagem, valorDiaria);

        // Cadastro do pacote de viagem
        scanner.nextLine(); // Limpar o buffer
        System.out.print("Informe o destino: ");
        String destino = scanner.nextLine();
        System.out.print("Informe a quantidade de dias: ");
        int quantidadeDias = scanner.nextInt();
        PacoteViagem pacoteViagem = new PacoteViagem(transporte, hospedagem, destino, quantidadeDias);

        // Cálculo do total do pacote
        System.out.print("Informe a margem de lucro (em %): ");
        double margemLucro = scanner.nextDouble();
        System.out.print("Informe as taxas adicionais (em dólar): ");
        double taxasAdicionais = scanner.nextDouble();
        double totalPacote = pacoteViagem.calcularTotal(margemLucro, taxasAdicionais);

        // Cadastro da venda
        scanner.nextLine(); // Limpar o buffer
        System.out.print("Informe o nome do cliente: ");
        String nomeCliente = scanner.nextLine();
        System.out.print("Informe a forma de pagamento: ");
        String formaPagamento = scanner.nextLine();
        Venda venda = new Venda(nomeCliente, formaPagamento, pacoteViagem);

        // Conversão de valores
        System.out.print("Informe a cotação do dólar: ");
        double cotacao = scanner.nextDouble();
        double totalEmReais = venda.converterDolarParaReais(totalPacote, cotacao);

        // Exibição dos resultados
        System.out.println("\n--- Informações da Venda ---");
        System.out.println("Nome do Cliente: " + venda.getNomeCliente());
        System.out.println("Forma de Pagamento: " + venda.getFormaPagamento());
        System.out.println("Destino: " + pacoteViagem.getDestino());
        System.out.println("Total do Pacote (em dólar): " + totalPacote);
        System.out.println("Total do Pacote (em reais): " + totalEmReais);

        scanner.close();
    }
}
