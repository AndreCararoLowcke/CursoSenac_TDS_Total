package classes;

import java.util.List;
import java.util.ArrayList;

public class Pagamento {

    private final String nomeEmpresa;
    private final List<Imposto> impostos;

    public Pagamento(String nomeEmpresa) {
        this.nomeEmpresa = nomeEmpresa;
        this.impostos = new ArrayList<>();
    }

    public void adicionarImposto(Imposto imposto) {
        impostos.add(imposto);
    }

    public void mostrarImpostos() {
        for (Imposto imposto : impostos) {
            System.out.printf("Imposto: %s, Valor: R$ %.2f%n", imposto.getDescricao(), imposto.calcularImposto());
        }
    }
}
