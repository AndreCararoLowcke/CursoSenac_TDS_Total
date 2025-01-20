package uc9ativ3a;

import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

public class TelaCadastro extends javax.swing.JFrame {
    private List<Cadastro> cadastrosList = new ArrayList<>(); 

    public TelaCadastro() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabelTitulo = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jButtonCadastrar = new javax.swing.JButton();
        jRadioButtonJa = new javax.swing.JRadioButton();
        txtNome = new javax.swing.JTextField();
        txtTelefone = new javax.swing.JTextField();
        txtCPF = new javax.swing.JTextField();
        txtDataConsulta = new javax.swing.JTextField();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabelTitulo.setText("Cadastrar Consulta");

        jLabel2.setText("Nome do(a) Paciente:");

        jLabel3.setText("Telefone");

        jLabel4.setText("CPF:");

        jLabel5.setText("Data da Consulta:");

        jButtonCadastrar.setText("Cadastrar");
        jButtonCadastrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButtonCadastrarActionPerformed(evt);
            }
        });

        jRadioButtonJa.setText("Já é paciente");
        jRadioButtonJa.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jRadioButtonJaActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabelTitulo, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(jRadioButtonJa)
                            .addComponent(jLabel2, javax.swing.GroupLayout.DEFAULT_SIZE, 111, Short.MAX_VALUE)
                            .addComponent(jLabel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txtNome)
                            .addComponent(txtTelefone)
                            .addComponent(txtCPF)
                            .addComponent(txtDataConsulta)))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jButtonCadastrar, javax.swing.GroupLayout.PREFERRED_SIZE, 162, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 172, Short.MAX_VALUE)))
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabelTitulo)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txtTelefone, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txtCPF, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(txtDataConsulta, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(jRadioButtonJa)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 13, Short.MAX_VALUE)
                .addComponent(jButtonCadastrar, javax.swing.GroupLayout.PREFERRED_SIZE, 41, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(30, 30, 30))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jButtonCadastrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButtonCadastrarActionPerformed
        // TODO add your handling code here:
        String nome = txtNome.getText();
        String telefone = txtTelefone.getText();
        String dataconsulta = txtDataConsulta.getText();
        String cpf = txtCPF.getText();
        Boolean campos;
        String ja = "";
        if (jRadioButtonJa.isSelected()) {
            ja = "sim";
        } else {
            ja = "nao";
        }
        campos = emptyFields();

        System.out.println(nome);
        System.out.println(ja);
        System.out.println(campos);
        

        // Limpar campos
        txtNome.setText("");
        txtTelefone.setText("");
        txtDataConsulta.setText("");
        txtCPF.setText("");
    }//GEN-LAST:event_jButtonCadastrarActionPerformed

    private void jRadioButtonJaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jRadioButtonJaActionPerformed
        // TODO add your handling code here:

    }//GEN-LAST:event_jRadioButtonJaActionPerformed

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
            java.util.logging.Logger.getLogger(TelaCadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(TelaCadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(TelaCadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(TelaCadastro.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new TelaCadastro().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButtonCadastrar;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabelTitulo;
    private javax.swing.JRadioButton jRadioButtonJa;
    private javax.swing.JTextField txtCPF;
    private javax.swing.JTextField txtDataConsulta;
    private javax.swing.JTextField txtNome;
    private javax.swing.JTextField txtTelefone;
    // End of variables declaration//GEN-END:variables

    /*
 * Metodo emptyFields(), retorna "true" quando qualquer um dos campos
 * estiver vazio e "false" quando todos estiverem preenchidos. 
     */
    private boolean emptyFields() {
        /*
 * Variável empty assume “true” por padrão e só vai mudar o seu esta
do
 * após verificarmos se todos os campos estão preenchidos. É ela que
 * retornamos ao final do método.
         */
        boolean empty = true;

        /*
 * Agora vamos testar campo a campo e exibir avisos caso encontre
 * algum campo vazio.
         */
        if (txtNome.getText().trim().isEmpty()) {
            /*
 * se o campo txtNome estiver vazio exibimos a mensagem
 * de campo vazio. Caso contrário testamos o próximo
             */
            JOptionPane.showMessageDialog(rootPane, "ATENÇÃO! Nome não pode ser vazio.");
        } else if (txtTelefone.getText().trim().isEmpty()) {
            /*
 * se o campo txtEmail estiver vazio exibimos a mensagem de campo
 * vazio. Caso contrário testamos o próximo campo.
             */
            JOptionPane.showMessageDialog(rootPane, "ATENÇÃO! CPF não pode ser vazio.");
        } else if (txtDataConsulta.getText().trim().isEmpty()) {
            /*
 * se o campo txtEmail estiver vazio exibimos a mensagem de campo
 * vazio. Caso contrário testamos o próximo campo.
             */
            JOptionPane.showMessageDialog(rootPane, "ATENÇÃO! CPF não pode ser vazio.");
        } else if (txtCPF.getText().trim().isEmpty()) {
            /*
 * se o campo txtIdade estiver vazio exibimos a mensagem de camp
o
 * vazio. Caso contrário testamos o próximo campo.
             */
            JOptionPane.showMessageDialog(rootPane, "ATENÇÃO! Idade não pod e ser vazio.");
        } else {
            /*
 * se cairmos nessa condição é porque não existem campos vazios,
 * logo, a variável "empty" deve mudar seu valor para "false".
             */
            empty = false;
        }
        /*
 * Aqui retornamos a variável "empty" 
         */
        return empty;
    }

    /*
 * Metodo getAluno(), retorna um aluno
 * com valor em todos os atributos
     */
    private Cadastro getCadastro() {

        Cadastro cadastro = new Cadastro();

        cadastro.setNome(txtNome.getText().toUpperCase());
        cadastro.setTelefone(txtTelefone.getText().toLowerCase());
        cadastro.setDataconsulta(Integer.parseInt(txtDataConsulta.getText()));

        System.out.println(cadastro);
        return cadastro;
    }

    /*
 * Metodo inserirAluno(Aluno aluno), insere o aluno
 * na lista de alunos
     */
    private void inserirCadastro(Cadastro cadastro) {

        /*
 * Inserir o aluno na lista
         */
        cadastrosList.add(cadastro);
        System.out.println(cadastro);

    }

}
