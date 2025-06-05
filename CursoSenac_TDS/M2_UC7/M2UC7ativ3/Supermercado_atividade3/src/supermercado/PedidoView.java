package supermercado;

public class PedidoView {

    /**
     * Exibe todas as informações de um pedido.
     */
    public void exibirPedido(Pedido pedido) {

        System.out.println("Número do Pedido: " + pedido.getNumeroPedido());

        Cliente cliente = pedido.getCliente();
        System.out.println("Cliente: " + cliente.getNome());
        System.out.println("CPF: " + cliente.getCpf());
        System.out.println("Email: " + cliente.getEmail());

        System.out.println("Produtos no Carrinho:");
        CarrinhoDeCompras carrinho = pedido.getCarrinho();
        carrinho.listarProdutos();

        double total = carrinho.calcularTotal();
        System.out.println("Total do Pedido: R$ " + total);

    }
}
