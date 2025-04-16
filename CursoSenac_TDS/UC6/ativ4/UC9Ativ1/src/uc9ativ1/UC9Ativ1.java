
package uc9ativ1;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class UC9Ativ1 {

    public static void main(String[] args) {
        // Criação da janela principal
        JFrame frame = new JFrame("Calculadora de Vendas");
        frame.setSize(300, 150);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setLayout(null);

        // Campo de entrada para o valor da venda
        JLabel label = new JLabel("Valor da Venda:");
        label.setBounds(10, 20, 100, 25);
        frame.add(label);

        JTextField valorField = new JTextField();
        valorField.setBounds(120, 20, 150, 25);
        frame.add(valorField);

        // Botão para calcular
        JButton calcularButton = new JButton("Calcular");
        calcularButton.setBounds(10, 60, 260, 25);
        frame.add(calcularButton);

        // Ação do botão
        calcularButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    // Obtendo o valor da venda
                    double valorVenda = Double.parseDouble(valorField.getText());

                    // Verificando se o valor é maior que 500
                    if (valorVenda > 500) {
                        // Solicitar percentual de desconto
                        String descontoStr = JOptionPane.showInputDialog(frame, "Informe o percentual de desconto:");
                        double percentualDesconto = Double.parseDouble(descontoStr);

                        // Calculando o valor total com desconto
                        double desconto = (percentualDesconto / 100) * valorVenda;
                        double valorTotal = valorVenda - desconto;

                        // Exibindo o valor total
                        JOptionPane.showMessageDialog(frame, "Valor total com desconto: R$ " + valorTotal);
                    } else {
                        // Exibindo o valor total sem desconto
                        JOptionPane.showMessageDialog(frame, "Valor total: R$ " + valorVenda);
                    }
                } catch (NumberFormatException ex) {
                    JOptionPane.showMessageDialog(frame, "Por favor, insira um valor válido.", "Erro", JOptionPane.ERROR_MESSAGE);
                }
            }
        });

        // Exibindo a janela
        frame.setVisible(true);
    }
    }
