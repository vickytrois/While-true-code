programa
{
	funcao inicio()
	{
		/*Escreva  um algoritmo que receba os nomes e sexos de 10  h�spedes. Depois disso, mostre, separadamente: primeiro,todos os nomes dos h�spedesdo sexo
		 *masculino;depois,todos os nomes das h�spedes do sexo feminino.
		 *  Exemplo:
		 *           Entradas: Maria  Silva,  �F�;  Ant�nia  Oliveira,  �F�;  Jo�o  Siqueira, �M�; Joaquim S�, �M�; Jos� da Silva, �M�;
		 *           M�rio Peres, �M�; Joana Assun��o, �F�; Helena S�, �F�; Marisa Tom�s, �F�; Roberto Freire,�M�
		 *           
		 *           Sa�das: Jo�o  Siqueira, Joaquim  S�,  Jos�  da  Silva,  M�rio  Peres, Roberto Freire
		 *           Maria Silva, Ant�nia Oliveira,Joana Assun��o, Helena S�, Marisa Tom�s
	     */
	
	cadeia hospede[10], sexo[10]
	inteiro i = 0, masc = 0, fem = 0
	
	para(i = 0; i<=9; i++)
    {
        escreva("Digite o nome do h�spede ", i+1, "\n")
        leia(hospede[i])
        escreva("Qual o sexo de ", hospede[i], " (digite \"M\" para masculino e \"F\" para feminino?\n")
        leia(sexo[i])
        limpa()
        
        se(sexo[i] != "M" e sexo[i] != "m" e sexo[i] != "F" e sexo[i] != "f")
        {
            escreva("Entrada inv�lida. Digite \"M\" para masculino e \"F\" para feminino?\n")
            leia(sexo[i])
        }
    }
    para(i = 0; i<=9; i++)
    {
        se (sexo[i] == "M" ou sexo[i] == "m")
        {
            masc++
            se (masc > 1)
            {
                escreva("; ", hospede[i])
            }
            senao
            {
                escreva(hospede[i])
            }
        }
    }
    escreva("\n\n")
    para(i = 0; i<=9; i++)
    {
        se (sexo[i] == "F" ou sexo[i] == "f")
        {
            fem++
            se (fem > 1)
            {
                escreva("; ", hospede[i])
            }
            senao
            {
                escreva(hospede[i])
            }
        }
    }
    
    }
}