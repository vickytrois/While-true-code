programa
{
	funcao inicio()
	{
		/*Monte  um  algoritmo  em  que  o  usu�rio  poder�  cadastrar  e  pesquisar h�spedes.  O algoritmo  deve  oferecer  um  menu  com
		 *tr�s  op��es  ao usu�rio: 1�Cadastrar; 2-Pesquisar; 3-Sair. A op��o �cadastrar� deve permitir  que  o  usu�rio  informe  um  nome
		 *de  h�spede,  gravando-o  em mem�ria (com  um m�ximo  de  15  cadastros,  mostrando  a  mensagem �M�ximo  de  cadastros  atingido�
		 *quando  isso  acontecer).   A   op��o �pesquisar� deve permitir que o usu�rio informe um nome e, caso seja encontrado um nome 
		 *exatamente igual, mostre a mensagem �H�spede (nome) foi  encontrado  no  �ndice (�ndice no qual foicadastrado)�. Se  o nome n�o
		 *for encontrado, mostre �H�spede  n�o  encontrado�. O algoritmo deve permitir que o usu�rio realize essas opera��es repetidas vezes,
		 *at� que use a op��o �3�, que encerra o algoritmo.
		 *      Exemplo:
		 *              Sa�da: Digite 1-Cadastrar; 2-Pesquisar; 3-Sair
		 *              Entrada: 1
		 *              Entrada: Maria da Silva
		 *              Sa�da: Digite 1-Cadastrar; 2-Pesquisar; 3-Sair
		 *              Entrada: 1
		 *              Entrada: Jos� Freitas
		 *              Sa�da: Digite 1-Cadastrar; 2-Pesquisar; 3-Sair
		 *              Entrada: 2
		 *              Entrada: Jos� Freitas
		 *              Sa�da: H�spede Jos� Freitas foi encontrado no �ndice 1
		 *              Sa�da: Digite 1-Cadastrar; 2-Pesquisar; 3-Sair
		 *              Entrada: 3
	     */
	
	cadeia hospede[15], consulta = " "
	inteiro opcao = 0, i = 0
	
	    //in�cio repeti��o do menu
	
    para (i = 0; i<= 14; i++)
    {
        escreva("Digite 1 para cadastar, 2 para pesquisar e 3 para sair.\n")
        leia(opcao)
        limpa()
        
        enquanto(opcao <1 ou opcao >3)
        {
            escreva("Entrada inv�lida. \nDigite 1 para cadastar, 2 para pesquisar e 3 para sair.\n")
            leia(opcao)
        }
    
        escolha(opcao)
        {
            caso 1: escreva("Digite o nome do(a) h�spede:\n")
            leia(hospede[i])
            pare
    	                
            caso 2: escreva("Digite o nome do h�spede que voc� deseja pesquisar.\n")
            leia(consulta)
            
            para (i = 0; i<= 14; i++)
            {
                se(consulta == hospede[i])
                {
    	            escreva("H�spede ", hospede[i], " foi encontrado no �ndice ", i, ".\n")
                }
            }

            se (consulta != hospede[0] e consulta != hospede[1] e consulta != hospede[2] e consulta != hospede[3] e consulta != hospede[4] e consulta != hospede[5] e consulta != hospede[6] e consulta != hospede[7] e consulta != hospede[8] e consulta != hospede[9] e consulta != hospede[10] e consulta != hospede[11] e consulta != hospede[12] e consulta != hospede[13] e consulta != hospede[14])
            {
                escreva("H�spede n�o encontrado(a).\n")
            }
            pare
        
            caso 3:i=50
            pare
            
    	}
    }
    }
}