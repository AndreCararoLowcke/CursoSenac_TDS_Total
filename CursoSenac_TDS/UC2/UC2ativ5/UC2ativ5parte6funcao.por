programa
{
	
	funcao inicio()
	{
		inteiro indiceHospede = 0
		cadeia vetorNome[3] = {"André","Bruno","Cassio"}  
		inteiro vetorDias[3] = {3,2,1}
		real despesas = 101.5
		
		escreva("digite o indice do hóspede que deseja calcular:  \n")
		leia(indiceHospede)
		calcularTotal( indiceHospede, vetorNome, vetorDias, despesas )
	}
	funcao calcularTotal( inteiro indiceHospede, cadeia vN[], inteiro dias[], real despesas)
	{
		real total
		escreva("digite o índice do hóspede que deseja: ('Está listado acima!')\n")
		escreva(indiceHospede,"\n")
		escreva("Agora pego o indice e procuro os valores nos meus vetores.\n")
		para( inteiro i = 0; i< 3; i++)
		{
			se(i == indiceHospede){
				escreva(i, "\n")
				escreva(vN[i], "\n")	
				escreva(dias[i], "\n") 
				escreva(despesas, "\n")
				total = despesas + (dias[i]*100)
				escreva("O valor a ser pago é: ",total)
				
			}
		
		}
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 863; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */