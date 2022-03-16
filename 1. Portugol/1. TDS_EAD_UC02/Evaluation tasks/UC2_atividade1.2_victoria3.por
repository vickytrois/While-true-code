programa {
	funcao inicio() {
		
		/*Com base na situa��o anterior, considere que o hotel calcula a necessidade de 1 gar�om para cada 20 participantes do evento. Assim, monte um algoritmo, baseado no anterior,
		 *em que, ao inv�s de receber o n�mero de gar�ons, receba a quantidade de convidados do evento, al�m da quantidade de horas do evento. Calcule e mostre na tela o n�mero de 
		 *gar�ons necess�rios e o custo total. Quando o n�mero de participantes for menor que 20, considere apenas um gar�om. N�o deixe de aplicar a regra do coordenador, enunciada no
		 *item anterior.
         *                  Exemplo:
         *                          Entradas: 200 pessoas; 10 horas
         *                          Sa�das: �Ser�o necess�rios 10 gar�ons�; �Custo total: R$ 1065.0�
         */
		
		inteiro num_convidados, num_garcons
		real duracao_evento, hr_garcons, extra_gracom_coord, custo_garcons, custo_garcom_coord, custo_total_evento
		
		escreva("Quantos convidados o seu evento receber�? \n")
		leia(num_convidados)
		limpa()
		
		escreva("Quantas horas o seu evento durar�? \n")
		leia(duracao_evento)
		limpa()
		
		num_garcons = num_convidados / 20.0
		
		se (num_garcons == 1)
	    escreva("Voc� precisar� de 1 gar�om.")
	    senao escreva("Voc� precisar� de ", num_garcons, " gar�ons e ")
	    
	    hr_garcons = 10.50
	    extra_gracom_coord = 1.50
	
	    custo_garcons = hr_garcons * duracao_evento
	    custo_garcom_coord = extra_gracom_coord * duracao_evento
	    custo_total_evento = custo_garcons * num_garcons + custo_garcom_coord
	
	    escreva ("o custo total do evento ser� de ", custo_total_evento, " reais.")

//rever com %
	}
}
