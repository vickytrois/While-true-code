package atividade02;

import java.util.Scanner;

/* 
		 * Monte um algoritmo que receba uma quantidade indeterminada de números inteiros representando os quartos do hotel. Para cada quarto,
		 * informe se ele está ocupado (“S” ou “N”). Em caso positivo, informe se está limpo (“S” ou “N”) e quantos dias ficará ocupado.
		 * Interrompa as entradas ao informar -1 para o número do quarto. Ao final, mostre quantos quartos ocupados ainda precisam de limpeza,
		 * qual quarto ficará ocupado por mais tempo e por quantos dias.
		 *       Exemplo
		 *               Entradas: Quarto 10, ocupado “S”, limpo “S”, ocupado por 10 dias
		 *               Entradas: Quarto 12, ocupado “N”
		 *               Entradas: Quarto 14, ocupado “S”, limpo “N”, ocupado por 15 dias
		 *               Entradas: Quarto 16, ocupado “S”, limpo “N”, ocupado por 7 dias
		 *               Entradas: Quarto -1
		 *               Saídas: 2 quartos necessitam limpeza; O quarto 14 ficará ocupado por mais tempo: 15 dias
		 */

public class CalcDiarias04 {
  public static void main(String[] args) {
    Scanner in = new Scanner(System.in);

    int numQuarto = 1;

    while (numQuarto > 0) {
      System.out.println("Para interomper a inserção digite '-1'.");
      System.out.println("Digite o número do quarto.");
      numQuarto = in.nextInt();

      if ((numQuarto < -1 || (numQuarto == 0))){
        System.out.println("Número inválido. Digite um número maior que zero, para interomper a inserção digite '-1'.");
      } else {
        System.out.println("O quarto " + numQuarto + " está ocupado? Digite 'S' para 'sim' e 'N' para 'não'.");
        String ocupado = in.next();
        ocupado = ocupado.toUpperCase();

        if ((! ocupado.equals("S") || (! ocupado.equals("N")))) {
          System.out.println("Entrada inválida. Digite 'S' ou 'N'.");

        } else {
          if (ocupado.equals("S")) {
            System.out.println("O quarto " + numQuarto + " está limpo? Digite 'S' para 'sim' e 'N' para 'não'.");
          }
        }

      }

    }
  }
}
