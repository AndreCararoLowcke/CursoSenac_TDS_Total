package supermercado;

/**
 * Classe Supermercado.
 * Exemplo simples de execução de um fluxo de compra:
 * cria um carrinho, adiciona produtos, cria um pedido e finaliza.
 */

public class Supermercado {

    public static void main(String[] args) {
        
        // Criação do cliente
        Cliente cliente = new Cliente("João Silva", "123.456.789-00", "joao@email.com");

        // Criação do carrinho de compras e adição de produtos
        CarrinhoDeCompras carrinho = new CarrinhoDeCompras();
        carrinho.adicionarProduto("Arroz", 1, 3.99);
        carrinho.adicionarProduto("Filé de frango sassami", 2, 21.99);

        // Criação do pedido
        Pedido pedido = new Pedido(1, carrinho, cliente);

        // Exibição do pedido usando a view
        PedidoView pedidoView = new PedidoView();
        pedidoView.exibirPedido(pedido);
    }
}     