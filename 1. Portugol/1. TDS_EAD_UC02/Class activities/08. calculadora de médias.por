programa
{
	funcao inicio()
	{
		
		real nota[3], media
		inteiro i = 0
		
	    para (i = 0; i<= 2; i++)
        {
            escreva("Digite sua ", i+1, "� nota:\n")
            leia(nota[i])
            limpa()
            
        enquanto(nota[i] < 0 ou nota[i] > 100)
        {
            escreva("Entrada inv�lida. \nDigite uma nota entre zero e cem.\n")
            leia(nota[i])
        }
        }
        media = (nota[0] + nota[1] + nota[2])/3
        escreva("Sua m�dia anual �: ", media, ".\n")
	}
}
