package supermercado;

public class PedidoView {

    public void exibirPedido(Pedido pedido) {
        System.out.println("===== Detalhes do Pedido =====");
        System.out.println("Número do pedido: " + pedido.getNumeroPedido());
        System.out.println("Cliente: " + pedido.getCliente().getNome());
        System.out.println("CPF: " + pedido.getCliente().getCpf());
        System.out.println("E-mail: " + pedido.getCliente().getEmail());
        System.out.println("Produtos:");

        for (Produto produto : pedido.getCarrinho().getProdutos()) {
            System.out.println("- " + produto);
        }

        System.out.println("Total: R$ " + pedido.getCarrinho().calcularTotal());
        System.out.println("===============================");
    }
}
