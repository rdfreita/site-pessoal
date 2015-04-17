package br.com.rdfreitas.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.rdfreitas.dao.JpaConhecimentoDao;
import br.com.rdfreitas.dao.JpaCursoDao;
import br.com.rdfreitas.modelo.Conhecimento;
import br.com.rdfreitas.modelo.Curso;

@Transactional
@Controller
public class MainController {
	
	@Autowired
	JpaConhecimentoDao daoConhecimento;
	@Autowired
	JpaCursoDao daoCurso;
	
	@RequestMapping("/")
	public String listagem(Model model){
		List<Conhecimento> conhecimentos = daoConhecimento.lista();
		model.addAttribute("tecnologia", conhecimentos);
		
		List<Curso> cursos = daoCurso.listaCursos();
		model.addAttribute("aulas", cursos);
		
		return "site/index";
	}
	
}
