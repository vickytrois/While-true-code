programa {
	funcao inicio() {
	    //Desenvolva um algoritmo em que � solicitado ao usu�rio digitar um n�mero e mostre a mensagem caso esse n�mero esteja no intervalo entre 100 e 200.
        
        inteiro num
        
        escreva("Digite um n�mero\n")
        leia(num)
        
        se (num >= 100 e num <= 200)
        {
            escreva(num, " est� entre 100 e 200.\n")
        }
        senao
        {
            escreva(num, " n�o est� entre 100 e 200.\n")
        }
	}
}
