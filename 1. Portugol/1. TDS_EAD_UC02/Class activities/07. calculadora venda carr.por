programa {
	funcao inicio() {
		/*O custo de um carro novo ao consumidor � a soma do custo de f�brica, da porcentagem do distribuidor e dos impostos (aplicados ao custo
		de f�brica). Supondo que o percentual do distribuidor seja de 28% e dos impostos de 45%, escreva um algoritmo para ler o custo de f�brica
		de um carro, calcular e escrever o custo final ao consumidor.*/
		
		real custo_final, custo_fabrica, porcen_distr = 0.28, impostos = 0.45
		
		escreva("Qual o custo de fabrica��o do ve�culo?\n")
		leia(custo_fabrica)
		limpa()
		
		custo_final = custo_fabrica+(custo_fabrica*porcen_distr)+(custo_fabrica*impostos)
		
		escreva("O custo de venda para o consumidor ser� de ", custo_final)


	}
}
