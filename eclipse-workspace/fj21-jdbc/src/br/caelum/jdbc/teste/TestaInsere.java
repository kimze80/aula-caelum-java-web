package br.caelum.jdbc.teste;

import java.util.Calendar;

import br.caelum.jdbc.dao.ContatoDao;
import br.caelum.jdbc.modelo.Contato;

public class TestaInsere {
	public static void main(String[] args) {
		Contato contato = new Contato();
		contato.setNome("joao");
		contato.setEmail("joao@mail.com");
		contato.setEndereco("Rua lima 22");
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDao dao = new ContatoDao();
		
		dao.adiciona(contato);
		
		System.out.println("Gravado!");
	}
}
