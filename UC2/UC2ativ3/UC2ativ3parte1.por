programa {
  funcao inicio() {

    real vetor[5], hpaga = 30.99, total

    para( real posicao=1; posicao < 5; posicao++ )
    {
      escreva("Valor da mesa ",posicao,":")
      leia(vetor[posicao])
    }

    para( real posicao=1; posicao < 5; posicao++ )
    {
      // escreva(vetor[posicao]," - ")
      se (vetor[posicao] <= hpaga)
      {
        escreva("Mesa ",posicao,": Nada a pagar!\n")
      }
      senao{
      total = vetor[posicao] - hpaga
      escreva("A mesa ", posicao, "precisa pagar: ", total,"\n")
        }
    }

  }
}
