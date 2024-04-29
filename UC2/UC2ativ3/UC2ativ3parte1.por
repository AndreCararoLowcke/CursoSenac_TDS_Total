programa {
  funcao inicio() {

	
    	real  hpaga = 30.99, total
	inteiro vetor[4], vposicao
    	para( inteiro posicao = 0; posicao < 4; posicao++ )
    	{
    		
    		vposicao = posicao + 1
     	escreva("Valor da mesa ",vposicao,": ")
     	leia(vetor[posicao])
   	 }

    	para( inteiro posicao = 0; posicao < 4; posicao++ )
    	{
      	se (vetor[posicao] <= hpaga)
      {
        		escreva("Mesa ",posicao,": Nada a pagar!\n")
      }
      	senao{
      		vposicao = posicao + 1
      		total = vetor[posicao] - hpaga
      		escreva("A mesa ", vposicao, " precisa pagar: ", total," Reais\n")
        }
    }

  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 318; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */