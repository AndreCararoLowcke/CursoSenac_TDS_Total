package supermercado;

public class Pedido {
    private final int numeroPedido;
    private final CarrinhoDeCompras carrinho;
    private final Cliente cliente;

    public Pedido(int numeroPedido, CarrinhoDeCompras carrinho, Cliente cliente) {
        this.numeroPedido = numeroPedido;
        this.carrinho = carrinho;
        this.cliente = cliente;
    }

    public int getNumeroPedido() {
        return numeroPedido;
    }

    public CarrinhoDeCompras getCarrinho() {
        return carrinho;
    }

    public Cliente getCliente() {
        return cliente;
    }
}
