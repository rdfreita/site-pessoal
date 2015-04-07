package br.com.rdfreitas.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.rdfreitas.dao.JdbcConhecimentoDao;
import br.com.rdfreitas.modelo.Conhecimento;

@Controller
public class ConhecimentoController {
	
	@RequestMapping("novoConhecimento")
	public String form(){
		return "conhecimento/cadastro-conhecimento";
	}
	
	@RequestMapping("cadastraConhecimento")
	public String adiciona(Conhecimento conhecimento){
		JdbcConhecimentoDao dao = new JdbcConhecimentoDao();
		dao.adiciona(conhecimento);
		return "conhecimento/adicionado";
	}
	
	@RequestMapping("/")
	public String lista(Model model){
		JdbcConhecimentoDao dao = new JdbcConhecimentoDao();
		List<Conhecimento> conhecimentos = dao.lista();
		model.addAttribute("skills", conhecimentos);
		return "index";
	}
	
	@RequestMapping("lista")
	public String listaConhecimento(Model model){
		JdbcConhecimentoDao dao = new JdbcConhecimentoDao();
		List<Conhecimento> conhecimentos = dao.lista();
		model.addAttribute("skills", conhecimentos);
		return "conhecimento/lista";
	}
	
	@RequestMapping("removeConhecimento")
	public String remove(Conhecimento conhecimento){
		JdbcConhecimentoDao dao = new JdbcConhecimentoDao();
		dao.remove(conhecimento);
		return "redirect:lista";
	}
	
	@RequestMapping("mostraConhecimento")
	public String mostra(Long id, Model model){
		JdbcConhecimentoDao dao = new JdbcConhecimentoDao();
		model.addAttribute("conhecimento", dao.buscaPorId(id));
		return "conhecimento/mostra";
	}
	
	@RequestMapping("alteraConhecimento")
	public String altera(Conhecimento conhecimento){
		JdbcConhecimentoDao dao = new JdbcConhecimentoDao();
		dao.altera(conhecimento);
		return "redirect:lista";
	}
}
