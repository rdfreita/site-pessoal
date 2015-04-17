package br.com.rdfreitas.dao;

import java.util.List;

import br.com.rdfreitas.modelo.Curso;



public interface CursoDao {
	Curso buscaPorId(Long id);
	List<Curso> listaCursos();
	void adiciona(Curso curso);
	void altera(Curso curso);
	void remove(Curso curso);	
}
	
