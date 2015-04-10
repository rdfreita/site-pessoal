package br.com.rdfreitas.dao;

import java.util.List;

import br.com.rdfreitas.modelo.Cursos;



public interface CursoDao {
	Cursos buscaPorId(Long id);
	List<Cursos> listaCursos();
	void adiciona(Cursos curso);
	void altera(Cursos curso);
	void remove(Cursos curso);
	
}
	
