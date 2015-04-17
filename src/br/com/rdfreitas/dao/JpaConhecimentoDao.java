package br.com.rdfreitas.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import br.com.rdfreitas.modelo.Conhecimento;

@Repository
public class JpaConhecimentoDao implements ConhecimentoDao {
	
	@PersistenceContext
	EntityManager manager;
	
	public void adiciona(Conhecimento conhecimento){
		manager.persist(conhecimento);
	}
	public void altera(Conhecimento conhecimento){
		manager.merge(conhecimento);
	}
	public Conhecimento buscaPorId(Long id){
		return manager.find(Conhecimento.class, id);
	}
	public void remove(Conhecimento conhecimento){
		Conhecimento conhecimentoARemover = buscaPorId(conhecimento.getId());
		manager.remove(conhecimentoARemover);
	}
	public List<Conhecimento> lista() {
		return manager.createQuery("select cn from Conhecimento cn").getResultList();
	}
}
