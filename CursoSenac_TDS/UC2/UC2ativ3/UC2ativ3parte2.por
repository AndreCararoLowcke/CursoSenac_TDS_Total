programa {
  funcao inicio() {

    caracter vetor[10] = {'L','L','L','L','L','L','L','L','L','L'}
    caracter digitado, desejo

    para(inteiro quarto = 0; quarto < 10; quarto++ )
    {
      escreva("Qual o número do quarto (1 a 10): ")
      leia(quarto)
      quarto = quarto - 1
      escreva("O quarto está livre ('L') ou ocupado('O')? ")
      leia(digitado)

      se(vetor[quarto] == 'L' e digitado == 'L' )
      {
        escreva("O quarto já está vazio!\n")
        vetor[quarto] = 'L'
      }
      senao se(vetor[quarto] == 'L' e digitado == 'O' )
      {
        escreva("O quarto foi ocupado!\n")
        vetor[quarto] = 'O'
      }
      senao se(vetor[quarto] == 'O' e digitado == 'L' )
      {
        escreva("O quarto foi liberado!\n")
        vetor[quarto] = 'L'
      }
      senao se(vetor[quarto] == 'O' e digitado == 'O' )
      {
        escreva("O quarto já está ocupado!\n")
        vetor[quarto] = 'O'
      }
      escreva("Deseja continuar? (S/N):  ")
      leia(desejo)
      se(desejo == 'N')
      {
        quarto = 12
      }
      }
	para(inteiro quarto = 0; quarto < 10; quarto++)
		escreva("Quarto ",quarto + 1,", situação: ",vetor[quarto],"\n")
    
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1152; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */