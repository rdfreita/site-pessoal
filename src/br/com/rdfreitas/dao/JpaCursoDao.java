package br.com.rdfreitas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.rdfreitas.modelo.Conhecimento;
import br.com.rdfreitas.modelo.Curso;

@Repository
public class JpaCursoDao implements CursoDao {
	
	@PersistenceContext
	EntityManager manager;
	
	public void adiciona(Curso cursos){
		manager.persist(cursos);
	}
	public void altera(Curso cursos){
		manager.merge(cursos);
	}
	public Curso buscaPorId(Long id){
		return manager.find(Curso.class, id);
	}
	public void remove(Curso cursos){
		Curso cursoARemover = buscaPorId(cursos.getId());
		manager.remove(cursoARemover);
	}
	public List<Curso> listaCursos() {
		return manager.createQuery("select curso from Curso curso").getResultList();
	}
}
