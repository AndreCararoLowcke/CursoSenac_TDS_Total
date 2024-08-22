package problema1;

public class CodigoProblema1 {
  
    final int capacidadeAlfa;
    final int espacoAdicionalAlfa;
    final int capacidadeBeta;

    public CodigoProblema1() {
            // Definindo a capacidade dos auditórios
            this.capacidadeAlfa = 150;
            this.espacoAdicionalAlfa = 70;
            this.capacidadeBeta = 350;
        }    

    public void verificarAuditório(int convidados) {
        // Verifica se o número de convidados é válido
        if (convidados > capacidadeBeta || convidados < 0) {
            System.out.println("Número de convidados inválido.");
        } 
        else {
            // Verifica qual auditório é mais adequado
            if (convidados <= capacidadeAlfa) {
                System.out.println("Use o auditório Alfa");
            } 
            else {
                if (convidados <= 220){
                    
                    // Para o auditório Alfa acrescentando cadeiras
                    System.out.println("Use o auditório Alfa");
                    int totalCadeirasNecessarias = convidados - capacidadeAlfa;
                    if (totalCadeirasNecessarias <= espacoAdicionalAlfa) {
                        System.out.println("Inclua mais " + totalCadeirasNecessarias + " cadeiras");
                    }
                
                } 
                else {
                    System.out.println("Utiliza o auditório Beta!.");
                }
            }
        }
    }
}
    

