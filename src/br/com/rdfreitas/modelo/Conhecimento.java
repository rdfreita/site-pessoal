package br.com.rdfreitas.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="skills")
public class Conhecimento {
	@Id
	@GeneratedValue
	private Long id;
	private int quantidade;
	private String conhecimento;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	public String getConhecimento() {
		return conhecimento;
	}
	public void setConhecimento(String conhecimento) {
		this.conhecimento = conhecimento;
	}
}
