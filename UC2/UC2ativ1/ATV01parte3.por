programa {
  funcao inicio() {
    inteiro Qpessoas

    escreva ("Digite a quantidade de pessoas: ")
    leia (Qpessoas)

    se (Qpessoas <= 0) {
      escreva ("Inválido!")
    }
    senao se (Qpessoas >= 1 e Qpessoas <= 150) {
      escreva ("Auditório Alfa.")
    }
    senao se (Qpessoas >= 151 e Qpessoas <= 220) {
      escreva ("Auditório Alfa + cadeiras (convidados - 150)")
    }
    senao se (Qpessoas >= 221 e Qpessoas <= 350) {
      escreva ("Auditório Beta")
    }
    senao se (Qpessoas > 350) {
      escreva ("Inválido!")
    }
    
    
  }
}
