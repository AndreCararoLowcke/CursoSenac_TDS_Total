programa
{
	
	funcao inicio()
	{
		cadeia vetorNome[10]
		inteiro vetorDados[10]
		inteiro vetorDias[10]
		real despesas = 0.0
		inteiro qnome, cliente

		escreva("Asseguir cadastre até 10 usuários:  \n")

		para(qnome = 0; qnome <= 10; qnome++)
		{	
			se ( qnome == 10 )
			{
				escreva("Os cadastros estão lotados, retorne ao menu.\n")	
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

		para(qnome = 0; qnome <= 9; qnome++)
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
 * @POSICAO-CURSOR = 762; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */