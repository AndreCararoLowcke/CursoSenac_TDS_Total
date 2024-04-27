programa
{
	
	funcao inicio()
	{
		cadeia vetorNome[10]
		inteiro vetorDados[10], vetorDias[10], vetorindiceHospede[10]
		real despesas = 0.0, total
		inteiro qnome, cliente, indiceHospede, indice
		caracter selecao

		escreva("Asseguir cadastre até 10 usuários.  \n")

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
			indice = qnome + 1
			//vetorindiceHospede[indice] =  qnome  // apenas para mostrar utilizarei a soma
			escreva("Hospede: ", vetorNome[qnome], " --- CPF: ",vetorDados[qnome]," --- Quantidade de dias: ",vetorDias[qnome]," --- Índice do hóspede: ", indice,"\n")
		}
		faca
		{
		escreva("Gostaria de acrescentar alguma área de lazer?\n")
		escreva("Digite 'A' para academia, 'S' para Salão de festas, 'R' para restaurante. Qualquer outra tecla para sair.\n")
		leia(selecao)
		
		
		se(selecao == 'A')
		{
			escreva("Você selecionou a opção Academia.\n")	
			despesas = despesas + 20
		}
		senao se(selecao == 'S')
		{
			escreva("Você selecionou a opção Salão de festas.\n")	
			despesas = despesas + 50
		}
		senao se(selecao == 'R')
		{
			escreva("Você selecionou a opção Restaurante.\n")	
			despesas = despesas + 35
		}
		senao {escreva("Com esta letra que você digitou você irá sair do sistema!\n")}
			
		}
		
		enquanto(selecao == 'A' ou selecao == 'S' ou selecao == 'R')
		escreva("Suas despesas com locação de area de lazer estão em: ", despesas," Reais\n")
		
		escreva("digite o índice do hóspede que deseja('Está listado acima!'):  ")
		leia(indiceHospede)
		calcularTotal(indiceHospede,vetorNome , vetorDias, despesas)
	

	}
	funcao calcularTotal( inteiro indiceHospede, cadeia vN[], inteiro dias[], real despesas)
	{
		real total
		//escreva("digite o índice do hóspede que deseja: ('Está listado acima!')\n")
		escreva(indiceHospede,"\n")
		//escreva("Agora pego o indice e procuro os valores nos meus vetores.\n")
		para( inteiro i = 0; i< 10; i++)
		{
			se(i == indiceHospede - 1)
			{
				//escreva(i, "\n")
				escreva("O nome do hópede selecionado é: ",vN[i], "\n")	
				escreva("A quantidades de dias de estadia: ",dias[i], "\n") 
				escreva("Suas despesas com área de lazer foram: ",despesas,"Reais\n")
				total = despesas + (dias[i]*100)
				escreva("O valor que o hóspede selecionado deve pagar é: ",total," Reais")
					
			}
		
		}
		
}
}		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2691; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */