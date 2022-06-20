programa {
	funcao inicio() {
		/*Imagine que voc� recebeu a tarefa de calcular o aumento de sal�rio de um trabalhador com base em uma porcentagem informada
		/pelo usu�rio. Essa tarefa precisa exibir na sa�da o nome, o sal�rio antigo, o sal�rio novo e o valor do aumento. Analise as
		/sa�das. Para exibir o nome, deve-se solicitar esse nome ao usu�rio; para calcular o valor do aumento com base no percentual,
		/deve-se solicitar o sal�rio antigo e o percentual (pois ter� um novo sal�rio). C�lculo do valor do aumento dado por Valor do
		/Aumento = Salario Antigo x Percentual (valor digitado / 100). O novo sal�rio � Novo Salario = Salario Antigo + Valor do Aumento.
		/Logo ap�s basta exibir os resultados. Quais os tipos das vari�veis a serem utilizadas? Nome � uma sequ�ncia de caracteres, portanto
		/uma string. J� sal�rio, valor do aumento e percentual s�o decimais, pois dinheiro tem casas decimais, e o resultado de um c�lculo
		percentual geralmente tamb�m � um real.*/
		
		cadeia nome
		real porcentagem_aumento, salario_atual, novo_salario, aumento
		
		escreva("Qual o seu nome? ")
		leia(nome)
		limpa()
		
		escreva(nome, ", qual porcentagem voc� recebeu de aumento? ")
		leia(porcentagem_aumento)
		limpa()
		
		escreva("E qual o seu sal�rio atual? ")
		leia(salario_atual)
		limpa()
		
		aumento = salario_atual*(porcentagem_aumento/100)
		novo_salario = salario_atual+aumento
		
		escreva(nome, ", com o aumento de ", porcentagem_aumento, "%, seu antigo sal�rio passar� de ", salario_atual, " para ", novo_salario, ".")
		
	}
}
