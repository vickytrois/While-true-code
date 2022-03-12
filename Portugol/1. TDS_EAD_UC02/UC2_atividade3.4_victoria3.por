programa
{
	funcao inicio()
	{
		/*Desenvolva  um  algoritmo  para  montar  uma  tabela  com  escala de limpeza de um quarto. A limpeza � feita todos os dias da semana
		 *e pode acontecer em tr�s turnos:manh�, tarde e noite. O algoritmo deve receber o dia da semana representado por um n�mero inteiro 
		 * (1-Domingo,  2-Segunda ...  7-S�bado) e tamb�m o turno (�M� -manh�, �T�-tarde  e �N�-noite). Depois, o algoritmo deve receber o nome
		 *da pessoa escalada para a limpeza e registrar no espa�o adequado. Deve receber entradas at� que se digite 0 como dia da semana. As 
		 *entradas de  dia  e  turno  devem  ser  validadas  para  que  valores  incorretos  n�o sejam  informados.  Ao  fim, �  preciso mostrar
		 *na  tela  a  tabela  com  a escala de limpezas, sendo as linhas os dias da semana e as colunas os turnos.
		 *      Exemplo
		 *              Entrada: 2
		 *              Entrada: �T�
		 *              Entrada: Ronaldo
		 *              Entrada: 4
		 *              Entrada: �M�
		 *              Entrada: Maria
		 *              Entrada: 6
		 *              Entrada: �T�
		 *              Entrada: Jo�o
		 *              Entrada: 6
		 *              Entrada: �N�
		 *              Entrada: Maria
		 *              Entrada: 0
		 *              Sa�da:             Manh�    Tarde       Noite
		 *                      Domingo:
		 *                      Segunda:            Ronaldo
		 *                      Ter�a:
		 *                      Quarta: Maria
		 *                      Quinta:             Jo�o        Maria
		 *                      Sexta:
		 *                      S�bado:
		 *       (Dica para formata��o da tabela na sa�da: use o caractere \t para espa�amento.)
	     */
	inteiro dia, l = 0, c = 0
	cadeia turno = " ", colaborador = " ", grade[8][4] //no tratamento do endere�amento na matriz o 1o valor � a linha, o segundo valor � a coluna
	
	//coluna e linha 0
	grade[0][0] = "         "
	
	//colunas
	grade [0][1] = "      manh�   "
	grade [0][2] = "   tarde   "
	grade [0][3] = "   noite"
	
	//linhas
	grade[1][0] = "  domingo      "
	grade[2][0] = "  segunda      "
	grade[3][0] = "    ter�a      "
	grade[4][0] = "   quarta      "
	grade[5][0] = "   quinta      "
	grade[6][0] = "    sexta      "
	grade[7][0] = "   s�bado      "
	
	escreva("digite \"1\" para come�ar.\n")
	leia(dia)
	limpa()
	
	enquanto (dia != 0)
	{
	    escreva("Escolha o dia:\n1-Domingo, 2-Segunda, 3-Ter�a, 4-Quarta, 5-Quinta, 6-Sexta, 7-S�bado.\nPara sair, digite 0 (zero).\n")
	    leia(dia)
	    
	    se (dia < 0 ou dia > 7)
	    {
	        escreva("Entrada inv�lida.\n1-Domingo, 2-Segunda, 3-Ter�a, 4-Quarta, 5-Quinta, 6-Sexta, 7-S�bado.\nPara sair, digite 0 (zero).\n")
	        leia(dia)
	        limpa()
	    }
	    
	    escolha(dia)
	    {
	        caso 1:
	        escreva("Escolha o turno: \"M\"-Manh�, \"T\"=Tarde ou \"N\"-Noite.\n")
	        leia(turno)
	        limpa()
	        
	        se (turno != "M" e turno != "m" e turno != "T" e turno != "t" e turno != "N" e turno != "n")
    	    {
    	        escreva("Entrada inv�lida.\n1-Domingo, 2-Segunda, 3-Ter�a, 4-Quarta, 5-Quinta, 6-Sexta, 7-S�bado.\nPara sair, digite 0 (zero).")
    	        leia(dia)
    	    }
    	    senao
	        {
	            escreva("Digite o nome do colaborador.\n")
	            leia(colaborador)
	        }
	        se (turno == "M" ou turno == "m")
        	{
                grade [1][1] = colaborador
    	    }
    	    senao se (turno == "T" ou turno == "t")
    	    {
    	        grade [1][2] = colaborador
    	    }
    	    senao
    	    {
    	        grade [1][3] = colaborador
    	    }
	        pare
	        
	        caso 2:
	        escreva("Escolha o turno: \"M\"-Manh�, \"T\"=Tarde ou \"N\"-Noite.\n")
	        leia(turno)
	        limpa()
	        
	        se (turno != "M" e turno != "m" e turno != "T" e turno != "t" e turno != "N" e turno != "n")
    	    {
    	        escreva("Entrada inv�lida.\n1-Domingo, 2-Segunda, 3-Ter�a, 4-Quarta, 5-Quinta, 6-Sexta, 7-S�bado.\nPara sair, digite 0 (zero).")
    	        leia(dia)
    	        limpa()
    	    }
    	     senao
	        {
	            escreva("Digite o nome do colaborador.\n")
	            leia(colaborador)
	        }
	        se (turno == "M" ou turno == "m")
        	{
        	    grade [2][1] = colaborador
    	    }
    	    senao se (turno == "T" ou turno == "t")
    	    {
    	        grade [2][2] = colaborador
    	    }
    	    senao
    	    {
    	        grade [2][3] = colaborador
    	    }
	        pare
	        
	        caso 3:
	        escreva("Escolha o turno: \"M\"-Manh�, \"T\"=Tarde ou \"N\"-Noite.\n")
	        leia(turno)
	        limpa()
	        
	        se (turno != "M" e turno != "m" e turno != "T" e turno != "t" e turno != "N" e turno != "n")
    	    {
    	        escreva("Entrada inv�lida.\n1-Domingo, 2-Segunda, 3-Ter�a, 4-Quarta, 5-Quinta, 6-Sexta, 7-S�bado.\nPara sair, digite 0 (zero).")
    	        leia(dia)
    	        limpa()
    	    }
    	     senao
	        {
	            escreva("Digite o nome do colaborador.\n")
	            leia(colaborador)
	        }
	        se (turno == "M" ou turno == "m")
    	    {
	            grade [3][1] = colaborador
    	    }
    	    senao se (turno == "T" ou turno == "t")
    	    {
    	        grade [3][2] = colaborador
    	    }
    	    senao
    	    {
    	        grade [3][3] = colaborador
    	    }
    	    pare
	        
	        caso 4:
	        escreva("Escolha o turno: \"M\"-Manh�, \"T\"=Tarde ou \"N\"-Noite.\n")
	        leia(turno)
	        limpa()
	        
	        se (turno != "M" e turno != "m" e turno != "T" e turno != "t" e turno != "N" e turno != "n")
    	    {
    	        escreva("Entrada inv�lida.\n1-Domingo, 2-Segunda, 3-Ter�a, 4-Quarta, 5-Quinta, 6-Sexta, 7-S�bado.\nPara sair, digite 0 (zero).")
    	        leia(dia)
    	        limpa()
    	    }
    	     senao
	        {
	            escreva("Digite o nome do colaborador.\n")
	            leia(colaborador)
	        }
	        se (turno == "M" ou turno == "m")
    	    {
    	        grade [4][1] = colaborador
    	    }
    	    senao se (turno == "T" ou turno == "t")
    	    {
    	        grade [4][2] = colaborador
    	    }
    	    senao
    	    {
    	        grade [4][3] = colaborador
    	    }
    	    pare
	        
	        caso 5:
	        escreva("Escolha o turno: \"M\"-Manh�, \"T\"=Tarde ou \"N\"-Noite.\n")
	        leia(turno)
	        limpa()
	        
	        se (turno != "M" e turno != "m" e turno != "T" e turno != "t" e turno != "N" e turno != "n")
    	    {
    	        escreva("Entrada inv�lida.\n1-Domingo, 2-Segunda, 3-Ter�a, 4-Quarta, 5-Quinta, 6-Sexta, 7-S�bado.\nPara sair, digite 0 (zero).")
    	        leia(dia)
    	        limpa()
    	    }
    	     senao
	        {
	            escreva("Digite o nome do colaborador.\n")
	            leia(colaborador)
	            limpa()
	        }
	        se (turno == "M" ou turno == "m")
    	    {
    	        grade [5][1] = colaborador
    	    }
    	    senao se (turno == "T" ou turno == "t")
    	    {
    	        grade [5][2] = colaborador
    	    }
    	    senao
    	    {
    	        grade [5][3] = colaborador
    	    }
    	    pare
	        
	        caso 6:
	        escreva("Escolha o turno: \"M\"-Manh�, \"T\"=Tarde ou \"N\"-Noite.\n")
	        leia(turno)
	        limpa()
	        
	        se (turno != "M" e turno != "m" e turno != "T" e turno != "t" e turno != "N" e turno != "n")
    	    {
    	        escreva("Entrada inv�lida.\n1-Domingo, 2-Segunda, 3-Ter�a, 4-Quarta, 5-Quinta, 6-Sexta, 7-S�bado.\nPara sair, digite 0 (zero).")
    	        leia(dia)
    	        limpa()
    	    }
    	     senao
	        {
	            escreva("Digite o nome do colaborador.\n")
	            leia(colaborador)
	        }
	        se (turno == "M" ou turno == "m")
    	    {
    	        grade [6][1] = colaborador
    	    }
    	    senao se (turno == "T" ou turno == "t")
    	    {
    	        grade [6][2] = colaborador
    	    }
    	    senao
    	    {
    	        grade [6][3] = colaborador
    	    }
    	    pare
	        
	        caso 7:
	        escreva("Escolha o turno: \"M\"-Manh�, \"T\"=Tarde ou \"N\"-Noite.\n")
	        leia(turno)
	        limpa()
	        
	        se (turno != "M" e turno != "m" e turno != "T" e turno != "t" e turno != "N" e turno != "n")
    	    {
    	        escreva("Entrada inv�lida.\n1-Domingo, 2-Segunda, 3-Ter�a, 4-Quarta, 5-Quinta, 6-Sexta, 7-S�bado.\nPara sair, digite 0 (zero).")
    	        leia(dia)
    	        limpa()
    	    }
    	    senao
	        {
	            escreva("Digite o nome do colaborador.\n")
	            leia(colaborador)
	        }
	        se (turno == "M" ou turno == "m")
    	    {
    	        grade [7][1] = colaborador
    	    }
    	    senao se (turno == "T" ou turno == "t")
    	    {
    	        grade [7][2] = colaborador
    	    }
    	    senao
    	    {
    	        grade [7][3] = colaborador
    	    }
	        pare
	    }//Fim escolha caso
    }//Fim La�o enquanto
	limpa()
	
    //exibir colunas 0
	escreva(grade[0][0], grade[0][1], grade [0][2], grade [0][3], "\n")
	
	//exibi��o a partir de linhas e colunas [1][1]
	para (l = 1; l<=7; l++)
	{
	    escreva("\n", grade[l][0])
	    para (c = 1; c<=3; c++)
    	{
    	    escreva(grade[l][c], "           ")
    	}
	   
	}
	
    }
}