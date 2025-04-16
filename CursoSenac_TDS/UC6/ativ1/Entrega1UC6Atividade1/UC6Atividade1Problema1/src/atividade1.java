
import java.util.Scanner;
import problema1.CodigoProblema1;


public class atividade1 {

    public static void main(String[] args) {
       
        try (Scanner scanner = new Scanner(System.in)) {
            CodigoProblema1 auditório = new CodigoProblema1(); // Cria uma instância da classe Auditório
            
            // Solicita o número de convidados
            System.out.print("Digite o número de convidados: ");
            int convidados = scanner.nextInt();
            
            // Chama o método para verificar o auditório
            auditório.verificarAuditório(convidados);
        } 
    }
}
        
    
    

