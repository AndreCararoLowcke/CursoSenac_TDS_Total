package supermercado;

public class Produto {

    private String nome;
    private int quantidade;
    private double precoUnitario;

    public Produto(String nome, int quantidade, double precoUnitario) {
        this.nome = nome;
        this.quantidade = quantidade;
        this.precoUnitario = precoUnitario;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public double getPrecoUnitario() {
        return precoUnitario;
    }
    
    public double calcularTotal(double preco, int quantidade) {
        return  preco * quantidade;
    }
    public String getNome() {
        return nome;
    }

}
