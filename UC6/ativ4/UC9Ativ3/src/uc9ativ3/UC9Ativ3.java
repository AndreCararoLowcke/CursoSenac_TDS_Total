package uc9ativ3;

import java.util.ArrayList;

public class UC9Ativ3 {

    public static void main(String[] args) {
        ArrayList<String> cadastro = new ArrayList();
        
        cadastro.add("Ana");
        cadastro.add("Maria");
        cadastro.add("Marcos");
        cadastro.add("Manoel");
        cadastro.add("Ana Julia");
        
        for(String nome : cadastro){
            System.out.println(nome);
            
        }
        
    }
    
}
