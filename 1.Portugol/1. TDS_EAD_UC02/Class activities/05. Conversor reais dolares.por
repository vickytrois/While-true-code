programa {
	funcao inicio() {
		/*Desenvolva um algoritmo que fa�a a convers�o de valores de d�lares para real com base nas seguintes regras:
		O usu�rio dever� informar o valor do d�lar do dia.
		O usu�rio dever� informar o valor em d�lares que deseja converter para real.
		Na sa�da, dever� ser exibido o valor em d�lares e o valor correspondente em reais.*/
		
		real cotacao_dolar, reais, conversao
		
		escreva("Qual a cota��o do dolar de hoje?\n")
		leia(cotacao_dolar)
		limpa()
		
		escreva("Quantos reais voc� quer converter?\n")
		leia(reais)
		limpa()
		
		conversao = cotacao_dolar*reais
		
		escreva("R$", reais, " = $", conversao, ".")
		
	}
}
