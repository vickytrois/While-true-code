programa {
	funcao inicio() {
		/*Desenvolva um algoritmo que receba o valor de uma di�ria no hotel e a quantidade de dias de hospedagem. Valide essas informa��es
		 *para que o valor da di�ria n�o seja negativo e que a quantidade de dias n�o seja negativa nem maior que 30. Em caso de informa��o
		 *inv�lida, escreva na tela uma mensagem informando ao usu�rio e solicite novo valor. Ao final de tudo, escreva �Fim do programa�.
         *   Exemplo:
         *      Entrada: R$ 100 a di�ria
         *      Sa�da: Valor inv�lido
         *      Entrada: R$ 100 a di�ria
         *      Entrada: 30 dias
         *      Sa�da: Fim do programa
         */
        
        inteiro num_diarias
        real valor_diaria, total
            
        escreva("Quantos dias voc� ficar� hospedado?\n")
        leia (num_diarias)
        limpa()
        se(num_diarias < 1 ou num_diarias >30){
            escreva("Valor inv�lido. Forne�a um valor maior que 0 (zero) ou menor que 31 (trinta e um).")
        }
        escreva("Qual o valor da di�ria?\n")
        leia(valor_diaria)
        limpa()
        
        total = num_diarias*valor_diaria
        
        escreva("Uma estadia de ", num_diarias, " a ", valor_diaria, " reais, dar� um total de ", total, " reais.")
	}
}
