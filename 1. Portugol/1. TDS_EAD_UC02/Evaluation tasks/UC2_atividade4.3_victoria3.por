/*
		 * A deprecia��o de bens � o c�lculo que se faz sobre o valor original de um item e o quanto se perde desse valor com o passar do tempo. O hotel calcula
		 * deprecia��o anual da seguinte maneira:
		 * DA = (valor original � valor residual) / vida �til
		 * Valor original � o valor de compra de um item e valor residual � a taxa anual de deprecia��o aplicada ao valor original. Taxa anual e vida �til
		 * obedecem a seguinte tabela:
		 * Categoria        Taxa anual  Vida �til
		 * M�veis           10%         10 anos
		 * Aparelhos        10%         10 anos
		 * Ferramentas      15%         6 anos
		 * Equipamentos TI  20%         5 anos
		 * Considerando essas categorias (m�veis � �M�; aparelhos � �A�; ferramentas � �F�; inform�tica � �I�) e o valor original, monte uma fun��o ou procedi-
		 * mento que calcule a deprecia��o anual de um item. Em seguida, monte outra fun��o ou procedimento que receba o nome do item, a categoria, o valor ori-
		 * ginal e o ano de aquisi��o, assim como calcule e mostre na tela quanto se depreciou at� o ano atual e quanto se depreciar� ano a ano at� o fim da
		 * vida �til do item (para c�lculo da idade do item, considere ano atual fixo, ignorando m�s e dia; caso o item j� tenha ultrapassado sua vida �til,
		 * mostre apenas o valor atual). Por fim, monte um algoritmo que permita que o usu�rio informe esses dados e realize o c�lculo ano a ano de um item.
		 *          Exemplo:
		 *                Entradas: Cadeira, categoria �M� (m�veis), valor original R$ 250, comprada em 2020
		 *                Sa�das: Valor ao final de 2022: R$ 205
		 *                        Valor projetado para 2023: R$ 182,5
		 *                        Valor projetado para 2024: R$ 160
		 *                        Valor projetado para 2025: R$ 137,5
		 *                        Valor projetado para 2026: R$ 115
		 *                        Valor projetado para 2027: R$ 92,5
		 *                        Valor projetado para 2028: R$ 70
		 *                        Valor projetado para 2029: R$ 47,5
		 *                        Valor projetado para 2030: R$ 25
		 */

programa
{
    cadeia item
    caracter categoria = ' '
	real valorOriginal = 0
	inteiro anoAquisicao = 0, anoAtual = 0
	
	funcao vazio entrarBem()
	{
	    escreva ("Digite o item:\n")
	    leia(item)
	    limpa()
	    
	    enquanto (categoria == ' ')
	    {
    	    escreva("Digite a categoria do bem.\nDigite \"M\" para m�veis, \"A\" para aparelhos, \"F\" para ferramentas e \"I\" para equipamentos de inform�tica:\n")
    	    leia(categoria)
    	    limpa()
    	    se (categoria != 'M' e categoria != 'A' e categoria != 'F' e categoria != 'I' e categoria != 'm' e  categoria != 'a' e categoria != 'f' e categoria != 'i')
    	    {
    	        escreva("Entrada inv�lida.\n Digite \"M\" para m�veis, \"A\" para aparelhos, \"F\" para ferramentas e \"I\" para equipamentos de inform�tica:\n")
    	    }
	    }
	    
	    enquanto (valorOriginal == 0)
	    {
    	    escreva("Digite o valor pago pelo bem:\n")
    	    leia(valorOriginal)
    	    se (valorOriginal <= 0)
    	    {
    	        escreva("Entrada inv�lida.\n Digite um valor maior que zero.\n")
    	    }
	    }
	    
	    enquanto (anoAquisicao == 0)
	    {
    	    escreva("Digite o ano em que este bem foi adquirido:\n")
    	    leia(anoAquisicao)
    	    se (anoAquisicao <= 0)
    	    {
    	        escreva("Entrada inv�lida.\n Digite um valor maior que zero.\n")
    	    }
	    }
	    
	    enquanto (anoAtual == 0)
	    {
	        escreva("Digite o ano atual:\n")
    		leia(anoAtual)
    		limpa()
    		se (anoAtual <= 0)
    	    {
    	        escreva("Entrada inv�lida.\nDigite um valor maior que zero.\n")
    	    }
	    }
	    
	    calculaDepreciacao()
	}
	
	funcao vazio calculaDepreciacao()
	{
	    //vari�veis
	    // DA = (valor original � valor residual) / vida �til
	    inteiro vidaUtil = 0
	    real valorResidual = 0, depreciacaoAnual = 0, depreciacaoPorAno = 0
		 
		 se (categoria == 'M' ou categoria == 'm' ou categoria == 'A' ou categoria == 'a')
		 {
		     vidaUtil = 10
		     valorResidual = valorOriginal*0.1
		     depreciacaoAnual = (valorOriginal-valorResidual)/vidaUtil
		     
		     escreva("Valor ao final de ", anoAtual, ": ", valorOriginal - (depreciacaoAnual*(anoAtual - anoAquisicao)), "\n")
		     depreciacaoPorAno = valorOriginal - (depreciacaoAnual*(anoAtual - anoAquisicao))
		     para (inteiro i = anoAtual+1; i <= anoAquisicao+vidaUtil; i++)
		     {
		         escreva("Valor projetado para ", i, ": R$", depreciacaoPorAno - depreciacaoAnual, "\n")
		         depreciacaoPorAno -= depreciacaoAnual
		     }
		 }
		 senao se (categoria == 'F' ou categoria == 'f')
		 {
		     vidaUtil = 6
		     valorResidual = valorOriginal*0.15
		     depreciacaoAnual = (valorOriginal-valorResidual)/vidaUtil
		     
		     escreva("Valor ao final de ", anoAtual, ": ", valorOriginal - (depreciacaoAnual*(anoAtual - anoAquisicao)), "\n")
		     depreciacaoPorAno = valorOriginal - (depreciacaoAnual*(anoAtual - anoAquisicao))
		     para (inteiro i = anoAtual+1; i <= anoAquisicao+vidaUtil; i++)
		     {
		         escreva("Valor projetado para ", i, ": R$", depreciacaoPorAno - depreciacaoAnual, "\n")
		         depreciacaoPorAno -= depreciacaoAnual
		     }
		 }
		 senao
		 {
		     vidaUtil = 5
		     valorResidual = valorOriginal*0.2
		     depreciacaoAnual = (valorOriginal-valorResidual)/vidaUtil
		     
		     escreva("Valor ao final de ", anoAtual, ": ", valorOriginal - (depreciacaoAnual*(anoAtual - anoAquisicao)), "\n")
		     depreciacaoPorAno = valorOriginal - (depreciacaoAnual*(anoAtual - anoAquisicao))
		     para (inteiro i = anoAtual+1; i <= anoAquisicao+vidaUtil; i++)
		     {
		         escreva("Valor projetado para ", i, ": R$", depreciacaoPorAno - depreciacaoAnual, "\n")
		         depreciacaoPorAno -= depreciacaoAnual
		     }
		 }
	}
	
	funcao inicio()
	{
		entrarBem()
	}
}
