package handsonact3;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author v3gc
 */
public class Principal {
    public static void main (String[]args){
        Aluno alunoLead = new Aluno("Victoria", 610, 9.1f, 9.8f);
        
        System.out.println(alunoLead.nome);
        System.out.println(alunoLead.codigo);
        System.out.println(alunoLead.nota1);
        System.out.println(alunoLead.nota2);
        
        NovoAluno alunoNovo = new NovoAluno();
        alunoNovo.setNome("Dimi");
        alunoNovo.setCodigo(1316);
        alunoNovo.setNota1(10.0);
        alunoNovo.setNota2(9.9);
        alunoNovo.estadoAtual();
        
    }
    
    
    
}
