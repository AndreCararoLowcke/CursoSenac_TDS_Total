programa
{
	funcao inicio()
	{
		inteiro opcao = 0
		cadeia vetorNome[7], nome
		inteiro qnome, cliente

		
		enquanto( opcao != 3)
		{
			escreva("\n\n1) Cadastrar \n")
			escreva("2) Pesquisar \n")
			escreva("3) Sair \n\n")
			escreva("Escolha uma opção: ")
			leia(opcao)
			escolha (opcao)	
			{
				caso 1: 
			 		escreva ("Você selecionou a opção 1.\n")

					
					caracter selecao

					escreva("Asseguir cadastre até 7 hóspedes:  \n")

					para(qnome = 0; qnome <= 7; qnome++)
					{	
						se ( qnome == 7 )
						{
							escreva("Máximo de cadastros atingido, retorne ao menu.\n")	
						}
						senao
						{	
							cliente = qnome + 1
							escreva("Cadastre o cliente de número: ",cliente, "\n")
							escreva("Informe o nome: ")
							leia(vetorNome[qnome])	
				
							
						}	
					}
					escreva("Abaixo os hóspedes cadastrados e seus dados serão mostrados:\n")
			
					para(qnome = 0; qnome <= 6; qnome++)
					{
						escreva("Nome do hóspede:  ", vetorNome[qnome],"\n")
					}
						 	
			 		pare   // Impede que as instruções do caso 2 sejam executadas
			 		
			 	caso 2: 
			 		escreva ("Você selecionou a opção 2.\n")
					escreva("Digite o nome do hóspede que deseja: \n")
					leia(nome)
					
					para(qnome = 0; qnome < 6; qnome++)
						{
							se (nome == vetorNome[qnome])
							{
								escreva("O hóspede ", vetorNome[qnome]," foi encontrado no índice ",qnome + 1,"\n")	
							}
							
						}
					escreva("Hóspede não encontrado!")
			 		pare   // Impede que as instruções do caso 2 sejam executadas
				caso 3: 
			 		escreva ("Tchau!")
			 		pare
			 		
			 	caso contrario: // Será executado para qualquer opção diferente de 1, 2 ou 3
			 		escreva ("Opção Inválida !")
			}
		}

		escreva("\n")
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1480; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */