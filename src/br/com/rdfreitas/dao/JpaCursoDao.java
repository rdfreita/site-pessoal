package br.com.rdfreitas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.rdfreitas.modelo.Conhecimento;
import br.com.rdfreitas.modelo.Cursos;

@Repository
public class JpaCursoDao implements CursoDao {
	
	@PersistenceContext
	EntityManager manager;
	
	public void adiciona(Cursos cursos){
		manager.persist(cursos);
	}
	public void altera(Cursos cursos){
		manager.merge(cursos);
	}
	public Cursos buscaPorId(Long id){
		return manager.find(Cursos.class, id);
	}
	public void remove(Cursos cursos){
		Cursos cursoARemover = buscaPorId(cursos.getId());
		manager.remove(cursoARemover);
	}
	public List<Cursos> lista() {
		return manager.createQuery("select curso from Cursos curso").getResultList();
	}

}
