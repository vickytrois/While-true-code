

programa
{
    funcao inicio()
    {
        /*O algoritmo a seguir cont�m erros. A fun��o dele seria informar, por meio da idade e da resposta do usu�rio, se ele est� apto ou n�o para dirigir.
Exemplo: usu�rio tem 18 anos e digitou �Sim� na pergunta se estava habilitado, e o programa mostrou a mensagem: �Usu�rio, voc� est� apto para dirigir�
(l�-se o nome que foi digitado em vez de �Usu�rio�). Por�m, um amigo fez algumas altera��es e agora o algoritmo est� dando erro. Voc� poderia ajudar? 

Descri��o:

A fun��o desse exemplo � dizer se o usu�rio est� apto para dirigir. 
Estar apto para dirigir significa que o mesmo deve ter idade maior ou igual 18 e ter habilita��o.
Caso nenhum desses crit�rios forem aceitos, o programa ir� se finalizar

programa {
    funcao inicio() {
        
        cadeia nome, habilita��o
        inteiro idade
        
        escreva ("Digiteoseunome: \n")
        leia (nomeUsuario)
        escreva ("Ol�, seu nome � ", nome)
        
        escreva ("\nQual � a sua idade: \n")
        leia (idade)
        
        escreva ("Voc� tem habilita��o? Digite Sim ou N�o \n")
        leia (habilitacao)
        
        se (idade>18ouhabilita��o = "Sim")
        {
          escreva (nome, ", voc� est� apto para dirigir!")
        }
    }
}*/
        cadeia nome, habilitacao
        inteiro idade
        
        escreva ("Digite seu nome:\n")
        leia (nome)
        limpa()
        
        escreva ("Digite a sua idade, ", nome, ":\n")
        leia (idade)
        limpa()
        
        escreva ("Digite \"Sim\" se voc� tem habilita��o, sen�o, digite \"n�o\".\n")
        leia (habilitacao)
        
        se (idade >= 18 e (habilitacao == "Sim" ou habilitacao == "sim" ou habilitacao == "SIM"))
        {
          escreva (nome, ", voc� pode dirigir.")
        }
        senao
        {
            escreva("Voc� n�o pode dirigir.")
        }
        
        
    }
}