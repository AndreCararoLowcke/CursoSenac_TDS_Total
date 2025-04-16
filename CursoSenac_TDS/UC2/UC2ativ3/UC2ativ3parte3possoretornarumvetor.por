programa
{
	funcao inicio()
	{
		inteiro opcao
		
		escreva("1) Cadastrar \n")
		escreva("2) Pesquisar \n")
		escreva("3) Sair \n\n")

		escreva("Escolha uma opção: ")
		leia(opcao)

		limpa()

		escolha (opcao)	
		{
			caso 1: 
		 		escreva ("Você selecionou a opção 1.\n")
		 		Cadastro()
		 		pare   // Impede que as instruções do caso 2 sejam executadas
		 	caso 2: 
		 		escreva ("Voce é um monstro!")
		 		pare   // Impede que as instruções do caso 2 sejam executadas
		 	caso 3: 
		 		escreva ("Tchau!")
		 		pare
		 	caso contrario: // Será executado para qualquer opção diferente de 1, 2 ou 3
		 		escreva ("Opção Inválida !")
		}

		escreva("\n")
	}

		funcao Cadastro()
	{
		cadeia vetorNome[7]
		inteiro vetorDados[7]
		inteiro vetorDias[7]
		inteiro qnome, cliente
		caracter selecao

		escreva("Asseguir cadastre até 7 usuários:  \n")

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
	
				escreva("Informe o CPF do cadastrado: ")
				leia(vetorDados[qnome])
	
				escreva("Informe a quantidade de dias que ficará hospedado: ")
				leia(vetorDias[qnome])
			}	
		}
		escreva("Abaixo os hóspedes cadastrados e seus dados serão mostrados:\n")

		para(qnome = 0; qnome <= 6; qnome++)
		{
			escreva("Hospede: ", vetorNome[qnome], " --- CPF: ",vetorDados[qnome]," --- Quantidade de dias: ",vetorDias[qnome],"\n")
		}
		
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1319; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */