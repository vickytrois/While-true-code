programa {
    inteiro i=1, pontuacaoEquipe[3], numVitorias, numEmpates
    cadeia nomeEquipe[3]
    
    
    funcao inteiro calculaPontosEquipe(inteiro vitorias, inteiro empates)
    {
        escreva("Digite o nome da ", i+1, "� equipe?\n")
		leia(nomeEquipe[i])
		escreva ("Digite o n�mero de vit�rias que esta equipe teve?\n")
		leia(numVitorias)
		escreva ("Agora digite o n�mero de empates?\n")
		leia(numEmpates)
        limpa()
        
        pontuacaoEquipe[i] = (numVitorias*3) + numEmpates
        retorne pontuacaoEquipe[i]
        
    }
    
    funcao vazio exibeEquipeEPontuacao(cadeia equipe, inteiro potuacao)
    {
      escreva("A equipe ", nomeEquipe[i], " obteve a pontua��o de ", pontuacaoEquipe[i], " pontos.\n")  
    }
    
	funcao inicio() {
		
		para (i=0; i<=2; i++)
		{
		    calculaPontosEquipe(numVitorias, numEmpates)
		}
		para (i=0; i<=2; i++)
		{
		    exibeEquipeEPontuacao(nomeEquipe[i], pontuacaoEquipe[i])
		}
	}
}
