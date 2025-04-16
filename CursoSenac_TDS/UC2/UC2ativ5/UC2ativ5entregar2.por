programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		cadeia vetorNome[10], nome
		inteiro qnome, cliente, indice, opcao = 11, tamanho = 0
		inteiro vetorDados[10], vetorDias[10], vetorindiceHospede[10]
		real despesas = 0.0, total, despesasHospede[10]
		caracter selecao, letra

		
		enquanto( opcao != 0)
		{
			escreva("\n1) Cadastrar Hospedes \n")
			escreva("2) Exibir Hospedes Cadastrados \n")
			escreva("3) Reservar Área de Lazer \n")
			escreva("4) Calcular o Total a pagar \n")
			escreva("0) Sair \n\n")
			escreva("Escolha uma opção: ")
			leia(opcao)
			escolha (opcao)	
			{
				caso 1: 
			 		escreva ("Você selecionou a opção 1.\n")
					//caracter selecao
					escreva("Asseguir cadastre até 10 hóspedes:  \n")

					para(qnome = 0; qnome <= 10; qnome++)
					{	
						se ( qnome == 10 )
						{
							escreva("Seus cadastros foram finalizados, retorne ao menu.\n")	
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

							escreva("Gostaria de cadstrar o próximo hospede? (S/N)")
							leia(letra)
							
							se (letra != 'S')
							{
								qnome = 10
							}
				
							tamanho = tamanho + 1
						}	
					}
						 	
			 		pare   // Impede que as instruções do caso 2 sejam executadas
			 		
			 	caso 2: 
			 		escreva("Abaixo os hóspedes cadastrados e seus dados serão mostrados:\n")

					para(qnome = 0; qnome <= 9; qnome++)
					{
						indice = qnome + 1
						se (vetorDados[qnome] != 0){
							escreva("Hospede: ", vetorNome[qnome], " --- CPF: ",vetorDados[qnome]," --- Quantidade de dias: ",vetorDias[qnome]," --- Índice do hóspede: ", indice,"\n")
						}
						senao{qnome = 9}
					}
			 		pare   // Impede que as instruções do caso 2 sejam executadas
			 		
				caso 3: 
			 		
						escreva("Gostaria de acrescentar alguma área de lazer para algum hóspede? Digite seu índice: \n")
						leia(indice)
						qnome = indice - 1
						
						escreva("Digite 'A' para academia, 'S' para Salão de festas, 'R' para restaurante. Qualquer outra tecla para sair.\n")
						leia(selecao)
						
						
						se(selecao == 'A' e tamanho > qnome)
						{
							escreva("Você selecionou a opção Academia.\n")	
							despesas = despesas + 20
							
							despesasHospede[qnome] = despesas 
							escreva("Foi adicionado ", despesas," Reais, ao hóspede de índice ", indice,".\n")
						}
						senao se(selecao == 'S'e tamanho > qnome)
						{
							escreva("Você selecionou a opção Salão de festas.\n")	
							despesas = despesas + 50
							
							despesasHospede[qnome] = despesas 
							escreva("Foi adicionado ", despesas," Reais, ao hóspede de índice ", indice,".\n")
						}
						senao se(selecao == 'R'e tamanho > qnome)
						{
							escreva("Você selecionou a opção Restaurante.\n")	
							despesas = despesas + 35
							
							despesasHospede[qnome] = despesas 
							escreva("Foi adicionado ", despesas," Reais, ao hóspede de índice ", indice,".\n")
						}
						senao 
						{
							escreva("Ou o índice digitado não existe ou esta letra que você digitou não representa uma seleção. Você saiu da área de reservas!\n")
						}
					
			 		pare
			 		
			 	caso 4: 
			 		escreva("Digite o índice do hóspede que deseja('Está listado acima se selecionar opção 2!'):  ")
					leia(indice)
					calcularTotal(indice,vetorNome , vetorDias, despesasHospede, tamanho)
			 		pare
			 		
				caso 0: 
			 		escreva ("Tchau!")
			 		pare
			 		
			 	caso contrario: // Será executado para qualquer opção diferente de 1, 2 ou 3
			 		escreva ("Opção Inválida !")
			}
		}

		escreva("\n")
	}
	funcao calcularTotal( inteiro indiceHospede, cadeia vN[], inteiro dias[], real despesasHospede[], inteiro tamanho)
	{
		real total
		escreva(indiceHospede,"\n")
	
		para( inteiro i = 0; i< 10; i++)
		{
			se(i == indiceHospede - 1 e dias[i] != 0)
			{
				
				escreva("O nome do hópede selecionado é: ",vN[i], "\n")	
				escreva("A quantidades de dias de estadia: ",dias[i], "\n") 
				escreva("Suas despesas com área de lazer foram: ",despesasHospede[i]," Reais\n")
				total = despesasHospede[i] + (dias[i]*100)
				escreva("O valor que o hóspede selecionado deve pagar é: ",total," Reais\n")
					
			}
			
		
		}
		se(tamanho < indiceHospede -1)
			{
				escreva("Não existe hóspede com este índice!\n")	
			}
	}		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3380; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */