programa {
	funcao inicio() {
		//Crie um algoritmo que calcule a �rea da circunfer�ncia a partir do raio informado pelo usu�rio.
		real raio, circunf
		const real PI = 3.14159265359
		
		escreva("Qual o raio do c�rculo?\n*use o formato 0.15 (15cm)\n*me�a o raio de um c�rculo come�ando pelo seu meio e tra�ando uma linha reta at� a sua extremidade\n*ou, trace uma linha reta de uma extremidade a outra me�a-a e divida o valor pela metade \n")
		leia(raio)
		limpa()
		
		circunf = raio/(2*PI)
		
		escreva("A circunfer�ncia do de um c�rculo com raio de ", raio, " � de ", circunf, ".")
	}
}
