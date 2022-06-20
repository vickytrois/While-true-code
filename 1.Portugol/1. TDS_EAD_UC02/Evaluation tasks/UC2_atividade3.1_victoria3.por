programa
{
	funcao inicio()
	{
		/*Considerando  que  o  hotel  tenha  20  quartos,  desenvolva  um  algoritmo para  marcar  a  ocupa��o  de  cada  quarto. Inicie  todos  os  quartos
		 *como desocupados. Depois, o usu�rio informar� o n�mero do quarto (de 1 a 20) e, em seguida, se esse quarto est� livre ou ocupado. Neste caso, se o
		 *quarto j� estiver ocupado, mostre a mensagem �Quarto j� ocupado�. Questione se o usu�rio quer informar outro quarto e, dessa forma, repita a opera��o.
		 *Ao fim, mostre o status de cada quarto.
		 *      Exemplo:
		 *              Entrada: 5
		 *              Entrada: Ocupado
		 *              Sa�da: Deseja continuar? (S/N)
		 *              Entrada: �S�
		 *              Entrada: 7
		 *              Entrada: Ocupado
		 *              Sa�da: Deseja continuar? (S/N)
		 *              Entrada: �S�
		 *              Entrada: 5
		 *              Entrada: Ocupado
		 *              Sa�da: Quarto j� ocupado
		 *              Sa�da: Deseja continuar? (S/N)
		 *              Entrada: �S�
		 *              Entrada: 20
		 *              Entrada: Ocupado
		 *              Sa�da: Deseja continuar? (S/N)
		 *              Entrada: �N�
		 *              Sa�da:  1-livre; 2-livre; 3-livre; 4-livre; 5-ocupado; 6-livre; 7-ocupado; 8-livre; 9-livre; 10-livre; 11-livre;
		 *                      12-livre; 13-livre; 14-livre; 15-livre; 16-livre; 17-livre; 18-livre; 19-livre; 20-ocupado
		 */
		 
		//Declara��o das vari�veis
		inteiro num_quarto = 1, i = 0
		cadeia quarto[20], situacao_quarto = " ", continuar
		
		    //Parte em que o usu�rio informa se os quartos est�o livres ou ocupados
		escreva("Bem vindo ao seu sistema de manuten��o de ocupa��o de quartos.\nVamos come�ar?\n\n")
		escreva("Informe se o quarto est� \"livre\", ou \"ocupado\":\n\n")
		
		
		            //repeti��o para preenchimento do vetor pelo usu�rio
        		para(i = 0; i<=19; i++)
        		{
        		    escreva("Quarto ", i+1, "\n")
        		    leia(quarto[i])
        		        
        		        //Op��o de parar o programa
                	escreva("Deseja continuar?\n")
                	leia(continuar)
        		            
        		        //valida��o da entrado continuar
            		se (continuar != "S" e continuar != "N")
            		{
            		    escreva("Entrada inv�lida. Escreva \"S\" ou \"N\"\n")
            		    escreva("Deseja continuar?\n")
            		    leia(continuar)
            		}
            		senao se (continuar == "N")
            		{
            		    para(i = 0; i<19; i++)
            	        {
            		        escreva(num_quarto, "-", quarto[i], "; ")
            		        num_quarto++
                        }
                        para (i = 19; i<=19; i++)
                        {
                            escreva(num_quarto, "-", quarto[i])
                            num_quarto++
                        }
                    }
		        //final do escopo do la�o "para"
                }
	//final o escopo da fun��o in�cio
	}
//final do escopo da fun��o programa
}