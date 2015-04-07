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
	private int id;
	private int quantidade;
	private String conhecimento;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
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
