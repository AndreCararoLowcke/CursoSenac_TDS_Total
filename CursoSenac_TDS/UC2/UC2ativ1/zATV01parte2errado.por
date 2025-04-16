programa {
  funcao inicio() {

    inteiro Nconvidados
    real cafe= 0.2, agua=0.5, salgadinhos=7, Qcafe, Qagua, Qsalgadinhos
    escreva ("Digite o numero de convidados:")
    leia (Nconvidados)

    se (Nconvidados< 30) {
      escreva ("Numero de convidados inválido!")
    }
    senao se (Nconvidados> 350) {
      escreva ("O número de convidados exedeu o limite!")
    
  }
    se (Nconvidados>30 e Nconvidados<350)
    escreva("Abaixo estarão as quantidades de café, água e salgadinhos necessários.")
    Qcafe = Nconvidados * cafe
    Qagua = Nconvidados * agua
    Qsalgadinhos = Nconvidados * salgadinhos
    escreva("\nA quantidade de café necessária é: ", Qcafe," Litros") 	
	  escreva("\nA quantidade de água necessária é: ", Qagua," Litros")
	  escreva("\nA quantidade de salgadinhos necessária é: ", Qsalgadinhos," Unidades", "\n")

  }
}
