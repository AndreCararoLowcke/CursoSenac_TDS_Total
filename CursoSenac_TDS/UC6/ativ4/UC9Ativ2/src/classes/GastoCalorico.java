
package classes;

import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.GridBagConstraints;
import java.awt.Insets;
import java.awt.image.BufferedImage;
import javax.swing.*;

public class GastoCalorico extends JFrame {
    
    public JPanel painel1, painel2;
    
    public GastoCalorico() {
         // Define um ícone transparente
        BufferedImage transparentIcon = new BufferedImage(1, 1, BufferedImage.TYPE_INT_ARGB);
        setIconImage(transparentIcon);

        setTitle("Gasto Calórico");
        setLocationRelativeTo(null);
        setSize(320,400);
        
        painel2 = new JPanel();
        painel1 = new JPanel();
         painel1.setLayout(new FlowLayout()); // Defina um layout para o painel1
        
        
        painel1.setBounds(10, 25, 280, 240); // Define a posição e o tamanho do painel
        painel1.setBackground(Color.white); // Adiciona uma cor de fundo para visualizar o painel
        add(painel1);
        
        // Adicione os JRadioButton ao painel1
        JRadioButton radio1 = new JRadioButton("Mulher");
        JRadioButton radio2 = new JRadioButton("Homem");
        
         // Para que os radiobuttons sejam mutuamente exclusivos, adicionei a um ButtonGroup
        ButtonGroup group = new ButtonGroup();
        group.add(radio1);
        group.add(radio2);
        
        painel1.add(radio1);
        painel1.add(radio2);
        
        painel2.setBounds(10, 280, 280, 75); // Define a posição e o tamanho do painel
        painel2.setBackground(Color.BLUE); // Adiciona uma cor de fundo para visualizar o painel
        add(painel2);
        
        setLayout(null);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
       // setVisible(true);
        
    }
    
}
