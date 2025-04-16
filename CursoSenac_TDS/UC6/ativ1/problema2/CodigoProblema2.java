package problema2;

public class CodigoProblema2 {

    String quartoA, frase;
    String quartoB;
    String desconto = "";
    String nomeCliente1;
    String nomeCliente2;
    int idadeCliente1;
    int idadeCliente2;

    public CodigoProblema2(String nomeCliente1, int idadeCliente1, String nomeCliente2, int idadeCliente2) {
        this.quartoA = quartoA;
        this.quartoB = quartoB;
        this.frase = frase; 
        this.desconto = desconto;
        this.nomeCliente1 = nomeCliente1;
        this.nomeCliente2 = nomeCliente2;
        this.idadeCliente1 = idadeCliente1;
        this.idadeCliente2 = idadeCliente2;

        // Lógica para determinar os quartos
        if (idadeCliente1 > idadeCliente2) {
            quartoA = nomeCliente1;
            quartoB = nomeCliente2;
            // Verifica se o cliente mais velho tem desconto
            if (idadeCliente1 >= 60) {
                desconto = " com desconto de 40%";
            }
        } else {
            quartoA = nomeCliente2;
            quartoB = nomeCliente1;
            // Verifica se o cliente mais velho tem desconto
            if (idadeCliente2 >= 60) {
                desconto = " com desconto de 40%";
            }
        }
        frase = "Quarto A: " + quartoA + desconto + "; Quarto B: " + quartoB;
    }

    public String getFrase() {
        return frase;
    }
}
