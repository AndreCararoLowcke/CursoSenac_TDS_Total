package uc9ativ2;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.BufferedImage;

import classes.GastoCalorico;
import static classes.Recomendacoes.printMessage2;

public class UC9Ativ2 {

    public static void main(String[] args) {
        // Criação da janela principal
        JFrame frame = new JFrame("NutriSoft");
      
         // Define um ícone transparente
        BufferedImage transparentIcon = new BufferedImage(1, 1, BufferedImage.TYPE_INT_ARGB);
        frame.setIconImage(transparentIcon);

        frame.setSize(380, 325);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(null);
        
        frame.setSize(380, 325);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(null);

        // Botão para calcular IMC
        JButton IMCButton = new JButton("IMC");
        IMCButton.setBounds(76, 20, 230, 55);
       // IMCButton.setLayout
        frame.add(IMCButton);
        // Ação do botão IMC
        IMCButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
               // printMessage(); // Call the function
                new classes.IMC().setVisible(true);
            }
        });

        // Botão Gasto Calórico
        JButton GCButton = new JButton("Gasto Calórico");
        GCButton.setBounds(76, 100, 230, 55);
        frame.add(GCButton);
        // Ação do botão Gasto Calórico
        GCButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
               GastoCalorico gastoCalorico = new GastoCalorico(); // Call the function
               gastoCalorico.setVisible(true);
            }
        });

        // Botão Recomendações
        JButton RecomButton = new JButton("Recomendações");
        RecomButton.setBounds(76, 190, 230, 55);
        frame.add(RecomButton);

        // Ação do botão Gasto Calórico
        RecomButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                printMessage2(); // Call the function
                //new imc.IMCCalculator().setVisible(true);
            }
        });

        // Exibindo a janela
        frame.setVisible(true);
    }

}
