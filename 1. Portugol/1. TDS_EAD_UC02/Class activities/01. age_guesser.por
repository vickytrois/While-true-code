programa {
	funcao inicio() {
	    
	    inteiro ano_nasc, ano_atual, mes_nasc, mes_atual, idade
		
		escreva("Qual o ano que voc� nasceu? ")
		leia(ano_nasc)
	    limpa()
	    
	    escreva("Qual o ano em que estamos? ")
		leia(ano_atual)
		limpa()
		
		escreva("Qual o m�s em que voc� nasceu? (em n�meros) ")
		leia(mes_nasc)
	    limpa()
	    
	    escreva("Qual o m�s em que estamos? (em n�meros) ")
		leia(mes_atual)
		limpa()
		
		idade = ano_atual - ano_nasc
		se(mes_nasc <= mes_atual){
		escreva("Voc� tem ", idade, " anos.")
		}senao{
		escreva("Voc� tem ", idade - 1, " anos.")
	}
}

}