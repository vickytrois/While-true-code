programa {
	funcao inicio() {
		inteiro num_convidados, num_garcons, cadeiras_extras, capacidade_auditorio_alfa = 150
		real duracao_evento, hr_garcons, extra_gracom_coord, custo_garcons, custo_garcom_coord, custo_total_evento
		
		escreva("Quantos convidados o seu evento receber�? ")
		leia(num_convidados)
	        se (num_convidados > 350)
		    escreva(" N�o � poss�vel calcular sua solicita��o. Nossos audit�rios n�o comportam seu evento.")
		    senao escreva("Quantas horas o seu evento durar�? ")
		    leia(duracao_evento)
		
		num_garcons = num_convidados / 20.0
		
		se (num_garcons <= 1)
	    escreva("Voc� precisar� de 1 gar�om.")
	    senao escreva("Voc� precisar� de ", num_garcons, " gar�ons e ")
	    
	    hr_garcons = 10.50
	    extra_gracom_coord = 1.50
	
	    custo_garcons = hr_garcons * duracao_evento
	    custo_garcom_coord = extra_gracom_coord * duracao_evento
	    custo_total_evento = custo_garcons * num_garcons + custo_garcom_coord
	
	    escreva ("o custo total do evento ser� de ", custo_total_evento, " reais.")
	    escreva("\n")

        cadeiras_extras = (num_convidados - capacidade_auditorio_alfa)

        se (num_convidados <=220)
        escreva("Use o Audit�rio Alfa com ", cadeiras_extras, " cadeiras extras.")

        se (num_convidados > 220)
        escreva("Use o Audit�rio Beta.")

	}
}
