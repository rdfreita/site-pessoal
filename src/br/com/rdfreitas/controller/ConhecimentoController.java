package br.com.rdfreitas.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.rdfreitas.dao.ConhecimentoDao;
import br.com.rdfreitas.modelo.Conhecimento;

@Transactional
@Controller
public class ConhecimentoController {
	
	@Autowired
	ConhecimentoDao dao;
	
	@RequestMapping("novoConhecimento")
	public String form(){
		return "conhecimento/cadastro-conhecimento";
	}
	
	@RequestMapping("cadastraConhecimento")
	public String adiciona(Conhecimento conhecimento){
		dao.adiciona(conhecimento);
		return "conhecimento/adicionado";
	}
	
	@RequestMapping("/")
	public String lista(Model model){
		List<Conhecimento> conhecimentos = dao.lista();
		model.addAttribute("skills", conhecimentos);
		return "site/index";
	}
	
	@RequestMapping("listaConhecimentos")
	public String listaConhecimento(Model model){
		List<Conhecimento> conhecimentos = dao.lista();
		model.addAttribute("skills", conhecimentos);
		return "conhecimento/lista";
	}
	
	@RequestMapping("removeConhecimento")
	public String remove(Conhecimento conhecimento){
		dao.remove(conhecimento);
		return "redirect:lista";
	}
	
	@RequestMapping("mostraConhecimento")
	public String mostra(Long id, Model model){
		model.addAttribute("conhecimento", dao.buscaPorId(id));
		return "conhecimento/mostra";
	}
	
	@RequestMapping("alteraConhecimento")
	public String altera(Conhecimento conhecimento){
		dao.altera(conhecimento);
		return "redirect:lista";
	}
}
