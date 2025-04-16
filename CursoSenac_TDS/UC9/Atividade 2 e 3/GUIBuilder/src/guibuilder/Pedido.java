package guibuilder;
public class Pedido {
    
    private int id;
    private String nomeCliente;
    private double preco;
    private int quantidade;
    private String acompanhamento;
    private String adicional;
    
    //Simular atividade 3
    private boolean pronto;
    private String notaFiscal;

    public Pedido() {
        
    }

    public Pedido(int id, String nomeCliente, double preco, int quantidade, String acompanhamento, String adicional, boolean pronto, String notaFiscal) {
        this.id = id;
        this.nomeCliente = nomeCliente;
        this.preco = preco;
        this.quantidade = quantidade;
        this.acompanhamento = acompanhamento;
        this.adicional = adicional;
        this.pronto = pronto;
        this.notaFiscal = notaFiscal;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNomeCliente() {
        return nomeCliente;
    }

    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getAcompanhamento() {
        return acompanhamento;
    }

    public void setAcompanhamento(String acompanhamento) {
        this.acompanhamento = acompanhamento;
    }

    public String getAdicional() {
        return adicional;
    }

    public void setAdicional(String adicional) {
        this.adicional = adicional;
    }
    
    public boolean isPronto() {
        return pronto;
    }

    public void setPronto(boolean pronto) {
        this.pronto = pronto;
    }

    public String getNotaFiscal() {
        return notaFiscal;
    }

    public void setNotaFiscal(String notaFiscal) {
        this.notaFiscal = notaFiscal;
    }
}
