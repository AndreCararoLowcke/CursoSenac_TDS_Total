
package problema4;


    
public class CodigoProblema4 {
        private String[] hospedes;
        private int count;

        public CodigoProblema4() {
            hospedes = new String[15]; // Máximo de 15 cadastros
            count = 0;
        }

        public boolean cadastrar(String nome) {
            if (count < 15) {
                hospedes[count] = nome;
                count++;
                return true;
            } else {
                return false; // Máximo de cadastros atingido
            }
        }

        public String pesquisar(String nome) {
            for (int i = 0; i < count; i++) {
                if (hospedes[i].equals(nome)) {
                    return "Hóspede " + nome + " foi encontrado no índice " + i;
                }
            }
            return "Hóspede não encontrado";
        }
    }    

