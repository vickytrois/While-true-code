programa {
	funcao inicio() {
		
		cadeia dia, empresa
		inteiro hora
		
		escreva("Para qual dia voc� precisa de uma reserva?\n")
		leia(dia)
		
		escreva(dia, ", a qual hor�rio voc� tem prefer�ncia?\n")
		leia(hora)
		limpa()
		
		se(hora <7 ou hora > 23){
		    escreva("Restaurante indispon�vel.\nReservas dispon�veis de segunda a sexta das 7h �s 23h e s�bados e domingos das 7h �s 15h.")
		    escreva(dia, ", a qual hor�rio voc� tem prefer�ncia?\n")
		    leia(hora)
		    limpa()
		    
		}senao se((dia == "S�bado" ou dia == "Sabado" ou dia == "SABADO" ou dia == "S�BADO" ou dia == "SAB" ou dia == "S�B" ou dia == "sabado" ou dia == "s�bado" ou dia == "Domingo" ou dia == "DOMINGO" ou dia == "domingo" ou dia == "dom" ou dia == "DOM" ou dia == "Dom") e (hora < 7 ou hora > 15)){
		     escreva("Restaurante indispon�vel.\nReservas dispon�veis de segunda a sexta das 7h �s 23h e s�bados e domingos das 7h �s 15h.")
		     escreva(dia, ", a qual hor�rio voc� tem prefer�ncia?\n")
		     leia(hora)
		     limpa()
		}senao{
		    escreva("Qual o nome da sua empresa?\n")
		    leia(empresa)
		    limpa()
		    
	    	escreva("Reserva efetuada com sucesso para ", dia, " �s ", hora, "h para ", empresa, ".")
		}
	}
}