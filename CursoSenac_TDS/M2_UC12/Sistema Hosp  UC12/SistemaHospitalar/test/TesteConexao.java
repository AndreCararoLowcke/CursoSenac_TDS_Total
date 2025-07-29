
import java.sql.Connection;
import java.sql.SQLException;
import persistencia.ConexaoBanco;

public class TesteConexao {
    public static void main(String[] args) {
        ConexaoBanco conexao = new ConexaoBanco();
        try {
            Connection conn = conexao.getConexao();
            System.out.println("Conectado com sucesso ao banco de dados!");
            conn.close();
        } catch (SQLException e) {
            System.out.println("Erro ao conectar: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
