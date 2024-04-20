programa
{
	inteiro indiceHospede
	
	funcao cadastro()
	{
		escreva(" Está dentro da função cadastro\n")
	}
	funcao inicio()
	{
		inteiro numero = 1
		
		enquanto ( numero != 0)
		{
		
			escreva ("Digite um número para selecionar uma das opções:\n1 – Cadastrar Hospedes \n2 – Exibir Hospedes Cadastrados \n3– Reservar Área de Lazer\n4– Calcular total a pagar\n0 – Sair\n ")
			leia (numero)
			
			se (numero == 1)
			{
				escreva("tá dentro do cadastro!\n")
				cadastro()
			}
			se (numero == 2)
			{
				escreva("Serão exibidos os hóspedes cadastrados!\n")
			}
			se (numero == 3)
			{
				escreva("Fazer a reserva da área de lazer !\n")
			}
			se (numero == 4)
			{
				escreva("Será calculado o total a pagar!\n")
			}
			
			escreva("Se deseja sair do seu atendimento digite 0 (zero): ")
			leia(numero)	
			}
		escreva ("\nSeu atendimento está encerrado!\n")
		}
	}
	
	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 465; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */