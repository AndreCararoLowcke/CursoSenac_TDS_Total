
package uc9ativ3;

public class listaCadastro1 {

    public listaCadastro1(String nome1, String telefone1, String cpf1, String data, Boolean ja1) {
    }
    private String nome;
    private String telefone;
    private String cpf;
    private String dataconsulta;
    private Boolean ja;
    
    public void ListaCadastro(String nome, String cpf, String telefone, String dataconsulta, Boolean ja){
        this.setNome(nome);
        this.setcpf(cpf);
        this.setDataconsulta(dataconsulta);
        this.setja(ja);
}

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the telefone
     */
    public String getTelefone() {
        return telefone;
    }

    /**
     * @param telefone the telefone to set
     */
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    /**
     * @return the cpf
     */
    public String getcpf() {
        return cpf;
    }

    /**
     * @param cpf the cpf to set
     */
    public void setcpf(String cpf) {
        this.cpf = cpf;
    }

    /**
     * @return the dataconsulta
     */
    public String getDataconsulta() {
        return dataconsulta;
    }

    /**
     * @param dataconsulta the dataconsulta to set
     */
    public void setDataconsulta(String dataconsulta) {
        this.dataconsulta = dataconsulta;
    }

    /**
     * @return the ja
     */
    public Boolean getja() {
        return ja;
    }

    /**
     * @param ja the ja to set
     */
    public void setja(Boolean ja) {
        this.ja = ja;
    }
}