package guibuilder;

import java.util.ArrayList;
import javax.swing.JOptionPane;

public class ListaPedido {

    public static ArrayList<Pedido> lista = new ArrayList<Pedido>();

    public static boolean adicionar(Pedido p) {

        //Exceções
        try {
            //Se tudo der certo
            //Validações
            if (p.getNomeCliente().isBlank() || p.getNomeCliente().isEmpty()) {
                JOptionPane.showMessageDialog(null, "Preencha o nome corretamente!");
            } else if (p.getAcompanhamento().isBlank() || p.getAcompanhamento().isEmpty()) {
                JOptionPane.showMessageDialog(null, "Selecione ao menos um acompanhamento!");
            } else if (p.getAdicional().isBlank() || p.getAdicional().isEmpty()) {
                JOptionPane.showMessageDialog(null, "Campo adicional inválido!");
            } else if (p.getPreco() <= 0) {
                JOptionPane.showMessageDialog(null, "Preço não pode ser menor ou igual a zero!");
            } else if (p.getQuantidade() <= 0) {
                JOptionPane.showMessageDialog(null, "Preencha a quantidade de maneira válida!");
            } else {
                p.setId(lista.size() + 1);
                lista.add(p);
                JOptionPane.showMessageDialog(null, "Pedido cadastrado com sucesso!");
                return true;
            }
        } catch (Exception e) {
            //Se tudo der errado
            System.out.println("Ocorreu um erro ao adicionar a lista");
        }
        return false;
    }

    public static ArrayList<Pedido> listar() {
        return lista;
    }

    public static boolean excluir(int id) {
        try {
            if(id < 0){
                JOptionPane.showMessageDialog(null, "Selecione um item para excluir:");
            } else {
                lista.remove(id);
                return true;
            }            
        } catch (Exception e) {
            System.out.println("Ocorreu um erro ao excluir da lista");
        }
        return false;
    }
}
