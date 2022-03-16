programa {
	funcao inicio() {
		
		/*O hotel conta, em temporadas baixas, com uma promo��o em que, quanto mais dias o h�spede permanece, maior desconto ele recebe.
		 *Se o h�spede ficar apenas um dia, a hospedagem ter� pre�o cheio; a partir do segundo dia, aplicam-se 10% de desconto e, a cada dia
		 *mais, adicionam-se 10% de desconto, chegando ao m�ximo de 50% de desconto. Expanda o algoritmo anterior e, a partir da informa��o
		 *validada de valor de di�ria e de dias de hospedagem, escreva na tela uma lista informativa com o valor da di�ria dia a dia, aplicando
		 *seus devidos descontos.
         *      Exemplo
         *      Entradas: R$ 150 a di�ria; 7 di�rias
         *      Sa�das: Dia 1: R$ 150
         *              Dia 2: R$ 135
         *              Dia 3: R$ 120
         *              Dia 4: R$ 105
         *              Dia 5: R$ 90
         *              Dia 6: R$ 75
         *              Dia 7: R$ 75
         */
		
		inteiro num_diarias
        real valor_diaria, total, desconto = 0.1
            
        escreva("Quantos dias voc� ficar� hospedado?\n")
        leia (num_diarias)
        limpa()
        se(num_diarias < 1 ou num_diarias >30){
            escreva("Valor inv�lido. Forne�a um valor maior que 0 (zero) ou menor que 31 (trinta e um).")
        }
        escreva("Qual o valor da di�ria?\n")
        leia(valor_diaria)
        limpa()
        
        
        se (num_diarias == 1){
            escreva("Dia 1: R$ ", valor_diaria)
            
        }se (num_diarias == 2){
            escreva("Dia 1: R$ ", valor_diaria, "\n")
            escreva("Dia 2: R$ ", (valor_diaria-(desconto*valor_diaria)), "\n")
            
        }se (num_diarias == 3){
            escreva("Dia 1: R$ ", valor_diaria, "\n")
            escreva("Dia 2: R$ ", (valor_diaria-(desconto*valor_diaria)), "\n")
            escreva("Dia 3: R$ ", (valor_diaria-(desconto*valor_diaria*2)), "\n")
            
        }se (num_diarias == 4){
            escreva("Dia 1: R$ ", valor_diaria, "\n")
            escreva("Dia 2: R$ ", (valor_diaria-(desconto*valor_diaria)), "\n")
            escreva("Dia 3: R$ ", (valor_diaria-(desconto*valor_diaria*2)), "\n")
            escreva("Dia 4: R$ ", (valor_diaria-(desconto*valor_diaria*3)), "\n")
            
        }se (num_diarias == 5){
            escreva("Dia 1: R$ ", valor_diaria, "\n")
            escreva("Dia 2: R$ ", (valor_diaria-(desconto*valor_diaria)), "\n")
            escreva("Dia 3: R$ ", (valor_diaria-(desconto*valor_diaria*2)), "\n")
            escreva("Dia 4: R$ ", (valor_diaria-(desconto*valor_diaria*3)), "\n")
            escreva("Dia 5: R$ ", (valor_diaria-(desconto*valor_diaria*4)), "\n")
            
        }se (num_diarias == 6){
            escreva("Dia 1: R$ ", valor_diaria, "\n")
            escreva("Dia 2: R$ ", (valor_diaria-(desconto*valor_diaria)), "\n")
            escreva("Dia 3: R$ ", (valor_diaria-(desconto*valor_diaria*2)), "\n")
            escreva("Dia 4: R$ ", (valor_diaria-(desconto*valor_diaria*3)), "\n")
            escreva("Dia 5: R$ ", (valor_diaria-(desconto*valor_diaria*4)), "\n")
            escreva("Dia 6: R$ ", (valor_diaria-(desconto*valor_diaria*5)), "\n")
            
        }senao{
            escreva("Dia 1: R$ ", valor_diaria, "\n")
            escreva("Dia 2: R$ ", (valor_diaria-(desconto*valor_diaria)), "\n")
            escreva("Dia 3: R$ ", (valor_diaria-(desconto*valor_diaria*2)), "\n")
            escreva("Dia 4: R$ ", (valor_diaria-(desconto*valor_diaria*3)), "\n")
            escreva("Dia 5: R$ ", (valor_diaria-(desconto*valor_diaria*4)), "\n")
            escreva("Dia 6: R$ ", (valor_diaria-(desconto*valor_diaria*5)), "\n")
            para (inteiro dia=7; dia <= num_diarias; dia++)
            escreva("Dia ", dia, ": R$ ", (valor_diaria-(desconto*valor_diaria*5)), "\n")
        }  
        }
}