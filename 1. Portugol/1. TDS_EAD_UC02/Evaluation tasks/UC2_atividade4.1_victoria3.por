programa {
	
    	const inteiro maxEmpresas = 10
    	const inteiro maxColunas = 4
    
    /*A manuten��o dos condicionadores de ar do hotel � realizada por empresas terceirizadas que, em alguns casos, oferecem desconto quando o
		 servi�o � feito em uma quantidade determinada de aparelhos. Assim, crie uma fun��o ou um procedimento que receba o nome da empresa,
		 o valor do servi�o por aparelho, a quantidade de aparelho em manuten��o, o percentual de desconto (que pode ser zero) e a quantidade
		 m�nima de aparelhos para que o desconto seja dado. Calcule o valor total do servi�o, a partir do valor unit�rio e da quantidade de 
		 aparelhos, aplicando o desconto, caso seja  cab�vel, e mostre a mensagem "O servi�o com (nome  da  empresa) custar� R$(total calculado)".
		 Monte um algoritmo que permita que o usu�rio informe repetidas vezes os dados necess�rios para o c�lculo e use a fun��o/procedimento
		 para mostrar o total or�ado. Termine o algoritmo quando o usu�rio responder "N" para a mensagem "Deseja informar novos dados? (S/N)".
		           Exemplo:
		                   Entradas:"Empresa 1"; R$  100,00  por  aparelho;  15  aparelhos, 20% de desconto; m�nimo de 10 unidades para desconto
		                   Sa�da: O servi�o com empresa 1 custar� R$ 1200.0
		                   Sa�da: Deseja informar novos dados? (S/N)
		                   Entrada: "S"
		                   Entradas: "Empresa 2"; R$ 90,00 por aparelho; 15 aparelhos, 0% de desconto; 0 unidades (pois n�oo oferece desconto)
		                   Sa�da: O serviço com a empresa 1 custará R$ 1350.0
		                   Sa�da: Deseja informar novos dados? (S/N)
		                   Entrada: "N*/

 	/*m[0][0] - Empresa de indice 0, preço por aparelho
 	  m[0][1] - Empresa de indice 0, quantidade de aparelhos
 	  m[0][2] - Empresa de indice 0, desconto
 	  m[0][3] - Empresa de indice 0, num min de aparelhos para desconto*/
 	 
	funcao vazio cadastro(cadeia ne[], real m[][], inteiro idx) //fun��o para cadastro das empresas, ne[] = Vetor para armazenar os nomes das empresas cadastradas e m[][] = Matriz para armazenar os dados
	{
		// idx = 0
		limpa()
		escreva("Digite o nome da empresa:\n")
		leia(ne[idx])
		limpa()
		
		real preco_por_aparelho = -1.0
		real qnt_aparelhos = -1.0
		real desconto = -1.0
		real qnt_min = -1.0
		enquanto(preco_por_aparelho < 1.0)
		{
			escreva("Digite o valor do servi�o por aparelho:\n")
			leia (preco_por_aparelho)
			limpa()
			se (preco_por_aparelho < 1.0)
			{
				escreva("Entrada inv�lida.\nDigite um valor maior ou igual a 1.\n\n")
			}
		}
		
		enquanto(qnt_aparelhos < 1.0)
		{
			escreva("Digite a quantidade de aparelhos para manuten��o?\n")
			leia (qnt_aparelhos)
			limpa()
			se (qnt_aparelhos < 1.0)
			{
				escreva("Entrada inv�lida.\nDigite uma quantidade maior que zero.\n")
			}
		}
		
		enquanto(desconto < 0.0 ou desconto > 100.0)
		{
			escreva("Digite o percentual de desconto:\n")
			leia (desconto)
			se (desconto < 0.0 ou desconto > 100.0)
			{
				escreva("Entrada inv�lida.\nDigite um percentual de desconto entre 0 e 100\n")
			}
		}

		se (desconto > 0)
		{
			enquanto(qnt_min < 0.0)
			{
				escreva("Digite a quantidade minima de aparelhos para desconto:\n")
				leia (qnt_min)
				limpa()
				se (qnt_min < 0.0)
				{
					escreva("Entrada inv�lida.\nDigite um valor maior ou igual a 0\n\n")
				}
			}
		}
		senao
		{
			qnt_min = 0.0
		}
		
		m[idx][0] = preco_por_aparelho
		m[idx][1] = qnt_aparelhos
		m[idx][2] = desconto
		m[idx][3] = qnt_min
	}
	 
	funcao real calculaOrc(real m[][], inteiro idx) //m[][] � a matriz que recebe os dados entrados , idx � o contador usado para acessar os dados da empresa que se deseja calcular o or�amento
	{
		real preco_por_aparelho = m[idx][0]
		real qnt_aparelhos = m[idx][1]
		real desconto = m[idx][2]
		real qnt_min = m[idx][3]

		se (desconto == 0)
		{
			retorne preco_por_aparelho * qnt_aparelhos
		}
		senao
		{
			desconto = 1 - (desconto / 100)
			retorne preco_por_aparelho * qnt_aparelhos * desconto
		}
	}
    
	funcao inicio()
	{
		cadeia empresa[maxEmpresas]			// Vetor para aarmazenar os nomes das empresas
		real matriz[maxEmpresas][maxColunas]// Matriz para armazenar pre�o, quantidade, desconto, quantidade m�nima
		inteiro indice = 0					// Indice para identificar a posi��o da empresa cadastrada, acessada ou impressa
		caracter opcao = 'S'				// Variávari�vel para receber a opcao e inicializar o la�o enquanto
		real orcamento[maxEmpresas]			// Vetor para armazenar os or�amentos
		
		enquanto (opcao == 'S' ou opcao == 's')
		{
			cadastro(empresa, matriz, indice)
			orcamento[indice] = calculaOrc(matriz, indice)

			escreva("O servi�o de ", empresa[indice], " custar� R$", orcamento[indice], ".\n\n")
		    indice++
		    
		    escreva("Deseja informar novos dados?\n")
			leia (opcao)
		
			enquanto (opcao == 'S' ou opcao == 's')
			{
				se (opcao != 'S' e opcao != 's' e opcao != 'N' e opcao != 'n')
				{
					escreva("Entrada inv�lida.\nDigite \"S\" ou \"N\".\n")
				}
				senao
				{
					pare
				}
			}
		}
	}
}