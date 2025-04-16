package classes;

public class PacoteViagem {

    private Transporte transporte;
    private Hospedagem hospedagem;
    private String destino;
    private int quantidadeDias;

    public PacoteViagem(Transporte transporte, Hospedagem hospedagem, String destino, int quantidadeDias) {
        this.transporte = transporte;
        this.hospedagem = hospedagem;
        this.destino = destino;
        this.quantidadeDias = quantidadeDias;
    }

    public double calcularTotal(double margemLucro, double taxasAdicionais) {
        double totalHospedagem = hospedagem.calcularTotal(quantidadeDias);
        double totalPacote = transporte.getValor() + totalHospedagem + taxasAdicionais;
        double lucro = totalPacote * (margemLucro / 100);
        return totalPacote + lucro;
    }

    public String getDestino() {
        return destino;
    }
}
