programa {
	funcao inicio() {
	    /*Desenvolva um algoritmo em que � solicitado ao usu�rio digitar em qual pa�s ele nasceu. Caso o usu�rio digite �Brasil� ou �brasil�, exibir� na tela
	    a seguinte mensagem: �Voc� � brasileiro�.*/
        
        cadeia pais = ""
        
        escreva("Digite seu pa�s de nascimento:\n")
        leia(pais)
        
        se (pais == "Brasil" ou pais == "BRASIL" ou pais == "brasil")
        {
            escreva("Voc� � brasileire!\n")
        }
        senao
        {
            escreva("Voc� n�o � do Brasil.")
        }
        
	}
}
