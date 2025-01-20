
package uc9ativ2jframe;

import javax.swing.JOptionPane;

/**
 *
 * @author andre
 */
public class Recom extends javax.swing.JFrame {

    public Recom() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jDesktopPane1 = new javax.swing.JDesktopPane();
        jLabelCD = new javax.swing.JLabel();
        jTextFieldCaloriasDiarias = new javax.swing.JTextField();
        jButtonCalcular = new javax.swing.JButton();
        jDesktopPaneCarboidratos = new javax.swing.JDesktopPane();
        jLabelCarb = new javax.swing.JLabel();
        jLabelProt = new javax.swing.JLabel();
        jLabelGord = new javax.swing.JLabel();
        jLabelCarboidratos = new javax.swing.JLabel();
        jLabelProteina = new javax.swing.JLabel();
        jLabelGordura = new javax.swing.JLabel();
        jLabelTitulo = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabelCD.setText("Calorias Diárias (kcal):");

        jButtonCalcular.setText("Calcular");
        jButtonCalcular.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCalcularActionPerformed(evt);
            }
        });

        jDesktopPane1.setLayer(jLabelCD, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jDesktopPane1.setLayer(jTextFieldCaloriasDiarias, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jDesktopPane1.setLayer(jButtonCalcular, javax.swing.JLayeredPane.DEFAULT_LAYER);

        javax.swing.GroupLayout jDesktopPane1Layout = new javax.swing.GroupLayout(jDesktopPane1);
        jDesktopPane1.setLayout(jDesktopPane1Layout);
        jDesktopPane1Layout.setHorizontalGroup(
            jDesktopPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDesktopPane1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jDesktopPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jDesktopPane1Layout.createSequentialGroup()
                        .addComponent(jLabelCD)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jTextFieldCaloriasDiarias, javax.swing.GroupLayout.DEFAULT_SIZE, 126, Short.MAX_VALUE))
                    .addGroup(jDesktopPane1Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(jButtonCalcular)))
                .addContainerGap())
        );
        jDesktopPane1Layout.setVerticalGroup(
            jDesktopPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDesktopPane1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jDesktopPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabelCD)
                    .addComponent(jTextFieldCaloriasDiarias, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(jButtonCalcular)
                .addContainerGap(24, Short.MAX_VALUE))
        );

        jLabelCarb.setText("Carboidratos (50%):");

        jLabelProt.setText("Proteína (25%):");

        jLabelGord.setText("Gordura (25%):");

        jDesktopPaneCarboidratos.setLayer(jLabelCarb, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jDesktopPaneCarboidratos.setLayer(jLabelProt, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jDesktopPaneCarboidratos.setLayer(jLabelGord, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jDesktopPaneCarboidratos.setLayer(jLabelCarboidratos, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jDesktopPaneCarboidratos.setLayer(jLabelProteina, javax.swing.JLayeredPane.DEFAULT_LAYER);
        jDesktopPaneCarboidratos.setLayer(jLabelGordura, javax.swing.JLayeredPane.DEFAULT_LAYER);

        javax.swing.GroupLayout jDesktopPaneCarboidratosLayout = new javax.swing.GroupLayout(jDesktopPaneCarboidratos);
        jDesktopPaneCarboidratos.setLayout(jDesktopPaneCarboidratosLayout);
        jDesktopPaneCarboidratosLayout.setHorizontalGroup(
            jDesktopPaneCarboidratosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDesktopPaneCarboidratosLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jDesktopPaneCarboidratosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(jLabelProt, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabelCarb, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabelGord, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(jDesktopPaneCarboidratosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabelCarboidratos, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabelProteina, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jLabelGordura, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jDesktopPaneCarboidratosLayout.setVerticalGroup(
            jDesktopPaneCarboidratosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jDesktopPaneCarboidratosLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jDesktopPaneCarboidratosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabelCarb)
                    .addComponent(jLabelCarboidratos))
                .addGap(27, 27, 27)
                .addGroup(jDesktopPaneCarboidratosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabelProt)
                    .addComponent(jLabelProteina))
                .addGap(36, 36, 36)
                .addGroup(jDesktopPaneCarboidratosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabelGord)
                    .addComponent(jLabelGordura))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        jLabelTitulo.setText("Recomendações");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jDesktopPane1)
                    .addComponent(jDesktopPaneCarboidratos)
                    .addComponent(jLabelTitulo, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(10, 10, 10)
                .addComponent(jLabelTitulo, javax.swing.GroupLayout.PREFERRED_SIZE, 15, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jDesktopPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(jDesktopPaneCarboidratos, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButtonCalcularActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCalcularActionPerformed
        // TODO add your handling code here:
        // Obter a quantidade de calorias diárias informadas pelo usuário
    String caloriasText = jTextFieldCaloriasDiarias.getText();
    
    // Verificar se o campo de calorias está vazio
    if (caloriasText.isEmpty()) {
        JOptionPane.showMessageDialog(this, "Por favor, preencha o campo de calorias diárias.", "Campo vazio", JOptionPane.WARNING_MESSAGE);
        return;
    }

    // Tentar converter o texto para um número
    double calorias;
    try {
        calorias = Double.parseDouble(caloriasText);
        if (calorias <= 0) {
            throw new NumberFormatException(); // Lança uma exceção se o valor for menor ou igual a zero
        }
    } catch (NumberFormatException e) {
        JOptionPane.showMessageDialog(this, "Por favor, insira um valor numérico válido para as calorias.", "Valor inválido", JOptionPane.ERROR_MESSAGE);
        return;
    }

    // Cálculo das quantidades recomendadas de nutrientes
    double carboidratos = (calorias * 0.5) / 4; // 1g de carboidrato = 4 calorias
    double proteinas = (calorias * 0.25) / 4;   // 1g de proteína = 4 calorias
    double gordura = (calorias * 0.25) / 9;      // 1g de gordura = 9 calorias

    // Exibir os resultados nos labels correspondentes
    jLabelCarb.setText(String.format("%.2f g", carboidratos));
    jLabelProt.setText(String.format("%.2f g", proteinas));
    jLabelGord.setText(String.format("%.2f g", gordura));

        
    }//GEN-LAST:event_jButtonCalcularActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Recom.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Recom.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Recom.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Recom.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Recom().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonCalcular;
    private javax.swing.JDesktopPane jDesktopPane1;
    private javax.swing.JDesktopPane jDesktopPaneCarboidratos;
    private javax.swing.JLabel jLabelCD;
    private javax.swing.JLabel jLabelCarb;
    private javax.swing.JLabel jLabelCarboidratos;
    private javax.swing.JLabel jLabelGord;
    private javax.swing.JLabel jLabelGordura;
    private javax.swing.JLabel jLabelProt;
    private javax.swing.JLabel jLabelProteina;
    private javax.swing.JLabel jLabelTitulo;
    private javax.swing.JTextField jTextFieldCaloriasDiarias;
    // End of variables declaration//GEN-END:variables
}
