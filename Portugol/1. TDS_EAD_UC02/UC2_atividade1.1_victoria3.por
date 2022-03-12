programa {
	funcao inicio() {
		/*Quando uma empresa contrata o hotel para abrigar eventos, o hotel oferece gar�ons para servir os convidados. Cada gar�om custa R$ 10,50 por hora. Um dos gar�ons da equipe
		 *coordena os demais e, por isso, recebe R$ 12,00 por hora. Considerando essas informa��es, escreva um algoritmo que recebe o n�mero de gar�ons necess�rios e o total de
		 *horas do evento e calcule o custo total que o hotel ter� com a contrata��o desses profissionais. Considere que ser�o informados sempre valores maiores ou iguais a 1 para
		 *as entradas do algoritmo. Ao final, mostre o custo total em tela.
         *Exemplo
         *Entradas: 4 gar�ons; 8 horas
         *Sa�da: �Custo total: R$ 348.0�
         */
         
		real duracao_evento, hr_garcons, extra_gracom_coord, custo_garcons, custo_garcom_coord, custo_total_evento
		inteiro num_garcons
		
        hr_garcons = 10.50
		extra_gracom_coord = 1.50
		
		escreva("Digite a dura��o do evento em horas: " )
		leia(duracao_evento)
		se(duracao_evento < 1)
		{
		    escreva("Valor inv�lido. Os eventos devem durar ao menos uma hora.")
		    leia(duracao_evento)
		}
		escreva("Digite o n�mero de gar�ons que trabalhar�o: ")
		leia(num_garcons)
		se(num_garcons < 1)
		{
		    escreva("Valor inv�lido. Voc� precisar� de no m�nimo 01 gar�on.")
		    leia(num_garcons)
		}
		
		custo_garcons = hr_garcons * duracao_evento
		custo_garcom_coord = extra_gracom_coord * duracao_evento
		custo_total_evento = custo_garcons * num_garcons + custo_garcom_coord
		
		escreva ("O custo total do evento ser� de ", custo_total_evento, " reais.")
	}
}
