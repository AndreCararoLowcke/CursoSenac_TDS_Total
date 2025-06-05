package supermercado;

import java.util.ArrayList;
import java.util.List;

public class CarrinhoDeCompras {

    private List<Produto> produtos;

    public CarrinhoDeCompras() {
        produtos = new ArrayList<>();
    }

    public void adicionarProduto(String nome, int quantidade, double preco) {
        Produto produto = new Produto(nome, quantidade, preco);
        produtos.add(produto);
    }

    public void listarProdutos() {
        for (Produto produto : produtos) {
            System.out.println(produto.getQuantidade() + "x " + produto.getNome() + " - R$ " + produto.getPrecoUnitario());
        }
    }

    public double calcularTotal() {
        double total = 0;
        for (Produto produto : produtos) {
            total += produto.getQuantidade() * produto.getPrecoUnitario();
        }
        return total;
    }

    public List<Produto> getProdutos() {
        return produtos;
    }
}
