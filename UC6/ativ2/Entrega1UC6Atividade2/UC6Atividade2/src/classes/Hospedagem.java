package classes;

public class Hospedagem {

    private String descricao;
    private double valorDiaria;

    public Hospedagem(String descricao, double valorDiaria) {
        this.descricao = descricao;
        this.valorDiaria = valorDiaria;
    }

    public double calcularTotal(int dias) {
        return valorDiaria * dias;
    }

    public String getDescricao() {
        return descricao;
    }

    public double getValorDiaria() {
        return valorDiaria;
    }
}
