programa {
	funcao inicio() {
	    /*Fa�a um algoritmo que receba o valor do sal�rio m�nimo, o n�mero de horas trabalhadas, o n�mero de dependentes do funcion�rio
	    e a quantidade horas extras trabalhadas. Calcule e mostre o sal�rio a receber do funcion�rio seguindo as regras a seguir:
	        * O valor da hora trabalhada � igual a 1/5 do sal�rio m�nimo.
	        * O sal�rio do m�s � igual ao n�mero de horas trabalhadas vezes o valor da hora trabalhada.
	        * Para cada dependente, acrescentar 32 reais.
	        * Para cada hora extra trabalhada, calcular o valor da hora trabalhada acrescida de 50%.
	        * O sal�rio bruto � igual ao sal�rio do m�s mais o valor dos dependentes e mais o valor das horas extras.*/
        
        real salario_min, horas_trabalhadas, horas_extras, valor_hora, salario
        inteiro dependentes
        
        escreva("Qual o valor do sal�rio m�nimo?\n")
        leia(salario_min)
        limpa()
        
        escreva("Qual a quantidade de horas trabalhadas no m�s?\n")
        leia(horas_trabalhadas)
        limpa()
        
        escreva("Qual a quantidade de horas extras mensais?\n")
        leia(horas_extras)
        limpa()
        
        escreva("Quantos dependentes o funcion�rio tem?\n")
        leia(dependentes)
        limpa()
        
        valor_hora = salario_min/5
        salario = horas_trabalhadas*valor_hora + (32*dependentes) + (horas_extras/0.5)
        
        escreva("Total a ser pago: ", salario)
        }
	}