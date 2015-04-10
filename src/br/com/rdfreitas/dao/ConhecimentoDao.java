package br.com.rdfreitas.dao;

import java.util.List;

import br.com.rdfreitas.modelo.Conhecimento;

public interface ConhecimentoDao {
	
	Conhecimento buscaPorId(Long id);
	List<Conhecimento> listaConhecimentos();
	void adiciona(Conhecimento cn);
	void altera(Conhecimento cn);
	void remove(Conhecimento cn);
}
