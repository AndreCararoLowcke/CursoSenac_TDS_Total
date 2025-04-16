programa {
  //inclua biblioteca Matematica --> mat

  funcao inicio() {
    inteiro qhospedes = 1, valorquarto, nquarto, maior = 0, menor = 1000000000000  
    real soma = 0

		escreva ("Digite a quantidade de hospedes: ")
    leia(qhospedes)

		enquanto (qhospedes > 0)
		{
      escreva ("Digite o numero do quarto: ")
      leia(nquarto)
      escreva ("Digite valor do quarto: ")
      leia(valorquarto)
		  
      // Agora vou organizar os valores para mostrar no final.
     
      se (valorquarto < menor)
      {
        menor = valorquarto 
      }
      se (valorquarto > maior)
      {
        maior = valorquarto 
      }
      soma = soma + valorquarto
      // Nesta parte abaixo irei incrementar o contador
		  qhospedes = qhospedes - 1
      
		  	
		}
		escreva ("O total de diárias: R$ ",soma,"\n")
    escreva ("Menor valor: ",menor,"\n")
    escreva ("Maior valor: ",maior,"\n")
  }
}
