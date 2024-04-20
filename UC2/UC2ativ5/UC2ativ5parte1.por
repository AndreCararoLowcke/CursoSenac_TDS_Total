programa {

	inteiro indiceHospede = 0 

	
	funcao inicio() 
	{	
		cadastro()
	}

	// Abaixo as funções ou procedimentos utilizados.
	  funcao cadastro() {
	    inteiro idade, vdiaria
	    real soma = 0.0
	    cadeia nome
	    caracter parar
	    parar = 'S'
	
			escreva ("Digite o valor padrão da diária: ")
	    leia(vdiaria)
	
			enquanto (parar != 'N') 
			{
	      escreva ("Digite o seu nome: ")
	      leia(nome)
	      escreva ("Digite sua idade: ")
	      leia(idade)
			  
	      se (idade < 4)
	      {
	        escreva(nome," possui gratuidade!\n")
	        grat = grat + 1
	      }
	      se (idade > 80)
	      {
	        escreva(nome, " paga meia!\n")
	        meia = meia +1
	        soma = soma + (vdiaria / 2)
	      }
	      se (idade >= 4 e idade <= 80)
	      {
	        soma = soma + vdiaria
	        normal = normal + 1
	      }
	      escreva("Quer continuar? (S/N):  ")
	      leia(parar)
	      
	      
			  	
			}
			escreva ("O total de hospedagem: R$",soma,"\n")
	    escreva ("Normais: ",normal,"\n")
	    escreva ("Gratuidades: ",grat,"\n")
	    escreva ("Meias: ",meia,"\n")
	  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 42; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */