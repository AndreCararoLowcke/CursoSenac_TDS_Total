package classes;

import javax.swing.*;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JButton;
import javax.swing.JLabel;

public class IMC extends JFrame{
    private JTextField txtPeso, txtAltura;
    private JLabel lblResultado;

    public IMC() {
        JFrame frame = new JFrame("IMC");
        frame.setSize(400, 340);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        JPanel panel = new JPanel();
        JButton botao = new JButton("Clique aqui");
        JLabel label = new JLabel("IMC");

        panel.add(botao);
        panel.add(label);

        frame.getContentPane().add(panel);
        frame.setVisible(true);
    }
}
